#! /usr/bin/env python

import sys, random, os

def output_random_commit_message(file):
  if os.path.isfile(file):
    f = open(file, 'r')
    messages = f.readlines()
    if len(messages) > 0:
      print random.choice(messages).strip('\n')
    else:
      print 'Baka.'
      exit(1)
  else:
    print 'Baka.'
    exit(1)

if __name__ == '__main__':
  if len(sys.argv) != 2:
    print 'Baka.'
    exit(1)
  output_random_commit_message(sys.argv[1])