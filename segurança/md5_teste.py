import hashlib

# String de entrada
input_string = "Fatec"

# Criação do hash md5
md5_hash = hashlib.md5()

# Atualiza o hash md5 com a string de entrada codificada em utf-8
md5_hash.update(input_string.encode('utf-8'))

# Obtem o hash md5 em hexadecimal
digest = md5_hash.hexdigest()

print("MD5 Hash: ", digest)
