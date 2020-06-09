# Enigma
#### Final project for [Turing School](https://turing.io/)'s BE Mod 1 course.

## Overview
_A program deisgned to shift user inputted text a set amount of spaces to the right based on a key and offset._  

## Project Decription
This program will calculate how user input is shifted using two primary factors:
1. Using a "Key"
  - The Key will be a randomly selected 5 digit number.
2. Using a "Offset"
  - The Offset will be calculated by taking the current date in 6 digit format, squaring it, and taking the last 4 digits.

## How key and offset come together
The key and offset will be combined in the following mannor:  
Key Ex. =  02715  (used in 4 sets of numbers in groups of 2 - see below)   
Offset Ex. = August 4, 1995 = 040895 = 1672401025 = 1025  

Key &nbsp; &nbsp; &nbsp;     + &nbsp; &nbsp;    Offset &nbsp;   = &nbsp; &nbsp;   Shift   
A) 02 &nbsp; &nbsp;    +  &nbsp; &nbsp;   A) 1 &nbsp; &nbsp;     = &nbsp; &nbsp;    A) 3   
B) 27 &nbsp; &nbsp;    +  &nbsp; &nbsp;   B) 0 &nbsp; &nbsp;     = &nbsp; &nbsp;    B) 27   
C) 71 &nbsp; &nbsp;    +  &nbsp; &nbsp;   C) 2 &nbsp; &nbsp;     = &nbsp; &nbsp;    C) 73   
D) 15 &nbsp; &nbsp;    +  &nbsp; &nbsp;   D) 5 &nbsp; &nbsp;     = &nbsp; &nbsp;    D) 20   

## Applying shift to user input
Taking into consideration a 26 letter alphabet with the addition of a blank space at the end.  
Each character of a given word (space's included!) will be shifted to the right the corresping number of spaces.  
Special characters will be ignored   
*Note - Every 5th character the cycle repeats. Therefore characters in space 1 & 5 or 2 & 6 for example will both be moved the same amount of spaced.*   

Ex: "Hello World!" yields “keder ohulw!”   
*Note - This example shifts the space between words 27 times resulting in the same character again.*  

## Encrypting and Decrypting  
This program will store each randomly generated key and offset combination so that messages can be both encrypted AND decrypted.  

## Self Assessment  
#### Functionality  
3 - Enigma class as well as CLI Functionality is all working. To achieve a "4" I would need to implement the "cracking" functionality.  

#### OOP  
3 - All work is broken down into logical increments and classes have single responsibilities. For a "4" inheritance or modules would need to be implemented.  

#### Conventions and Mechanics  
3.5 - All code is properly indented, naming conventions are clear, hashes are implemented and all code can be explained. To obtain a "4" methods would need to be shortened to no more than 10 lines.  

#### TDD  
3.5 - Test coverage shows 100% and all methods are thoroughly tested. To obtain a "4" mocks or stubs will need to be implemented (hoping to achieve this with current reworking of tests.)  

#### Version Control  
3.5 - Commit threshold has been met and includes clear commit messages documenting functionality. To obtain a "4" commits would have to be reviewed to ensure that no commits include excess functionality.
