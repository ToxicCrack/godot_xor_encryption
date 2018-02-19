func xor_encrypt(string, key):
  var i = 0
  var newStr = []
  while (i < string.length()):
      newStr.append((string.to_utf8()[i] ^ key.to_utf8()[i % (key.length() - 1)]));
      i += 1;
  return newStr;
  
func xor_decrypt(enc, key):
  var output = PoolByteArray();
  var i = 0
  while (i < enc.size()):
      output.append((enc[i]) ^ key.to_utf8()[i % (key.length() - 1)]);
      i += 1
  return output.get_string_from_utf8();
