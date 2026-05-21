#!/usr/bin/env python3
import os
from bs4 import BeautifulSoup

# 1. Dynamically find the project root directory relative to this script
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, '..'))

# 2. Define paths relative to the project root
COMPONENT_PATH = os.path.join(PROJECT_ROOT, 'assets', 'leftcol.html')
TARGET_FILES = ['index-test.html']

# TARGET_FILES = [
#     'index.html', 'publications.html', 'presentations.html', 
#     'revitalisation.html', 'spanish.html', 'investigacion.html', 
#     'publicaciones.html', 'presentaciones.html', 'revitalizacion.html', 
#     'research.html'
# ]


def update_left_column():
    if not os.path.exists(COMPONENT_PATH):
        print(f"Error: Component file not found at {COMPONENT_PATH}")
        return
        
    with open(COMPONENT_PATH, 'r', encoding='utf-8') as f:
        component_soup = BeautifulSoup(f.read(), 'html.parser')

    for filename in TARGET_FILES:
        # Full path to the file in the parent directory
        file_path = os.path.join(PROJECT_ROOT, filename)
        
        if not os.path.exists(file_path):
            continue
            
        print(f"Processing: {filename}...")
        
        with open(file_path, 'r', encoding='utf-8') as f:
            file_soup = BeautifulSoup(f.read(), 'html.parser')
            
        target_div = file_soup.find('div', id='leftcol')
        
        if target_div:
            target_div.clear()
            target_div.append(component_soup)
            
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(str(file_soup.prettify(formatter="minimal")))
            print(f"Successfully updated {filename}")
        else:
            print(f"Warning: No <div id='leftcol'> found in {filename}")

if __name__ == '__main__':
    update_left_column()