# Set of functions for terminal usage

# Shows numerical chmod permissions at the beginning of line
function cls() {
  ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf("%0o ",k);print}'
}

# Lists what application has opened (and keeps) the file
function whatopened() { lsof | grep $1 }

# Create a directory and enter it
function mkd { mkdir -p $1 && cd $_ }

# Creates file and makes it executable
function tx { touch $1 && chmod +x $1 }

# Quick open (if no argument passed then open current directory)
function o { open ${@:-'.'} }

# Quick open in Visual Studio Code (if no argument passed then open current directory)
function c { code ${@:-'.'} }

# Xcode related stuff
# Generates playground for iOS platform in current directory
function playground-ios {
  default_name="$(date +'%Y%m%d_%H%M')_playground_ios"
  playground --platform=ios ${1:-$default_name}
}

# Generates playground for macOS platform in current directory
function playground-mac {
  default_name="$(date +'%Y%m%d_%H%M')_playground_mac"
  playground --platform=osx ${1:-$default_name}
}

function sha256sum {
  echo -n $1 | shasum -a 256
}
