#!/usr/bin/python

import argparse
import sys
import os
import numpy


if __name__ == '__main__':
    
    # parse command line
    parser = argparse.ArgumentParser(description='''
    This script creates an association file given a number of lines   
    ''')
    parser.add_argument('number_of_lines', help='number of lines to create')
    parser.add_argument('scene_name', help='name of the scene')
    args = parser.parse_args()

    association_file = open("associations.txt", "w")

    timestamp = 0.033333
    timestamp_offset = 0.033333
    for x in range(0, int(args.number_of_lines)): 
        line = str(timestamp) + " ./depth/" + str(args.scene_name) + str(x).zfill(4) + ".png " + str(timestamp) + " ./rgb/" + str(args.scene_name) + str(x).zfill(4) + ".png\n"
        association_file.write(line)
        timestamp = timestamp + timestamp_offset
        
    association_file.close()

    
        
