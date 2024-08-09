libtopthink-framework.so:
	./bpc-prepare.sh
	$(MAKE) -C ../topthink-framework libtopthink-framework

libtopthink-framework:
	bpc -v \
	    -c ../topthink-framework-bpc.conf \
	    -l topthink-framework \
	    --pseudo-class-list think\\Exception,think\\Facade \
	    --php-exts .php,.tpl \
	    -u think-helper     \
	    -u psr-simplecache  \
	    -u think-orm        \
	    -u psr-http-message \
	    -u psr-log          \
	    -u psr-container    \
	    --input-file src.list

install-libtopthink-framework:
	cd ../topthink-framework && bpc -l topthink-framework --install
