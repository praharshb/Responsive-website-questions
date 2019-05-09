#!/usr/bin/python

import cgi, cgitb
import MySQLdb

myForm = cgi.FieldStorage()

nick = myForm.getvalue('UserName')
secret = myForm.getvalue('MyPass')

db= MySQLdb.connect("cs.newpaltz.edu","bheemarp1","yljd1o","bheemarp1_db") 

myCursor = db.cursor()

sql = "SELECT passcode from UserPass WHERE userid = '%s' "%(nick)

try:
  myCursor.execute(sql)
  output = myCursor.fetchone()
  for row in output:
     sWord  = row
except:
  print "Error: unable to fetch data"
db.close()

if secret == sWord:
  print "Content-type:text/html\r\n\r\n"
  print "<html>"
  print "<head>"
  print "<title>Confirm</title>"
  print "</head>"
  print "<body>"
  print "<h2> WELCOME Back %s !</h2>" %(nick)
  print "<h2>Specify your profile to know a new language<a href=register.htm>Here</a></h2>"
#  print "<h2> ""Specify your profile to" <a href="https://cs.newpaltz.edu/~bheemarp1/CGIapplet/register.htm">Here</a>"know a new language"</h2>"
  print "</body>"
  print "</html>"
else:
  print "Content-type:text/html\r\n\r\n"
  print "Wrong Password or Username !"
  print "<html>"
