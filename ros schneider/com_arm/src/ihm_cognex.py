#!/usr/bin/env python

from Tkinter import *
from PIL import Image, ImageTk
import rospy
import sys
import telnetlib
from ftplib import FTP
import time
import cv2
from functools import partial
from com_arm.msg import Cart
from com_arm.msg import Calib_camera
from com_arm.msg import Objet_camera
from std_msgs.msg import Bool

global robot
global img

global pub
global msg_calib
msg_calib = Calib_camera()
msg_calib.point0 = False
msg_calib.point1 = False
msg_calib.point2 = False
msg_calib.point3 = False
global pub2
global msg_objet
msg_objet = Objet_camera()
msg_objet.go = False

global tn
global ip
user = 'admin'
password = ''

global frame_cal

global point_robot_x
point_robot_x = 0
global point_robot_y
point_robot_y = 0

global col_mouse
col_mouse = 0
global lig_mouse
lig_mouse = 0

global nb_click
nb_click = -1



global w1
global w2
global w3
global w4
global w5
global w6
global w7
global w8
global w9
global w10
global w11
global w12
global w13
global w14
global w15
global w16
global w17

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

point0_lig = "SIB036"
point0_col = "SIC036"
point1_lig = "SIF036"
point1_col = "SIG036"
point2_lig = "SIJ036"
point2_col = "SIK036"
point3_lig = "SIN036"
point3_col = "SIO036"

point0_x = "SFA039"
point0_y = "SFB039"
point1_x = "SFE039"
point1_y = "SFF039"
point2_x = "SFI039"
point2_y = "SFJ039"
point3_x = "SFM039"
point3_y = "SFN039"

objet0_lig = "GVC024"
objet0_col = "GVD024"
objet1_lig = "GVC025"
objet1_col = "GVD025"
objet2_lig = "GVC026"
objet2_col = "GVD026"
objet3_lig = "GVC027"
objet3_col = "GVD027"

objet0_x = "GVB043"
objet0_y = "GVC043"


def cognex_staubli():
    global robot
    global pub
    global pub2
    global msg_calib
    global msg_objet
    robot = 'staubli'
    rospy.init_node('cognex_'+robot,anonymous=False)
    pub = rospy.Publisher("cognex_"+robot+"_calibration", Calib_camera, queue_size=10)
    pub.publish(msg_calib)
    pub2 = rospy.Publisher("cognex_"+robot+"_objet", Objet_camera, queue_size=10)
    pub2.publish(msg_objet)
    rospy.Subscriber(robot+'_cart', Cart, point_robot)
    rospy.Subscriber(robot+'_detection', Bool, detection)

    global tn
    global ip
    ip = "192.168.0.98"
    # telnet login
    tn = telnetlib.Telnet(ip)
    telnet_user = user+'\r\n'
    tn.write(telnet_user) #the user name is admin
    tn.write("\r\n") #there is no password - just return - now logged in
    #print('Telnet Logged in')
    tn.write("Put Live 1\r\n")
    time.sleep(0.5)
    tn.read_eager()

    frame.destroy()
    master.title("Cognex Staubli")
    window_calibration()

def cognex_kuka():
    global robot
    global pub
    global pub2
    global msg_calib
    global msg_objet
    robot = 'kuka'
    rospy.init_node('cognex_'+robot,anonymous=False)
    pub = rospy.Publisher("cognex_"+robot+"_calibration", Calib_camera, queue_size=10)
    pub.publish(msg_calib)
    pub2 = rospy.Publisher("cognex_"+robot+"_objet", Objet_camera, queue_size=10)
    pub2.publish(msg_objet)
    rospy.Subscriber(robot+'_cart', Cart, point_robot)
    rospy.Subscriber(robot+'_detection', Bool, detection)

    global tn
    global ip
    ip = "192.168.1.99"
    user = 'admin'
    password = ''
    # telnet login
    tn = telnetlib.Telnet(ip)
    telnet_user = user+'\r\n'
    tn.write(telnet_user) #the user name is admin
    tn.write("\r\n") #there is no password - just return - now logged in
    #print('Telnet Logged in')
    tn.write("Put Live 1\r\n")
    time.sleep(0.5)
    tn.read_eager()

    frame.destroy()
    master.title("Cognex Kuka")
    window_calibration()

def read_telnet(mode):
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

def write_cognex(case, val):
    global tn
    tn.write(case+str(val)+"\r\n")
    read_telnet("write")


def read_cognex(case):
    val = ''
    result = -1
    tn.write(case+"\r\n")
    val = read_telnet("read")
    if (val != '#ERR' and val != ''):
        result = float(val)
        print(result)
    return result

def send_objet():
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

    
def motion(event):
    global col_mouse
    global lig_mouse
    col_mouse, lig_mouse = event.x, event.y
    update_image_cal()
    show_image_cal()

def point_robot(data):
    global point_robot_x
    global point_robot_y
    point_robot_x = data.x
    point_robot_y = data.y

    

def point_px(event):
    global col_mouse
    global lig_mouse 
    global nb_click

    global point_robot_x
    global point_robot_y

    global pub
    global msg_calib

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

def detection(msg):
    if(msg.data):
        refresh()
        send_objet()

def refresh():
    update_image("all", "all")
    show_image(w3.get(), w4.get())

def refresh_cal():
    update_image_cal()
    show_image_cal()


def show_values(case, val):
    if (case == couleur_objet):
        val = w13.curselection()[0]
    if (case == couleur_fond):
        val = w14.curselection()[0]
    update_image(case, val)
    show_image(w3.get(), w4.get())



def show_image_cal():
    global img
    #img.destroy()
    p=Image.open("image_render.bmp")
    tkimage=ImageTk.PhotoImage(p)
    p.close()
    img.config(image=tkimage)
    img.bind('<Motion>', motion)
    img.bind("<Button-1>", point_px)
    img.image = tkimage
    img.place(x=0, y=0)


def show_image(premiere_ligne, nb_ligne):
    global img
    
    if (premiere_ligne != 0 or nb_ligne != 480):
        p=Image.open("fond.bmp")
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


def update_image_cal() :
    global tn
    global ip
    global col_mouse
    global lig_mouse

    ftp = FTP(ip)
    ftp.login(user)
    #print('FTP logged in')

    # show all file in cognex
    # files_list = ftp.dir()show_image(w2.get())
    # print(files_list)

    # download file from cognex
    filename = 'image.bmp'
    lf = open(filename, "wb")
    ftp.retrbinary("RETR " + filename, lf.write)
    lf.close()

    image = cv2.imread('image.bmp')
    cv2.line(image, (0, lig_mouse), (640, lig_mouse), (0,255,0),1)
    cv2.line(image, (col_mouse, 0), (col_mouse, 480), (0,255,0),1)
    cv2.imwrite("image_render.bmp", image)





def update_image(case, val) :
    global tn
    global ip
    global w1
    global w2
    global w3
    global w4
    global w5
    global w6
    global w7
    global w8
    global w9
    global w10
    global w11
    global w12
    global w13
    global w14
    global w15
    global w16
    global w17
    # capture

    if (case == "all" and val == "all"):
        
        write_cognex(integration, w2.get())
        write_cognex(gain, w1.get())
        write_cognex(premiere_ligne, w3.get())
        write_cognex(nb_ligne, w4.get())
        write_cognex(offset, w5.get())
        write_cognex(ligne, w6.get())
        write_cognex(col, w7.get())
        write_cognex(hauteur, w8.get())
        write_cognex(largeur, w9.get())
        write_cognex(seuil, w10.get())
        write_cognex(trous, w11.get())
        write_cognex(frontiere, w12.get())
        write_cognex(couleur_objet, w13.curselection())
        write_cognex(couleur_fond, w14.curselection())
        write_cognex(surf_min, w15.get())
        write_cognex(surf_max, w16.get())
        write_cognex(nb_obj, w17.get())

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
    #print('FTP logged in')

    # show all file in cognex
    # files_list = ftp.dir()show_image(w2.get())
    # print(files_list)

    # download file from cognex
    filename = 'image.bmp'
    lf = open(filename, "wb")
    ftp.retrbinary("RETR " + filename, lf.write)
    lf.close()

    

    image = cv2.imread('image.bmp')
    cv2.rectangle(image, (int(w7.get()),int(w6.get()-w3.get())), (int(w7.get())+int(w9.get()),int(w6.get()-w3.get())+int(w8.get())),(0,255,0),1)
    
    if (l0 >= 0 and c0 >= 0):
        cv2.circle(image, (int(c0), int(l0-w3.get())), 3, (0, 0, 255), -1)
    if (l1 >= 0 and c1 >= 0):
        cv2.circle(image, (int(c1), int(l1-w3.get())), 3, (0, 0, 255), -1)
    if (l2 >= 0 and c2 >= 0):
        cv2.circle(image, (int(c2), int(l2-w3.get())), 3, (0, 0, 255), -1)
    if (l3 >= 0 and c3 >= 0):
        cv2.circle(image, (int(c3), int(l3-w3.get())), 3, (0, 0, 255), -1)
    
    cv2.imwrite("image_render.bmp", image)



def window_calibration():
    global img
    global frame_cal
    
    frame_cal = Frame(master)
    frame_cal.pack()

    w = Canvas(frame_cal,width=640,height=480)
    w.pack(side=TOP)
    p=Image.open("image_render.bmp")
    tkimage=ImageTk.PhotoImage(p)
    p.close()
    img = Label(master, image=tkimage)
    img.bind('<Motion>', motion)
    img.bind("<Button-1>", point_px)
    img.image = tkimage
    img.place(x=0, y=0)

    Button(frame_cal, text='Calibration ok', command=window_detection).pack(side = TOP)

    
    refresh_cal()

    mainloop()



def window_detection():
    global img
    global frame_cal
    global w1
    global w2
    global w3
    global w4
    global w5
    global w6
    global w7
    global w8
    global w9
    global w10
    global w11
    global w12
    global w13
    global w14
    global w15
    global w16
    global w17
    
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

    

    Button(frameA, text='Refresh', command=refresh).pack()



    frameA1 = LabelFrame(frameA, text="Configuration de l'aquisition")
    frameA1.pack(side=BOTTOM)

    frame1 = LabelFrame(frameA1, text="Gain")
    frame1.pack(side = TOP, padx=0,pady=0)
    w1 = Scale(frame1, from_=0, to=200, orient=HORIZONTAL, length=620, command=partial(show_values, gain))
    w1.set(128)
    w1.pack()

    frame2 = LabelFrame(frameA1, text="Integration")
    frame2.pack(side = TOP, padx=0,pady=0 )
    w2 = Scale(frame2, from_=0, to=50, orient=HORIZONTAL, length=620, command=partial(show_values, integration))
    w2.set(23)
    w2.pack()

    frame5 = LabelFrame(frameA1, text="Offset")
    frame5.pack(side = TOP, padx=0,pady=0)
    w5 = Scale(frame5, from_=0, to=255, orient=HORIZONTAL, length=620, command=partial(show_values, offset))
    w5.set(33)
    w5.pack()


    frame3 = LabelFrame(frameA1, text="Premiere ligne")
    frame3.pack(side = TOP, padx=0, pady=0)
    w3 = Scale(frame3, from_=0, to=479, orient=HORIZONTAL, length=620, command=partial(show_values, premiere_ligne))
    w3.set(0)
    w3.pack()


    frame4 = LabelFrame(frameA1, text="Nombre lignes")
    frame4.pack(side = TOP, padx=0,pady=0  )
    w4 = Scale(frame4, from_=1, to=480, orient=HORIZONTAL, length=620, command=partial(show_values, nb_ligne))
    w4.set(480)
    w4.pack()


    frameB = LabelFrame(master, text="Configuration de la detection d'objet")
    frameB.pack(side = TOP, padx=0,pady=30)

    frameB1 = LabelFrame(frameB, text="Region")
    frameB1.pack(side = TOP)


    frame6 = LabelFrame(frameB1, text="Ligne")
    frame6.pack(side = TOP, padx=0,pady=0  )
    w6 = Scale(frame6, from_=1, to=480, orient=HORIZONTAL, length=320, command=partial(show_values, ligne))
    w6.set(1)
    w6.pack()


    frame7 = LabelFrame(frameB1, text="Colonne")
    frame7.pack(side = TOP, padx=0,pady=0  )
    w7 = Scale(frame7, from_=1, to=640, orient=HORIZONTAL, length=320, command=partial(show_values, col))
    w7.set(1)
    w7.pack()


    frame8 = LabelFrame(frameB1, text="Hauteur")
    frame8.pack(side = TOP, padx=0,pady=0  )
    w8 = Scale(frame8, from_=1, to=480, orient=HORIZONTAL, length=320, command=partial(show_values, hauteur))
    w8.set(1)
    w8.pack()


    frame9 = LabelFrame(frameB1, text="Largeur")
    frame9.pack(side = TOP, padx=0,pady=0  )
    w9 = Scale(frame9, from_=1, to=640, orient=HORIZONTAL, length=320, command=partial(show_values, largeur))
    w9.set(1)
    w9.pack()



    frameB2 = LabelFrame(frameB, text="Detection")
    frameB2.pack(side = TOP, padx=0,pady=30)

    frame10 = LabelFrame(frameB2, text="Seuil")
    frame10.pack(padx=0,pady=0)
    w10 = Scale(frame10, from_=-1, to=255, orient=HORIZONTAL, length=320, command=partial(show_values, seuil))
    w10.set(-1)
    w10.pack()


    w11 = IntVar()
    Checkbutton(frameB2, text="Inclure les trous", variable=w11, onvalue=1, offvalue=0, command=lambda i=w11: show_values(trous, i.get())).pack()


    w12 = IntVar()
    Checkbutton(frameB2, text="Objets sur frontiere", variable=w12, onvalue=1, offvalue=0, command=lambda i=w12: show_values(frontiere, i.get())).pack()



    frame13 = LabelFrame(frameB2, text="Couleur objets")
    frame13.pack(side = TOP, padx=0,pady=0  )
    w13 = Listbox(frame13, height=3, width=10, exportselection=False)
    w13.bind("<<ListboxSelect>>", partial(show_values, couleur_objet))
    w13.insert(1, "noir")
    w13.insert(2, "blanc")
    w13.insert(3, "indifferent")
    w13.selection_set(2)
    w13.pack()

    frame14 = LabelFrame(frameB2, text="Couleur fond")
    frame14.pack(side = TOP, padx=0,pady=0  )
    w14 = Listbox(frame14, height=2, width=10, exportselection=False)
    w14.bind("<<ListboxSelect>>", partial(show_values, couleur_fond))
    w14.insert(1, "noir")
    w14.insert(2, "blanc")
    w14.selection_set(0)
    w14.pack()

    frame15 = LabelFrame(frameB2, text="Surface min")
    frame15.pack(side = TOP, padx=0,pady=0  )
    w15 = Scale(frame15, from_=0, to=10000, orient=HORIZONTAL, length=320, command=partial(show_values, surf_min))
    w15.set(800)
    w15.pack()


    frame16 = LabelFrame(frameB2, text="Surface max")
    frame16.pack(side = TOP, padx=0,pady=0  )
    w16 = Scale(frame16, from_=0, to=10000, orient=HORIZONTAL, length=320, command=partial(show_values, surf_max))
    w16.set(1050)
    w16.pack()

    var = IntVar(value=4)
    frame17 = LabelFrame(frameB2, text="Nombre objet")
    frame17.pack(side = TOP, padx=0, pady=0)
    w17 = Spinbox(frame17, from_=0, to=4, textvariable=var, width=2, command=lambda i=var: show_values(nb_obj, i.get()))
    w17.pack()

    Button(frameB, text='Go to target', command=send_objet).pack()

    refresh()

    mainloop()

    tn.write("Put Live 0\r\n")

    tn.close()



master = Tk()
frame = Frame(master)
frame.pack()
Button(frame, text='Cognex Staubli', command=cognex_staubli).pack(side = LEFT)
Button(frame, text='Cognex Kuka', command=cognex_kuka).pack(side = RIGHT)
mainloop()

