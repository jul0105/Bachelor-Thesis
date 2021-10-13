# EKE

- 1992
- Encryption Key-Exchange
- Improvment over DH. To prevent a man in the middle in the DH KE, the parameters are encrypted using the password

- First study of PAKE
- Symmetric PAKE





- use a combination of symmetric and asymmetric cryptography
- A **shared secret** (the password) is derived to encrypt a randomly-generated public key (ephemeral key)
- This protocol is designed to prevent offline dictionnary attacks on the password.
- Can use RSA and ElGamal and DH key exchange for the asymmetric cryptography



EKE Paper :

- DH : "Using EKE with exponential key exchange is quite
  similar to using it with any conventional asymmetric
  cryptosystem. However, since the key exchange process in itself produces a random session key, no separate transmission of R is needed. Without further
  ado, we present the protocol."
- 



SRP Paper :

- " EKE resists dictionary attacks by
  giving a passive attacker insucient information to
  verify a guessed password."
- "Since it was invented, EKE has been developed
  into a family of protocols, many of which are stronger
  than the original or add new desirable properties"
- EKE no forward secrecy (????)
- greater weakness: plaintext password



17-2005 :

- "Over the last decade, many
  researchers have investigated the feasibility of implementing
  EKE using different types of public-key cryptosystems such as
  RSA, ElGamal, and Diffie-Hellman key exchange. Nonetheless, most of the well-known and secure variants of EKE are
  based on Diffie-Hellman key exchange. It seems that EKE
  works well with Diffie-Hellman key exchange, but presents
  subtleties when implemented with RSA and other public-key
  cryptographic systems (see [5, 6]). The problem with the RSAbased EKE variant is that one party (usually the client) can
  not validate the RSA public key of the other party (i.e., server)
  since digital certificate is not used in the protocol."

  [5] S. Lucks, “Open key exchange: how to defeat dictionary attacks without
  encrypting public keys,” Proc. Security Protocol Workshop, Lecture
  Notes in Computer Science, Springer-Verlag, vol. 1361, pp. 79-90, 1997.
  [6] P. MacKenzie, “On the security of the SPEKE password-authenticated
  key exchange protocol,” Cryptology ePrint Archive: Report 2001/057.
  available from http://eprint.iacr.org/2001/057/.



18-EKE-extension-1994 :

- "EKE-DH appears to be the most practical EKE variant
  because of the relative simplicity of the Diffie-Hellman key exchange"
- prove of broken



19-Augmented-EKE-1993 :

- "both parties have cleartext versions of
  the shared password, a constraint that cannot (or ought not)
  always be met. In particular, consider the problem of a
  user logging in to a computer that does not rely on a secure
  key server for authentication. As shown in [13, 4], it is
  inadvisable for most hosts to store passwords in either clear
  form or in a reversibly-encrypted form. Rather, some oneway hash functionH(P) is stored for each user password P"

To read :

- EKE Paper
- SRP Paper - Section 2.2
- 17-...-2005-pdf