#!/usr/bin/env python

import sys

from getpass import getpass
from hashlib import md5, sha256

def main():
  service = getpass('Service:')
  master = getpass('Master:')

  master = sha256(master).hexdigest()
  passwd = md5(service + master).hexdigest()

  passwd = service.upper()[0] + passwd[1:3] + '%' + passwd[4:6] + '#' + passwd[7:12]

  print passwd

if __name__ == '__main__':
  sys.exit(main())

