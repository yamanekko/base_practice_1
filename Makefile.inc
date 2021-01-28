# for mruby
APPL_LIBS += /***mrubyのパスを絶対パスで入れてください***/mruby-2.0.1/build/EV3RT-sim/lib/libmruby.a -lm
INCLUDES += -I/***mrubyのパスを絶対パスで入れてください***/mruby-2.0.1/include

APPL_ASMOBJS :=
ifdef USE_CXX
	APPL_CXXOBJS += 
	APPL_COBJS +=
else
	APPL_COBJS += 
endif


