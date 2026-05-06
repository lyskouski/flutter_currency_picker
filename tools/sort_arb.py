#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json
import os
import glob
from collections import OrderedDict

def sort_arb_file(file_path):
    """Sort an ARB file by keys while preserving UTF-8 encoding"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        # Sort the data by keys
        sorted_data = OrderedDict(sorted(data.items()))
        
        # Write back with proper UTF-8 encoding and formatting
        with open(file_path, 'w', encoding='utf-8') as f:
            json.dump(sorted_data, f, ensure_ascii=False, indent=2, separators=(',', ': '))
        
        print(f"Sorted: {os.path.basename(file_path)}")
        return True
    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return False

def main():
    # Find all .arb files
    arb_files = glob.glob('../lib/l10n/*.arb')
    
    success_count = 0
    for file_path in sorted(arb_files):
        if sort_arb_file(file_path):
            success_count += 1
    
    print(f"\nProcessed {success_count}/{len(arb_files)} files successfully")

if __name__ == '__main__':
    main()
