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
    
    
## How to compile and use the assembly code
   #### On the terminal logged to the Orange Pi by ssh type:
    1. git clone https://github.com/alexsami-lopes/Digital-Systems-Project-1.git
    2. cd Digital-Systems-Project-1
    3. make
    4. ./timer

# Image of the Circuit on the Breadboard
<img src="https://drive.google.com/file/d/1_l2X3UfHdgJp5xq63nNsr6KPeTvCSbNI/view?usp=share_link" alt="Breadboard" width="800" height="600">

