COMMITMESSAGE=""
EDIT=vi
edit:
	${EDIT} dynastr.h
fetch:
	git fetch
help:
	echo "Makefile commands:\n\tedit [EDIT=<editor>]            Edit the source code (using Vim by default)\n\tfetch                           Fetch updates from the repository\n\thelp                            Show help\n\tpush [COMMITMESSAGE=<message>]  Push updates to the repository using\n\t                                <message> as the commit message (Leave\n\t                                empty to enter description as well)"
push:
	git add .
	if test -n "${COMMITMESSAGE}";then\
		git commit -m "${COMMITMESSAGE}";\
	else\
		git commit;\
	fi
	git push
