# Set of functions for terminal usage

# Shows numerical chmod permissions at the beginning of line
function cls() {
  ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf("%0o ",k);print}'
}

# Lists what application has opened (and keeps) the file
function whatopened() { lsof | grep $1 }

# Create a directory and enter it
function mkd { mkdir -p $1 && cd $_ }

# Quick open (if no argument passed then open current directory)
function o { open ${@:-'.'} }

# Quick open in Atom (if no argument passed then open current directory)
function a { atom ${@:-'.'} }
function ab { atom-beta ${@:-'.'} }
