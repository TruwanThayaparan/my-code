# Challenge 24 - Hack-proof
# Note: I assumed that the 'open text doc' part was just pretend.

# Sign-up phase
username = input("Set your username: ")
with open("username.txt", "wt") as u:
    u.write(username)

import random
import string

def generate_password(length):
    lowercase = random.choice(string.ascii_lowercase)
    uppercase = random.choice(string.ascii_uppercase)
    special = random.choice("!£$%^&*@")

    others = random.choices(string.ascii_letters + string.digits + "!£$%^&*@", k=length-3)

    password_list = [lowercase, uppercase, special] + others
    random.shuffle(password_list)

    return ''.join(password_list)

# Suggested password
sp = input("Use suggested password (yes or no)? ")
if sp.lower() == "yes":
    length = 0
    while True:
      try:
        length = int(input("How long do you want your suggested password to be (minimum 8)? "))
        if length < 8:
          print("Password length must be 8 characters or more.")
        else:
          break
      except ValueError:
        print("Password length must be a number.")
        
    passw = generate_password(length)
        
    print("Your password is:",passw)
    password = passw

if sp.lower() == "no":
  password = input("Set your password: ")

'''
This is if the non-autogenerated password needs to have the requirements too
if sp.lower() == "no":
    while True:
        password = input("Set your password: ")
        if len(password) < 8:
            print("Password must be at least 8 characters long.")
        elif not any(c.islower() for c in password):
            print("Password must contain at least one lowercase character.")
        elif not any(c.isupper() for c in password):
            print("Password must contain at least one uppercase character.")
        elif not any(c in "!£$%^&*@" for c in password):
            print("Password must contain at least one special character.")
        else:
            break
'''
  
with open("password.txt", "wt") as p: # ah yes plain text password
    p.write(password)

############################################################################################################################
# Pretend the above code is a sign-up system for your computer and now we need to enter a password to open a document

# Log-in phase
with open("username.txt", "rt") as u:
    ucheck = u.read().strip()

with open("password.txt", "rt") as p:
    pcheck = p.read().strip()

while True:
  utry = input("Username: ")
  ptry = input("Password: ")
  if ptry != pcheck or utry != ucheck:
    print("Sorry, the credentials are incorrect.")
  else:
    break

print("Success!")
