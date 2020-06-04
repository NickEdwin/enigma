# Enigma
#### Final project for [Turing School](https://turing.io/)'s BE Mod 1 course. 

## Overview 
_A program deisgned to shift user inputted text a set amount of spaces to the right based on a key and offset._  

## Project Decription
This program will calculate how user input is shifted using two primary factors:
1. Using a "Key"
  - The Key will be a randomly selected 5 digit number.
2. Using a "Offset"
  - The Offset will be calculated by taking the current date in 8 digit format, squaring it, and taking the last 4 digits.

## How key and offset comes together
The key and offset will be combined in the following mannor:
Key Ex. =  02715
Offset Ex. = August 4, 1995 = 040895 = 1672401025 = 1025

Key:     plus    Offset:  =   Shift
A) 02            A) 1         A) 3
B) 27            B) 0         B) 27
C) 71            C) 2         C) 73
D) 15            D) 5         D) 20

## Applying shift to user input
Taking into consideration a 26 letter alphabet with the addition of a blank space at the end.
Each character of a given word (space's included!) will be shifted to the right the corresping number of spaces.
Special characters will be ignored 
*Note - Every 5th character the cycle repeats. Therefore characters in space 1 & 5 or 2 & 6 for example will both be moved the same amount of spaced. 

Ex: "Hello World!" yields “keder ohulw!” 
*Note - This example shifts the space between words 27 times resulting in the same character again.

## Encrypting and Decrypting
This program will store each randomly generated key and offset combination so that messages can be both encrpted AND decrypted.
