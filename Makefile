SCONSTRUCT_FILES=`find ${PWD} -type f -name "Sconstruct"`

all:
	for i in $(SCONSTRUCT_FILES); do echo "\nCompiling $$i" && cd `dirname $$i` && scons && cd -; done

clean:
	for i in $(SCONSTRUCT_FILES); do echo "\nRemoving $$i" && cd `dirname $$i` && scons -c && cd -; done
