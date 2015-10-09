#! /usr/bin/python

import MySQLdb as mdb
import sys
from  random import *

step_1 = ('nom_singulier','nom_pluriel')
step_2 = {'nom_singulier':'verbe_singulier','nom_pluriel':'verbe_pluriel'}
step_3 = {'verbe_singulier':'complement_singulier','verbe_pluriel':'complement_pluriel'}

table_1 = choice(step_1)
table_2 = step_2[table_1]
table_3 = step_3[table_2]

con = mdb.connect('localhost','root','admin','dicktionnaire')
cur = con.cursor()
req1 = "SELECT nom as a_1 FROM %s order by RAND() " % table_1
req2 = "SELECT nom as a_2 FROM %s order by RAND() " % table_2
req3 = "SELECT nom as a_3 FROM %s order by RAND() " % table_3

cur.execute(req1) 
res = str(cur.fetchone()[0])

cur.execute(req2) 
res += " " + str(cur.fetchone()[0])

cur.execute(req3) 
res += " " + str(cur.fetchone()[0])

print res
con.close()
