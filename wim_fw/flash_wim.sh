openocd -f stlink-v2-1.cfg -f nrf52.cfg -c "init" -c "program build/zephyr/zephyr.hex verify reset exit"             
