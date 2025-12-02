#!/bin/bash

mkdir house

mkdir house/floor1
mkdir house/floor1/kitchen
mkdir house/floor1/living_room 
mkdir house/floor1/guest_bathroom
mkdir house/floor1/dinning_room
 
mkdir house/floor2
mkdir house/floor2/bedroom1
mkdir house/floor2/bedroom2
mkdir house/floor2/bathroom1
mkdir house/floor2/bathroom2

cd house/floor1/kitchen
touch fridge.txt
touch oven.txt
touch table.txt
   
cd house/floor1/living_room 
touch sofa.txt
touch tv.txt
touch carpet.txt

cd house/floor1/guest_bathroom
touch mirror.txt
touch sink.txt
touch toilet.txt
touch shower.txt

cd house/floor1/dinning_room
touch table.txt
touch chairs.txt

cd house/floor2/bedroom1
touch wardrobe.txt
touch safe.txt
touch bed.txt
chmod o-r safe.txt

cd house/floor2/bedroom2
touch wardrobe.txt
touch mirror.txt
touch bed.txt

cd house/floor2/bathroom1
touch mirror.txt
touch sink.txt
touch toilet.txt
touch bath.txt

cd house/floor2/bathroom2
touch mirror.txt
touch sink.txt
touch toilet.txt
touch bath.txt
