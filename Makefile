COMMITMESSAGE=""
EDIT=vi
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
help:
	echo "Makefile commands:
	commit [COMMITMESSAGE=<message>]  Commit to the repository using
	                                  <message> as the commit message (Leave
	                                  empty to enter description as well)"
	edit [EDIT=<editor>]              Edit the source code (using Vim by
	                                  default)
	fetch                             Fetch updates from the repository
	help                              Show help
	push                              Push updates to the repository"
push:
	git push
