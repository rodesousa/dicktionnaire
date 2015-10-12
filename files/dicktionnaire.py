#! /usr/bin/python

import sys
sys.path.append('lib')

import MySQLdb as mdb
from  random import *
from grammaire import Grammaire


def dicktionnaire(grammaire):
    def rec(grammaire, dicksentence):
        if grammaire[0].name == 'finish':
            return dicksentence
        else:
             gram = random_grammaire(grammaire[0].next)
             dicksentence.append(gram[0])
             return rec(gram, dicksentence)
    dick_sentence = [grammaire]
    return rec((grammaire,99), dick_sentence)

def random_grammaire(grammaires):
    res = sorted(filter(lambda (x,y): randint(0,99) < y, grammaires), key = lambda (x,y) : y)
    return res[0]

# INIT & ADD GRAMMAIRE
nom_singulier =  Grammaire('nom_singulier')
nom_pluriel =  Grammaire('nom_pluriel')
verbe_singulier =  Grammaire('verbe_singulier')
verbe_pluriel =  Grammaire('verbe_pluriel')
verbe_emotion_singulier =  Grammaire('verbe_emotion_singulier')
verbe_emotion_pluriel =  Grammaire('verbe_emotion_pluriel')
complement_singulier_virgule =  Grammaire('complement_singulier_virgule')
complement_pluriel_virgule =  Grammaire('complement_pluriel_virgule')
complement_singulier_point =  Grammaire('complement_singulier_point')
complement_pluriel_point =  Grammaire('complement_pluriel_point')
verbe_infinitif =  Grammaire('verbe_infinitif')
finish =  Grammaire('finish')

nom_singulier.addNext(verbe_singulier, 50)
nom_singulier.addNext(verbe_emotion_singulier, 99)

nom_pluriel.addNext(verbe_pluriel, 50)
nom_pluriel.addNext(verbe_emotion_pluriel, 99)

verbe_singulier.addNext(complement_singulier_point, 69)
verbe_singulier.addNext(complement_singulier_virgule, 99)

verbe_pluriel.addNext(complement_pluriel_point, 69)
verbe_pluriel.addNext(complement_pluriel_virgule, 99)

verbe_emotion_singulier.addNext(verbe_infinitif, 49)
verbe_emotion_singulier.addNext(complement_singulier_virgule, 69)
verbe_emotion_singulier.addNext(complement_singulier_point, 99)

verbe_emotion_pluriel.addNext(verbe_infinitif, 49)
verbe_emotion_pluriel.addNext(complement_pluriel_virgule, 69)
verbe_emotion_pluriel.addNext(complement_pluriel_point, 99)

complement_singulier_virgule.addNext(complement_singulier_point, 69)
complement_singulier_virgule.addNext(complement_singulier_virgule, 99)

complement_pluriel_virgule.addNext(complement_pluriel_point, 69)
complement_pluriel_virgule.addNext(complement_pluriel_virgule, 99)

verbe_infinitif.addNext(complement_singulier_point, 24)
verbe_infinitif.addNext(complement_singulier_virgule, 49)
verbe_infinitif.addNext(complement_singulier_point, 64)
verbe_infinitif.addNext(complement_pluriel_virgule, 99)

complement_singulier_point.addNext(finish, 99)
complement_pluriel_point.addNext(finish, 99)
# INIT & ADD GRAMMAIRE

# Construction de la phrase
init_sentence = choice((nom_singulier,nom_pluriel))
sentence = dicktionnaire(init_sentence)

try:
    con = mdb.connect('localhost','root','admin','dicktionnaire')
    cur = con.cursor()
    res = ''
    for i in sentence:
        if i.name != 'finish':
            req = "SELECT nom FROM %s order by RAND() " % i.name
            cur.execute(req)
            res += ' ' + str(cur.fetchone()[0])
    print res
    con.close()
except:
    print 'Rien dans le cockpit !'

#finally:
#    con.close()

