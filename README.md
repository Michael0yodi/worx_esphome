# worx_esphome

Home Assistant integration for old legacy Worx Landroid using standard ESPHome and templated Vacuum in HA

Using optocouplers to emulate keypad and attaching cutter motor and charging cable as binary sensors.
Its possible to attach additional sensors/keyboard if needed -if you have enough GPIO's avilable, all Hall sensors are running on 5v logic.
You can even attach two multiplexers emulating the full matrix keyboard (but without visual feedback the use is limited)


[Video of mower in action](https://youtu.be/NY6L3iWkB_4)

I ended up with this:

Supports emulated keypress for:<br>
Start –> Mowing<br>
Stop -> Stop/Pause<br>
Home -> Return to base<br>
Reset -> Reset blocked by xx<br>
<br>
Simply added as a Vacuum in Home Assistant for now via ESPHome.

![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx_79x_iot.png)
<br>
A Matrix keyboard is arranged in rows and columns, if a key is pressed, a column wire makes contact with a row wire, hence a key have been pressed.
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx_79x_keypad.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-5v.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-charging.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-keyboard.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-motor.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-stop.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-ha1.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx-ha2.png)



