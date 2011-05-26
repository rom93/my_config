#!/usr/bin/python

import imaplib

#first field is imap server, second - port (993 for gmail SSL IMAP)
M=imaplib.IMAP4_SSL("imap.gmail.com", 993)
#first field is imap login (gmail uses login with domain and '@' character), second - password
M.login("romain.collombar@gmail.com","mars1993,,")
status, counts = M.status("Inbox","(MESSAGES UNSEEN)")
unread = counts[0].split()[4][:-1]
f =  open('/tmp/gmail', 'w')
f.write(unread)
f.close()
M.logout()
