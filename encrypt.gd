func xor_encrypt(string, key=self.encryptKey):
  var i = 0
  var newStr = []
  while (i < string.length()):
      newStr.append((string.to_utf8()[i] ^ key.to_utf8()[i % (key.length() - 1)]));
      i += 1;
  i = 0;
  print(JSON.print(newStr))
  return newStr;
  
func xor_decrypt(enc, key=self.encryptKey):
  var output = PoolByteArray();
  var i = 0
  while (i < enc.size()):
      output.append((enc[i]) ^ key.to_utf8()[i % (key.length() - 1)]);
      i += 1
  print(output.get_string_from_utf8())
  return output.get_string_from_utf8();
