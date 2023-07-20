openocd -f stlink.cfg -f nrf52.cfg -c "init" -c "program nrf52840_wand_mag.bin verify reset exit"             
