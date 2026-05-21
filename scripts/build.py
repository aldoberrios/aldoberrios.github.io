#!/usr/bin/env python3
import os
import re

# 1. Dynamically find paths relative to the script location
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, '..'))

# 2. Map every file to its correct language sidebar component
FILE_MAPPING = {
    # English pages -> leftcol.html
    'index.html': 'leftcol.html',
    'publications.html': 'leftcol.html',
    'presentations.html': 'leftcol.html',
    'revitalisation.html': 'leftcol.html',
    'research.html': 'leftcol.html',
    
    # Spanish pages -> leftcol-spa.html
    'spanish.html': 'leftcol-spa.html',
    'investigacion.html': 'leftcol-spa.html',
    'publicaciones.html': 'leftcol-spa.html',
    'presentaciones.html': 'leftcol-spa.html',
    'revitalizacion.html': 'leftcol-spa.html',
    
    # Test file (Change to 'leftcol-spa.html' if you want to test the Spanish version)
#    'index-test.html': 'leftcol.html',
#    'spanish-test.html': 'leftcol-spa.html'
}

def update_left_column():
    # Cache component contents to avoid reading the same file multiple times
    component_cache = {}

    # Regular expression to target only <div id="leftcol">...</div>
    pattern = re.compile(r'(<div\s+id=["\']leftcol["\'][^>]*>)(.*?)(</div>)', re.DOTALL)

    for filename, component_name in FILE_MAPPING.items():
        file_path = os.path.join(PROJECT_ROOT, filename)
        component_path = os.path.join(PROJECT_ROOT, 'assets', component_name)
        
        # Skip if the target HTML file doesn't exist
        if not os.path.exists(file_path):
            continue
            
        # Read the component file if we haven't loaded it yet
        if component_name not in component_cache:
            if not os.path.exists(component_path):
                print(f"Error: Component file not found at {component_path}")
                continue
            with open(component_path, 'r', encoding='utf-8') as f:
                component_cache[component_name] = f.read().strip()
                
        component_content = component_cache[component_name]
        print(f"Processing: {filename} using {component_name}...")
        
        with open(file_path, 'r', encoding='utf-8') as f:
            original_content = f.read()
            
        if pattern.search(original_content):
            # Surgical swap: \1 is opening tag, \3 is closing tag. No formatting changes.
            replacement = f"\\1\n{component_content}\n\\3"
            updated_content = pattern.sub(replacement, original_content)
            
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(updated_content)
            print(f"Successfully moved {component_name} into {filename}")
        else:
            print(f"Warning: No <div id='leftcol'> container found in {filename}")

if __name__ == '__main__':
    update_left_column()