# Digital Systems - Project 1
This project involves programming a simple timer using Assembly Language for Arm v7 Architecture on an Orange Pi PC Plus, which is attached to a shield and a breadboard with a 16x2 LCD display and several buttons. The objective of the project is to utilize the Orange Pi's capabilities to create a functional timer that can count down from a specified time and provide visual feedback on the LCD display.

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
  * 16x2 LCD Display Module - HD44780U
  
## Orange PC Plus Informations

 ### Hardware Specifications

   #### CPU
    * H3 Quad-core Cortex-A7 H.265/HEVC 4K
   #### GPU	
    * Mali400MP2 GPU @600MHz
    * Supports OpenGL ES 2.0
   #### Memory (SDRAM)	
    * 1GB DDR3 (shared with GPU)
   #### Onboard Storage
    * TF card (Max. 32GB)
    * 8GB eMMC Flash
   #### Onboard Network	
    * 10/100 Ethernet RJ45
   #### Video Input
    * A CSI input connector camera:
    * Supports 8-bit YUV422 CMOS sensor interface
    * Supports CCIR656 protocol for NTSC and PAL
    * Supports SM pixel camera sensor
    * Supports video capture solution up to 1080p@30fps
   #### Audio Input
    * MIC
   #### Video Outputs
    * Supports HDMI output with HDCP
    * Supports HDMI CEC
    * Supports HDMI 30 function
    * Integrated CVBS
    * Supports simultaneous output of HDMI and CVBS
   #### Audio Output
    * 3.5 mm Jack and HDMI
   #### Power Source
    * DC input, USB OTG input don't supply power
   #### USB 2.0 Ports
    * Three USB 2.0 HOST, one USB 2.0 OTG
   #### Buttons
    * Power button
   #### Low-level peripherals
    * 40 Pins Header
   #### GPIO(1x3) pin
    * UART, Ground.
   #### LED
    * Power led & Status led
   #### Key
    * IR input,Power
   #### Supported OS
    * Android Lubuntu, Debian Image

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
 #### Image of result (without "watch")
        With "watch" it will be updated every 2 seconds
<img src="https://github.com/alexsami-lopes/Digital-Systems-Project-1/blob/15edc915f0052c32c2efb64937aee7c13ad9caed/images/Print_of_WiringOP_gpio_readall.png" alt="Breadboard" width="558" height="561">
    
    
    
## How to compile and use the assembly code
   #### On the terminal logged to the Orange Pi by ssh type:
    1. git clone https://github.com/alexsami-lopes/Digital-Systems-Project-1.git
    2. cd Digital-Systems-Project-1
    3. make
    4. ./timer

# Image of the Circuit on the Breadboard
<img src="https://github.com/alexsami-lopes/Digital-Systems-Project-1/blob/15edc915f0052c32c2efb64937aee7c13ad9caed/images/Imagem-da-Protoboard.jpeg" alt="Breadboard" width="800" height="600">


# Testing
During the testing phase, we divided our efforts into the following steps:

 1. Configuring the GPIO port connected to an LED through the attached shield to OUT.
 2. Turning on the LED by sending a "1" to the configured port.
 3. Following the instructions on the HD44780U datasheet, we attempted to initialize the 16x2 display, paying close attention to the sequence and timings specified.
 4. Sending the word "timer" to the display.
 5. Sending the number "9" to the display.
 6. Developing the logic for a countdown timer.
 7. Developing the logic to send the data of each number to the display.
 8. Attempting to integrate everything.
 
Through trial and error, we were able to successfully complete the first three steps. However, we encountered difficulties in steps 4-8. We were unable to display "timer" on the 16x2 display or program the logic to count down from an initially set time to zero on time.

# Final Analysis
Although the project is incomplete at the moment, we acquired valuable knowledge during the programming process. We may consider resuming the project in the future to further develop our skills and complete the remaining steps.
