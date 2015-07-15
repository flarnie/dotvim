import re
import os


def pascal_case_basename(basename):
    return ''.join(x[0].upper() + x[1:] for x in basename.split('_'))

def _clean_basename(basename):
    return re.sub('(_spec|-test)$', '', basename or 'ModuleName')

# If path ends in `index.jsx`, this function will return the PascalCased
# directory name. Otherwise, it returns the PascalCased filename. This allows
# me to use my snippets with modules that are like `/path/to/module_name.jsx`
# and modules that are like `/path/to/ModuleName/index.jsx`.
def path_to_component_name(path, case_fn):
    dirname, filename = os.path.split(path)
    basename = os.path.splitext(filename)[0]
    if basename == 'index' or basename == 'index-test':
        # Pop the last directory name off the dirname
        return case_fn(_clean_basename(os.path.basename(dirname)))
    else:
        return case_fn(_clean_basename(basename))
