#!/usr/bin/python3

import smtplib

sender = 'jamee123@gmail.com'
receivers = ['bileh81796@zaelmo.com']

message = """From: From Person <jamee123@gmail.com>
To: To Person <bileh81796@zaelmo.com>
Subject: Error Message

This is a test error message.
"""

try:
   smtpObj = smtplib.SMTP('localhost')
   smtpObj.sendmail(sender, receivers, message)         
   print ("Successfully sent email")
except SMTPException:
   print ("Error: unable to send email")
