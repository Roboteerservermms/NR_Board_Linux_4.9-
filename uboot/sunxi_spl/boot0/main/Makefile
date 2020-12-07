
##
## Makefile for Sunxi Secure Boot
##


include $(SPLDIR)/config.mk

LIB_MMC	:= $(obj)libmain_mmc.o

HEAD    := boot0_head.o

DATA    := boot0_hash.o
START	:= boot0_entry.o
COBJS   += boot0_main.o

SRCS	:= $(START:.o=.S) $(COBJS:.o=.c) $(HEAD:.o=.c)
OBJS	:= $(addprefix $(obj),$(COBJS) $(COBJS-y) $(SOBJS))
HEAD    := $(addprefix $(obj),$(HEAD))
START	:= $(addprefix $(obj),$(START))

all:	$(obj).depend $(HEAD) $(START) $(DATA) $(LIB_MMC)

#this boot0_main function for MMC flash
$(LIB_MMC): $(OBJS)
	$(call cmd_link_o_target, $(OBJS))

#########################################################################

# defines $(obj).depend target
include $(SRCTREE)/rules.mk

sinclude $(obj).depend

#########################################################################
