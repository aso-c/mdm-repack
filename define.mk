#
# Variable definition file
# for repack mdm debian package
#
# deb-version - Debian package version number format
# format:
#   [epoch:]upstream-version[-debian-revision]
#
# Example:
#   mdm_2.0.19+vera-1_amd64.deb
#   ^^^ ^^^^^^ ^^^^ ^ ^^^^^ ^^^- pkg file extention
#    |     |     |  |   +----- - architecture sign
#    |     |     |  +--------- - debian version suffix
#    |     |     +------------ - ubuntu distributive codename
#    |     +------------------ - upstream version
#    +------------------------ - package name
#

# package name
PACKNAME = mdm
# upstream version
UPSTREAM = 2.0.19
# ubuntu distributive codename
DISTR  = virginia
# debian version suffix
SUFFIX = 3
# architecture sign
ARCH   = amd64

# package file extention
EXT = deb

# Debian control information directory name
DebCONTROL = DEBIAN
# Working tree for expanded debian package
WorkingDir = deb-tree
