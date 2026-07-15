#!/usr/bin/env python3

import random

num = random.randint( 1, 20 )
flag = True
guess = 0

print( 'Guess my number 1-20 : ',  end = '' )
while flag :                # While f;ag remains true

    guess = input()
    if not guess.isdigit() :
        print( 'Invalid! Enter only digits 1-20' )
        break
    elif int( guess ) < num :
        print( 'Too low, try again : ', end = '' )
    elif int( guess ) > num :
        print( 'Too high, try again : ', end = '' )
    else :
        print( 'Correct... My number is ' + str( num ) )
        flag = False
        