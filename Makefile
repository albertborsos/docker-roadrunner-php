VERSION = 1.11.0
PUSH = false

include base74.mk
include base80.mk
include base81.mk
include base82.mk
include base83.mk
include base83-amd.mk
include base83-arm.mk
include base84-amd.mk
include base84-arm.mk

all: base74 base80 base81 base82 base83 base83-amd base83-arm base84-amd base84-arm
