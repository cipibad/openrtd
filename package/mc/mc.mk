#############################################################
#
# mc
#
#############################################################
MC_VERSION = 4.6.1
MC_SOURCE = mc-$(MC_VERSION).tar.gz
MC_SITE = http://ftp.gnu.org/gnu/mc
MC_INSTALL_STAGING = YES
MC_INSTALL_TARGET = YES
MC_CONF_OPT = --with-vfs=no --with-x=no --with-gpm-mouse=no --with-screen=mcslang
MC_CONF_ENV = LDFLAGS+="-L$(TARGET_DIR)/usr/lib -liconv"
HOST_MC_CONF_ENV = 

MC_DEPENDENCIES = slang ncurses host-libiconv host-mc 

$(eval $(host-autotools-package))
$(eval $(autotools-package))

