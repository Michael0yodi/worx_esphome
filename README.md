# worx_esphome

Using optocouplers to emulate keypad and attaching on cutter motor and charging as sensors.
Its possible to attach on additional sensors/keyboard if needed, all Hall sensors are running on 5v logic.
You can even attach two multiplexers emulating the full matrix keyboard (but without visual feedback the use is limited)

I ended up with this as a test:

Supports emulated keypress for:
Start –> Mowing
Stop -> Stop/Pause
Home -> Return to base
Reset -> Reset blocked by xx

Simply added as a Vacuum in Home Assistant for now.

![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx_79x_iot.png)
![alt text](https://github.com/Michael0yodi/worx_esphome/blob/main/worx_79x_keypad.png)
