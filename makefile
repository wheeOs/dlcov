analyze:
	@dart format . \
	&& dart analyze . \
	&& flutter test \
	&& dart pub global activate pana \
	&& dart pub global run pana .

publish:
	@git checkout master && git pull && dart pub publish

show-coverage:
	@genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html

install:
	@pub global activate --source path ../dlcov