cmake_minimum_required(VERSION 3.13.1)

set(BOARD nrf52840dk_nrf52840)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(wim_remote)

target_sources(app PRIVATE src/main.c)
target_sources(app PRIVATE src/nrf_esb.c)
target_sources(app PRIVATE src/crc.c)
target_sources(app PRIVATE src/utils.c)
target_sources(app PRIVATE src/buffer.c)
target_sources(app PRIVATE src/oled.c)
target_sources(app PRIVATE src/fonts.c)
target_sources(app PRIVATE src/i2c_bb.c)

target_sources(app PRIVATE src/imu/BMI160_driver/bmi160.c)
target_sources(app PRIVATE src/imu/ahrs.c)
target_sources(app PRIVATE src/imu/imu.c)

zephyr_include_directories(src/)
zephyr_include_directories(src/imu/)
zephyr_include_directories(src/imu/BMI160_driver/)

