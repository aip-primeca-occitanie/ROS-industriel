#!/usr/bin/env python
# -*-coding:Latin-1 -*-

#Bibliothèque pour le traitement d'image

from Tkinter import *
from PIL import Image, ImageTk
import cv2


#Bibliotheque ROS et du projet cognex

import rospy
from cognex.msg import Cart
from cognex.msg import Calib_camera
from cognex.msg import Objet_camera
from std_msgs.msg import Bool


#Bibliothéque système 

import sys
import telnetlib
import os
import os.path
import time
from pathlib import Path


#Bibliothèque de communication

from ftplib import FTP


#Bibliothèque de controle de fonction python 

from functools import partial


#Déclaration des variables qui vont dialoguer avec ROS
global robot
global pub
global pub2
global msg_objet
global msg_calib

#Déclaration des variables pour les interactions avec les images 
global img

#Déclaration des variables contenant les "messages" ROS
msg_calib = Calib_camera()
msg_calib.point0 = False
msg_calib.point1 = False
msg_calib.point2 = False
msg_calib.point3 = False
msg_objet = Objet_camera()
msg_objet.go = False

# Déclaration des variables d'authentification de la caméra 
global tn
global ip
global password
global user
global frame_cal

# Déclaration des variables plans caméra
global point_robot_x
point_robot_x = 0
global point_robot_y
point_robot_y = 0

# Déclaration des variables contenant les informations souris
global col_mouse
col_mouse = 0
global lig_mouse
lig_mouse = 0
global nb_click
nb_click = -1

# Déclaration des variables permettant de controler les informations de l'ihm 
#I(interface)_cluster_nom
global I_conf_acquis_gain
global I_conf_acquis_integration
global I_conf_acquis_1ere_ligne
global I_conf_acquis_nb_ligne
global I_conf_acquis_offset
global I_conf_detec_ligne
global I_conf_detec_colonne
global I_conf_detec_hauteur
global I_conf_detec_largeur
global I_detect_seuil
global I_detect_trou
global I_detect_frontier
global I_detect_couleur
global I_detect_couleur_fond
global I_detect_surface_min
global I_detect_surface_max
global I_detect_nb_objet

# Initiatilisation des variables de l'IHM
integration = "SFA005"
gain = "SIG005"
premiere_ligne = "SIC005"
nb_ligne = "SIE005"
offset = "SII005"
ligne = "SIA015"
col = "SIC015"
hauteur = "SIE015"
largeur = "SIG015"
seuil = "SIC019"
trous = "SIN019"
frontiere = "SIP019"
couleur_objet = "SIE019"
couleur_fond = "SIG019"
surf_min = "SFI019"
surf_max = "SFK019"
nb_obj = "SIA019"

#Intialisation des lignes colonne de la caméra
point0_lig = "SIB036"
point0_col = "SIC036"
point1_lig = "SIF036"
point1_col = "SIG036"
point2_lig = "SIJ036"
point2_col = "SIK036"
point3_lig = "SIN036"
point3_col = "SIO036"

#Initialisation des points de mesure de la caméra
point0_x = "SFA039"
point0_y = "SFB039"
point1_x = "SFE039"
point1_y = "SFF039"
point2_x = "SFI039"
point2_y = "SFJ039"
point3_x = "SFM039"
point3_y = "SFN039"

#intialisation des détections d'objet (4 objets max)
objet0_lig = "GVC024"
objet0_col = "GVD024"
objet1_lig = "GVC025"
objet1_col = "GVD025"
objet2_lig = "GVC026"
objet2_col = "GVD026"
objet3_lig = "GVC027"
objet3_col = "GVD027"

#Initialisation de la position de l'objet 0
objet0_x = "GVB043"
objet0_y = "GVC043"

#Initialisation du répertoire IHM_cognex 
# pour la sauvegarde ou l'initialisation des images
repertoire = os.path.dirname(os.path.realpath(__file__))
global chemin


def point_robot(data):
    # Fonction qui récupère les informations plan du robot (cartesien)
    global point_robot_x
    global point_robot_y
    point_robot_x = data.x
    point_robot_y = data.y

#fonctions de connexion et dialogue avec une caméra (identification, telnet )

def connexion(nom, fuser, fip, fpassword):
    # Fonction qui entre les informations de connexion de la caméra
    global ip
    global user
    global password
    # utilisateur et mot de passe classique cognex
    # user = 'admin'
    # password = ''
    user = fuser
    ip = fip
    password = fpassword
    print('Camera :')
    print(nom)
    print('Utilisateur :')
    print(fuser)
    print('\nAdresse ip :')
    print(fip)

def read_telnet(mode):
    # Fonction qui permet de lire les informations sur un terminal Telnet
    val = ''
    buf = ''
    buf = tn.read_eager()
    while (len(buf) == 0):
        buf = tn.read_eager()
    val = buf
    while (len(buf) != 0):
        buf = tn.read_eager()
        val = val + buf
    if (mode == "read") :
        val = val[3:len(val)-2]
        return val

# Création d'un "camera" et la lecture et l'écriture des informations caméra 

def cognex_kuka():
    global robot
    global pub
    global pub2
    global msg_calib
    global msg_objet
    global tn
    global ip
    robot = 'kuka'
    #Initialisation de l'API client ROS
    rospy.init_node('cognex_'+robot,anonymous=False)

    #Publication dans "ROS" des informations de la caméra :

    #calibration, des informations courantes (objet_camera)
    pub = rospy.Publisher("cognex_"+robot+"_calibration", Calib_camera, queue_size=10)
    pub.publish(msg_calib)
    pub2 = rospy.Publisher("cognex_"+robot+"_objet", Objet_camera, queue_size=10)
    pub2.publish(msg_objet)

    #Souscription des informations cartesiennes (cart) et (detection des objets)
    rospy.Subscriber(robot+'_cart', Cart, point_robot)
    rospy.Subscriber(robot+'_detection', Bool, detection)

    # connexion à la caméra (nom, utilisateur, adresse ip, mot de passe)
    connexion (robot,'admin', "192.168.1.99",'')

    #Dialogue avec la camera selectionné via telnet
    tn = telnetlib.Telnet(ip)
    telnet_user = user+'\r\n'
    tn.write(telnet_user) #the user name is admin
    tn.write("\r\n") #there is no password - just return - now logged in
    print('\nTelnet Logged in')
    tn.write("Put Live 1\r\n")
    time.sleep(0.5)
    tn.read_eager()
    frame.destroy()
    master.title("Cognex Kuka")
    window_calibration()
    
def cognex_staubli():
    global robot
    global pub
    global pub2
    global msg_calib
    global msg_objet
    global ip
    global tn
    robot = 'staubli'
    
    #Initialisation de l'API client ROS
    rospy.init_node('cognex_'+robot,anonymous=False)
    
    #Publication dans "ROS" des informations de la caméra :
    
    #calibration, des informations courantes (objet_camera)
    pub = rospy.Publisher("cognex_"+robot+"_calibration", Calib_camera, queue_size=10)
    pub.publish(msg_calib)
    pub2 = rospy.Publisher("cognex_"+robot+"_objet", Objet_camera, queue_size=10)
    pub2.publish(msg_objet)
    
    #Souscription des informations cartesiennes (cart) et (detection des objets)
    rospy.Subscriber(robot+'_cart', Cart, point_robot)
    rospy.Subscriber(robot+'_detection', Bool, detection)
    
    # connexion à la caméra (nom, utilisateur, adresse ip, mot de passe)
    connexion (robot,'admin', "192.168.0.98",'')
    
    #Dialogue avec la camera selectionné via telnet
    tn = telnetlib.Telnet(ip)
    telnet_user = user+'\r\n'
    tn.write(telnet_user) #the user name is admin
    tn.write("\r\n") #there is no password - just return - now logged in
    print('\nTelnet Logged in')
    tn.write("Put Live 1\r\n")
    time.sleep(0.5)
    tn.read_eager()

    frame.destroy()
    master.title("Cognex Staubli")
    window_calibration()

def read_cognex(case):
    #intialisation des valeurs pour la récupération des informations caméra
    val = ''
    result = -1
    tn.write(case+"\r\n")
    val = read_telnet("read")
    #Détection d'une erreur lors de la communication 
    if (val != '#ERR' and val != ''):
        print(val)
    return result

def write_cognex(case, val):
    global tn
    tn.write(case+str(val)+"\r\n")
    read_telnet("write")

#Fonctions sur les images 

def show_image(premiere_ligne, nb_ligne):
    global img
    if (premiere_ligne != 0 or nb_ligne != 480):
        chemin = repertoire +'/image/fond.bmp'
        p=Image.open((chemin))
        tkimage=ImageTk.PhotoImage(p)
        img.config(image=tkimage)
        img.image = tkimage
        img.place(x=0, y=0)
        p=Image.open("image_render.bmp")
        tkimage=ImageTk.PhotoImage(p)
        p.close()
        img.config(image=tkimage)
        img.image = tkimage
        img.place(x=0, y=premiere_ligne)

def update_image(case, val) :
    global tn
    global ip
    global I_conf_acquis_gain
    global I_conf_acquis_integration
    global I_conf_acquis_1ere_ligne
    global I_conf_acquis_nb_ligne
    global I_conf_acquis_offset
    global I_conf_detec_ligne
    global I_conf_detec_colonne
    global I_conf_detec_hauteur
    global I_conf_detec_largeur
    global I_detect_seuil
    global I_detect_trou
    global I_detect_frontier
    global I_detect_couleur
    global I_detect_couleur_fond
    global I_detect_surface_min
    global I_detect_surface_max
    global I_detect_nb_objet
    # capture

    if (case == "all" and val == "all"):
        
        write_cognex(integration, I_conf_acquis_integration.get())
        write_cognex(gain, I_conf_acquis_gain.get())
        write_cognex(premiere_ligne, I_conf_acquis_1ere_ligne.get())
        write_cognex(nb_ligne, I_conf_acquis_nb_ligne.get())
        write_cognex(offset, I_conf_acquis_offset.get())
        write_cognex(ligne, I_conf_detec_ligne.get())
        write_cognex(col, I_conf_detec_colonne.get())
        write_cognex(hauteur, I_conf_detec_hauteur.get())
        write_cognex(largeur, I_conf_detec_largeur.get())
        write_cognex(seuil, I_detect_seuil.get())
        write_cognex(trous, I_detect_trou.get())
        write_cognex(frontiere, I_detect_frontier.get())
        write_cognex(couleur_objet, I_detect_couleur.curselection())
        write_cognex(couleur_fond, I_detect_couleur_fond.curselection())
        write_cognex(surf_min, I_detect_surface_min.get())
        write_cognex(surf_max, I_detect_surface_max.get())
        write_cognex(nb_obj, I_detect_nb_objet.get())

    else :
        write_cognex(case, val)

    
    l0 = read_cognex(objet0_lig)
    c0 = read_cognex(objet0_col)
    l1 = read_cognex(objet1_lig)
    c1 = read_cognex(objet1_col)
    l2 = read_cognex(objet2_lig)
    c2 = read_cognex(objet2_col)
    l3 = read_cognex(objet3_lig)
    c3 = read_cognex(objet3_col)
    
    # ftp logincognex read image cognex
    ftp = FTP(ip)
    ftp.login(user)
    # print('FTP logged in')

    # show all file in cognex
    # files_list = ftp.dir()show_image(I_conf_acquis_integration.get())
    # print(files_list)

    # download file from cognex
    filename = 'image.bmp'
    lf = open(filename, "wb")
    ftp.retrbinary("RETR " + filename, lf.write)
    lf.close()

    

    image = cv2.imread('image.bmp')
    cv2.rectangle(image, (int(I_conf_detec_colonne.get()),int(I_conf_detec_ligne.get()-I_conf_acquis_1ere_ligne.get())), (int(I_conf_detec_colonne.get())+int(I_conf_detec_largeur.get()),int(I_conf_detec_ligne.get()-I_conf_acquis_1ere_ligne.get())+int(I_conf_detec_hauteur.get())),(0,255,0),1)
    
    if (l0 >= 0 and c0 >= 0):
        cv2.circle(image, (int(c0), int(l0-I_conf_acquis_1ere_ligne.get())), 3, (0, 0, 255), -1)
    if (l1 >= 0 and c1 >= 0):
        cv2.circle(image, (int(c1), int(l1-I_conf_acquis_1ere_ligne.get())), 3, (0, 0, 255), -1)
    if (l2 >= 0 and c2 >= 0):
        cv2.circle(image, (int(c2), int(l2-I_conf_acquis_1ere_ligne.get())), 3, (0, 0, 255), -1)
    if (l3 >= 0 and c3 >= 0):
        cv2.circle(image, (int(c3), int(l3-I_conf_acquis_1ere_ligne.get())), 3, (0, 0, 255), -1)
    
    cv2.imwrite("image_render.bmp", image)

# Fonctions pour la phase de calibration de la caméra

def window_calibration():
    #lancement de l'ihm de calibration
    global img
    global frame_cal
    
    frame_cal = Frame(master)
    frame_cal.pack()

    w = Canvas(frame_cal,width=640,height=480)
    w.pack(side=TOP)
    chemin = repertoire + '/image/image_render.bmp'
    p=Image.open((chemin))
    tkimage=ImageTk.PhotoImage(p)
    p.close()
    img = Label(master, image=tkimage)
    #Lance le programme motion sur un déplacement de la souris
    img.bind('<Motion>', motion)
    #Lance le programme point_px lors de l'appuie sur le clic gauche
    img.bind("<Button-1>", point_px)
    img.image = tkimage
    img.place(x=0, y=0)
    # Lors de l'appui sur le bouton "calibation ok", celui-ci lance l'interface utilisateur
    Button(frame_cal, text='Calibration ok', command=window_detection).pack(side = TOP)
    
    refresh_cal()

    mainloop()

def refresh_cal():
    # Lancement de l'aquisition d'une image depuis la caméra 
    # puis affichage de celle-ci
    update_image_cal()
    show_image_cal()

def update_image_cal() :
    #Acquisition d'une image de calibration depuis la caméra
    global tn
    global ip
    global col_mouse
    global lig_mouse

    ftp = FTP(ip)
    ftp.login(user)
    # print('FTP logged in')

    # show all file in cognex
    # files_list = ftp.dir()show_image(I_conf_acquis_integration.get())
    # print(files_list)

    # download file from cognex
    # Téléchargement de la nouvelle image depuis le serveur ftp de la caméra
    filename = 'image.bmp'
    lf = open(filename, "wb")
    ftp.retrbinary("RETR " + filename, lf.write)
    lf.close()
    #traitement de l'image avec open cv
    image = cv2.imread('image.bmp')
    cv2.line(image, (0, lig_mouse), (640, lig_mouse), (0,255,0),1)
    cv2.line(image, (col_mouse, 0), (col_mouse, 480), (0,255,0),1)
    cv2.imwrite("image_render.bmp", image)

def show_image_cal():
    # affichage de l'image de calibration
    global img
    # img.destroy()
    #chemin = repertoire + '/image/image_render.bmp'
    #Affichage de l'image traitée avec open cv
    p=Image.open("image_render.bmp")
    tkimage=ImageTk.PhotoImage(p)
    p.close()
    img.config(image=tkimage)
    img.bind('<Motion>', motion)
    img.bind("<Button-1>", point_px)
    img.image = tkimage
    img.place(x=0, y=0)
    
def motion(event):
    # Enregistre les informations de placement de la souris dans l'image de calibration
    global col_mouse
    global lig_mouse
    col_mouse, lig_mouse = event.x, event.y
    update_image_cal()
    show_image_cal()
    
def point_px(event):
    # Calibration de la base :
    # Permet de superposer la base robot avec la base camera (mapping)
    global col_mouse
    global lig_mouse 
    global nb_click

    global point_robot_x
    global point_robot_y

    global pub
    global msg_calib
    #Sur chaque clic de souris (limité à 4 appuis) le programme envoie les informations
    # à la camera cognex puis publie les informations dans msg_calib (via ROS)
    if (nb_click == -1 or nb_click == 4):
        nb_click = 0

    if nb_click == 0 :
        write_cognex(point0_lig, lig_mouse)
        write_cognex(point0_col, col_mouse)

        write_cognex(point0_x, point_robot_x)
        write_cognex(point0_y, point_robot_y)

        msg_calib.point0 = True
        pub.publish(msg_calib)

        nb_click = nb_click + 1

    elif nb_click == 1 :
        write_cognex(point1_lig, lig_mouse)
        write_cognex(point1_col, col_mouse)

        write_cognex(point1_x, point_robot_x)
        write_cognex(point1_y, point_robot_y)

        msg_calib.point1 = True
        pub.publish(msg_calib)

        nb_click = nb_click + 1

    elif nb_click == 2 :
        write_cognex(point2_lig, lig_mouse)
        write_cognex(point2_col, col_mouse)

        write_cognex(point2_x, point_robot_x)
        write_cognex(point2_y, point_robot_y)

        msg_calib.point2 = True
        pub.publish(msg_calib)

        nb_click = nb_click + 1

    elif nb_click == 3 :
        write_cognex(point3_lig, lig_mouse)
        write_cognex(point3_col, col_mouse)

        write_cognex(point3_x, point_robot_x)
        write_cognex(point3_y, point_robot_y)

        msg_calib.point3 = True
        pub.publish(msg_calib)

        nb_click = nb_click = nb_click + 1

#Fonctions pour la détection des objets et ajustement des bases (re-mapping)

def refresh():
    update_image("all", "all")
    show_image(I_conf_acquis_1ere_ligne.get(), I_conf_acquis_nb_ligne.get())

def show_values(case, val):
    if (case == couleur_objet):
        val = I_detect_couleur.curselection()[0]
    if (case == couleur_fond):
        val = I_detect_couleur_fond.curselection()[0]
    update_image(case, val)
    show_image(I_conf_acquis_1ere_ligne.get(), I_conf_acquis_nb_ligne.get())

def detection(msg):
    if(msg.data):
        refresh()
        send_objet()

def window_detection():
    #interface utilisateur pour la détection d'objet
    global img
    global frame_cal
    global I_conf_acquis_gain
    global I_conf_acquis_integration
    global I_conf_acquis_1ere_ligne
    global I_conf_acquis_nb_ligne
    global I_conf_acquis_offset
    global I_conf_detec_ligne
    global I_conf_detec_colonne
    global I_conf_detec_hauteur
    global I_conf_detec_largeur
    global I_detect_seuil
    global I_detect_trou
    global I_detect_frontier
    global I_detect_couleur
    global I_detect_couleur_fond
    global I_detect_surface_min
    global I_detect_surface_max
    global I_detect_nb_objet
    
    frame_cal.destroy()

    frameA = LabelFrame(master, text="Configuration de l'aquisition")
    frameA.pack(side=LEFT)


    w = Canvas(frameA,width=640,height=480)
    w.pack(side=TOP)

    img.destroy()
    p=Image.open("image_render.bmp")
    tkimage=ImageTk.PhotoImage(p)
    p.close()
    img = Label(master, image=tkimage)
    img.image = tkimage
    img.place(x=0, y=0)

    

    Button(frameA, text='Rafraichir', command=refresh).pack()



    frameA1 = LabelFrame(frameA, text="Configuration de l'aquisition")
    frameA1.pack(side=BOTTOM)

    frame1 = LabelFrame(frameA1, text="Gain")
    frame1.pack(side = TOP, padx=0,pady=0)
    I_conf_acquis_gain = Scale(frame1, from_=0, to=200, orient=HORIZONTAL, length=620, command=partial(show_values, gain))
    I_conf_acquis_gain.set(128)
    I_conf_acquis_gain.pack()

    frame2 = LabelFrame(frameA1, text="Integration")
    frame2.pack(side = TOP, padx=0,pady=0 )
    I_conf_acquis_integration = Scale(frame2, from_=0, to=50, orient=HORIZONTAL, length=620, command=partial(show_values, integration))
    I_conf_acquis_integration.set(23)
    I_conf_acquis_integration.pack()

    frame5 = LabelFrame(frameA1, text="Offset")
    frame5.pack(side = TOP, padx=0,pady=0)
    I_conf_acquis_offset = Scale(frame5, from_=0, to=255, orient=HORIZONTAL, length=620, command=partial(show_values, offset))
    I_conf_acquis_offset.set(33)
    I_conf_acquis_offset.pack()


    frame3 = LabelFrame(frameA1, text="Premiere ligne")
    frame3.pack(side = TOP, padx=0, pady=0)
    I_conf_acquis_1ere_ligne = Scale(frame3, from_=0, to=479, orient=HORIZONTAL, length=620, command=partial(show_values, premiere_ligne))
    I_conf_acquis_1ere_ligne.set(0)
    I_conf_acquis_1ere_ligne.pack()


    frame4 = LabelFrame(frameA1, text="Nombre lignes")
    frame4.pack(side = TOP, padx=0,pady=0  )
    I_conf_acquis_nb_ligne = Scale(frame4, from_=1, to=480, orient=HORIZONTAL, length=620, command=partial(show_values, nb_ligne))
    I_conf_acquis_nb_ligne.set(480)
    I_conf_acquis_nb_ligne.pack()


    frameB = LabelFrame(master, text="Configuration de la detection d'objet")
    frameB.pack(side = TOP, padx=0,pady=30)

    frameB1 = LabelFrame(frameB, text="Region")
    frameB1.pack(side = TOP)


    frame6 = LabelFrame(frameB1, text="Ligne")
    frame6.pack(side = TOP, padx=0,pady=0  )
    I_conf_detec_ligne = Scale(frame6, from_=1, to=480, orient=HORIZONTAL, length=320, command=partial(show_values, ligne))
    I_conf_detec_ligne.set(1)
    I_conf_detec_ligne.pack()


    frame7 = LabelFrame(frameB1, text="Colonne")
    frame7.pack(side = TOP, padx=0,pady=0  )
    I_conf_detec_colonne = Scale(frame7, from_=1, to=640, orient=HORIZONTAL, length=320, command=partial(show_values, col))
    I_conf_detec_colonne.set(1)
    I_conf_detec_colonne.pack()


    frame8 = LabelFrame(frameB1, text="Hauteur")
    frame8.pack(side = TOP, padx=0,pady=0  )
    I_conf_detec_hauteur = Scale(frame8, from_=1, to=480, orient=HORIZONTAL, length=320, command=partial(show_values, hauteur))
    I_conf_detec_hauteur.set(1)
    I_conf_detec_hauteur.pack()


    frame9 = LabelFrame(frameB1, text="Largeur")
    frame9.pack(side = TOP, padx=0,pady=0  )
    I_conf_detec_largeur = Scale(frame9, from_=1, to=640, orient=HORIZONTAL, length=320, command=partial(show_values, largeur))
    I_conf_detec_largeur.set(1)
    I_conf_detec_largeur.pack()



    frameB2 = LabelFrame(frameB, text="Detection")
    frameB2.pack(side = TOP, padx=0,pady=30)

    frame10 = LabelFrame(frameB2, text="Seuil")
    frame10.pack(padx=0,pady=0)
    I_detect_seuil = Scale(frame10, from_=-1, to=255, orient=HORIZONTAL, length=320, command=partial(show_values, seuil))
    I_detect_seuil.set(-1)
    I_detect_seuil.pack()


    I_detect_trou = IntVar()
    Checkbutton(frameB2, text="Inclure les trous", variable=I_detect_trou, onvalue=1, offvalue=0, command=lambda i=I_detect_trou: show_values(trous, i.get())).pack()


    I_detect_frontier = IntVar()
    Checkbutton(frameB2, text="Objets sur frontiere", variable=I_detect_frontier, onvalue=1, offvalue=0, command=lambda i=I_detect_frontier: show_values(frontiere, i.get())).pack()



    frame13 = LabelFrame(frameB2, text="Couleur objets")
    frame13.pack(side = TOP, padx=0,pady=0  )
    I_detect_couleur = Listbox(frame13, height=3, width=10, exportselection=False)
    I_detect_couleur.bind("<<ListboxSelect>>", partial(show_values, couleur_objet))
    I_detect_couleur.insert(1, "noir")
    I_detect_couleur.insert(2, "blanc")
    I_detect_couleur.insert(3, "indifferent")
    I_detect_couleur.selection_set(2)
    I_detect_couleur.pack()

    frame14 = LabelFrame(frameB2, text="Couleur fond")
    frame14.pack(side = TOP, padx=0,pady=0  )
    I_detect_couleur_fond = Listbox(frame14, height=2, width=10, exportselection=False)
    I_detect_couleur_fond.bind("<<ListboxSelect>>", partial(show_values, couleur_fond))
    I_detect_couleur_fond.insert(1, "noir")
    I_detect_couleur_fond.insert(2, "blanc")
    I_detect_couleur_fond.selection_set(0)
    I_detect_couleur_fond.pack()

    frame15 = LabelFrame(frameB2, text="Surface min")
    frame15.pack(side = TOP, padx=0,pady=0  )
    I_detect_surface_min = Scale(frame15, from_=0, to=10000, orient=HORIZONTAL, length=320, command=partial(show_values, surf_min))
    I_detect_surface_min.set(800)
    I_detect_surface_min.pack()


    frame16 = LabelFrame(frameB2, text="Surface max")
    frame16.pack(side = TOP, padx=0,pady=0  )
    I_detect_surface_max = Scale(frame16, from_=0, to=10000, orient=HORIZONTAL, length=320, command=partial(show_values, surf_max))
    I_detect_surface_max.set(1050)
    I_detect_surface_max.pack()

    var = IntVar(value=4)
    frame17 = LabelFrame(frameB2, text="Nombre objet")
    frame17.pack(side = TOP, padx=0, pady=0)
    I_detect_nb_objet = Spinbox(frame17, from_=0, to=4, textvariable=var, width=2, command=lambda i=var: show_values(nb_obj, i.get()))
    I_detect_nb_objet.pack()

    Button(frameB, text='Go to target', command=send_objet).pack()

    refresh()

    mainloop()

    tn.write("Put Live 0\r\n")

    tn.close()

def send_objet():
    # publication sur le serveur ROS du placement de l'objet
    global pub2
    global msg_objet
    objet_x = read_cognex(objet0_x)
    objet_y = read_cognex(objet0_y)
    if (objet_x == -1 or objet_y == -1):
        msg_objet.go = False
    else:
        msg_objet.go = True
        msg_objet.x = objet_x
        msg_objet.y = objet_y
    pub2.publish(msg_objet)

master = Tk()
frame = Frame(master)
frame.pack()
#création d'un objet caméra placé sur le robot staubli ou le robot kuka
Button(frame, text='Cognex Kuka', command=cognex_kuka).pack(side = RIGHT)
Button(frame, text='Cognex Staubli', command=cognex_staubli).pack(side = LEFT)
mainloop()

