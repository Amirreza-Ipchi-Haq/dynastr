COMMITMESSAGE=""
EDIT=vi
help:
	echo "Makefile commands:\n\tcommit [COMMITMESSAGE=<message>]  Commit to the repository using\n\t                                  <message> as the commit message (Leave\n\t                                  empty to enter description as well)\n\tedit [EDIT=<editor>]              Edit the source code (using Vim by\n\t                                  default)\n\tfetch                             Fetch updates from the repository\n\thelp                              Show help\n\tpush                              Push updates to the repository"
commit:
	git add .
	if test -n "${COMMITMESSAGE}";then\
		git commit -m "${COMMITMESSAGE}";\
	else\
		git commit;\
	fi
edit:
	${EDIT} dynastr.h
fetch:
	git fetch
push:
	git push
