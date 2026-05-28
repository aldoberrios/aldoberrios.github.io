#!/usr/bin/env python3
import os
import re

# 1. Dynamically find paths relative to the script location
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, '..'))

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
        
    # Read the exact raw text of your left column component
    with open(COMPONENT_PATH, 'r', encoding='utf-8') as f:
        component_content = f.read().strip()

    # Regular expression to find <div id="leftcol">...</div> across multiple lines
    # It captures the opening tag, anything in between, and the closing tag safely.
    pattern = re.compile(r'(<div\s+id=["\']leftcol["\'][^>]*>)(.*?)(</div>)', re.DOTALL)

    for filename in TARGET_FILES:
        file_path = os.path.join(PROJECT_ROOT, filename)
        
        if not os.path.exists(file_path):
            continue
            
        print(f"Processing: {filename}...")
        
        with open(file_path, 'r', encoding='utf-8') as f:
            original_content = f.read()
            
        if pattern.search(original_content):
            # Replace ONLY the interior contents between the tags
            # \1 keeps your exact opening tag, \3 keeps your exact closing tag
            replacement = f"\\1\n{component_content}\n\\3"
            updated_content = pattern.sub(replacement, original_content)
            
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(updated_content)
            print(f"Successfully moved component into {filename}")
        else:
            print(f"Warning: No <div id='leftcol'> container found in {filename}")

if __name__ == '__main__':
    update_left_column()