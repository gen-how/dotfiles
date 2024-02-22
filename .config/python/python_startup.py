# Store interactive Python shell history in ~/.cache/python_history
# instead of ~/.python_history.
#
# Create the following .config/python/python_startup.py file
# and export its path using PYTHONSTARTUP environment variable:
#
# export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/python_startup.py"
import atexit
import os
import readline

cache_dir = os.getenv("XDG_CACHE_HOME",
                      default=os.path.expanduser("~/.cache/python"))
if not os.path.exists(cache_dir):
    os.makedirs(cache_dir)
histfile = os.path.join(cache_dir, "python_history")
try:
    readline.read_history_file(histfile)
    # default history len is -1 (infinite), which may grow unruly
    readline.set_history_length(1000)
except FileNotFoundError:
    pass

atexit.register(readline.write_history_file, histfile)
