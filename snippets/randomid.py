# Simple snippet that can be used to generate random alphanumeric IDs

import string, random
def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
     return ''.join(random.choice(chars) for _ in range(size))