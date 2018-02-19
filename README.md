# Godot XOR encryption / decryption

Two simple functions to encrypt / decrypt a string in Godot Engine.

Usage:
```
  var enc = xor_encrypt("Hello World!", "secretpassword");
  var result = xor_decrypt(enc, "secretpassword"); #Hello World!
```
