from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

# Chave de 256 bits (32 bytes)
key = get_random_bytes(32)

# Criando o cipher e criptografando a mensagem
cipher = AES.new(key, AES.MODE_EAX)
text = b"Fatec - Seguranca da Informacao"
nonce = cipher.nonce
ciphertext, tag = cipher.encrypt_and_digest(text)

print("Texto criptografado: ", ciphertext)

# Criando um novo cipher com a chave e nonce para descriptografar a mensagem
cipher_dec = AES.new(key, AES.MODE_EAX, nonce=nonce)
plaintext = cipher_dec.decrypt(ciphertext)

print("Texto descriptografado: ", plaintext)
