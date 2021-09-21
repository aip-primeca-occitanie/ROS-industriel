#!/usr/bin/env python
# -*- coding: utf-8 -*-
 
import logging
 
from logging.handlers import RotatingFileHandler
 

logger = logging.getLogger()

logger.setLevel(logging.DEBUG)
 

formatter = logging.Formatter('%(asctime)s :: %(levelname)s :: %(message)s')

file_handler = RotatingFileHandler('activity.log', 'a', 1000000, 1)

file_handler.setLevel(logging.DEBUG)
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)
 

stream_handler = logging.StreamHandler()
stream_handler.setLevel(logging.DEBUG)
logger.addHandler(stream_handler)
 

logger.info('Hello')
logger.warning('Testing %s', 'foo')
