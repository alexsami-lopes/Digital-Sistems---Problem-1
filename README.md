# Digital Systems - Project 1
This is a project that aims to program a simple timer using Assembly Language for Arm v7 Archtecture for an Orange Pi PC Plus attached to a Shield to a Breadboard with a 16x2 LCD Display and some buttons.

## Used components

  * Orange PC Plus with Power Supply 5v 3a dc
  * GPIO 4-Inch Ribbon Cable For Raspberry Pi Zero/Zero W/A+/B+/Pi 2/Pi 3 With 40pins
  * Adafruit Pi T-Cobbler Plus Breakout for 2x20 Raspberry Pi - A+, B+, Pi 2, Pi 3, Pi 4, Zero
  * Breadboard System with Power Supply - SKU: MB-800
  * 100K TRİMPOT 3006P
  * LEDs
  * 6mm 2 Pin Momentary Tactile Tact Push Buttons
  * Appropriate resistors
  * Appropriate wires
  * 16x2 LCD Display Module
  
## Operating System

 * Armbian 28.08.8 Jammy - Kernel Linux 5.15.74-sunxi

## Access by SSH

 1. Open a terminal on a PC using the same WI-FI that the Orange Pi is connected
 2. Type: ssh user@ip_of_orange_pi_ssh
 3. Type password of the user on the Orange Pi
 
 ### Example of usage
  * ssh user@10.0.0.100

## Auxiliary Software Testing Tool

 ### WiringOP
   #### How to install
    1. apt-get update
    2. apt-get install -y git
    3. git clone https://github.com/orangepi-xunlong/wiringOP.git
   #### Build
    1. cd wiringOP
    2. ./build clean
    3. ./build 
   #### How to use it for testing
    1. Open a dedicated terminal window
    2. Type: watch gpio readall
    
    
## How to compile and use the assembly code
   #### On the terminal logged to the Orange Pi by ssh type:
    1. git clone 
    2. cd /Digital-Systems-Project-1
    3. make
    4. ./timer



