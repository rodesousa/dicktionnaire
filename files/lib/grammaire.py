#! /usr/bin/python

class Grammaire:

    def __init__(self, name):
        self.next = []
        self.name = name

    def addNext(self, grammaire, rate):
        self.next.append((grammaire, rate))
