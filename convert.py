#!/bin/python3
from sys import argv
from PIL import Image

picture = Image.open(argv[1])
width, height = picture.size

if len(argv) >= 4:
    new_width = int(argv[2])
    new_height = int(argv[3])
else:
    new_width = width
    new_height = height



x = 0
y = 0

print(width, height)

if (width > height):
    width, height = height, width
    picture = picture.rotate(90, expand=True)

if new_width / new_height > width / height:
    target_width = int(new_width * height / new_height)

    width_diff = target_width - new_width
    x = target_width - width
    width = target_width
else:
    target_height = int(new_height * width / new_width)

    height_diff = target_height - new_height
    y = target_height - height  
    height = target_height

print(width, height)

background = Image.new('RGB', (width, height), 'white')

background.paste(picture, (x // 2, y // 2))

background.save("tmp.png")
