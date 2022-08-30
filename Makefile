go:
	@echo Make links
	ln -sf `pwd`/hs2/src/XYZ/Two hs1/src/XYZ
	ln -sf `pwd`/hs2/test/XYZ/Two hs1/test/XYZ
	@echo Building... works with links
	cd hs1 && stack build
	@echo Executing... works with links
	cd hs1 && stack exec -- xyzc
	@echo Testing... should fail, because of linked bad test, but works
	cd hs1 && stack test
