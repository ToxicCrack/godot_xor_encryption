#!/usr/bin/python
# -*- coding: utf-8 -*- 

#Python counterpart to the godot functions

def xor_encrypt(text, key=config.encryptKey):
    i = 0
    newStr = []
    while (i < len(text)):
        newStr.append((bytearray(text.decode("utf-8"), "utf-8")[i] ^ bytearray(key.decode("utf-8"), "utf-8")[i % (len(key) - 1)]));
        i += 1;
    return newStr;

def xor_decrypt(enc, key=config.encryptKey):
    output = [];
    i = 0
    while (i < len(enc)):
        output.append((enc[i]) ^ bytearray(key.decode("utf-8"), "utf-8")[i % (len(key) - 1)]);
        i += 1
    return str(bytearray(output));
