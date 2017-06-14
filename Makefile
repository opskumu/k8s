publish:
	rm -rf _book
	gitbook build
	cd _book && git config user.name 'opskumu' && git config user.mail 'opskumu@gmail.com' && git init && git add . && git commit -m 'Auto publisher' && git push --force --quiet "git@github.com:opskumu/k8s.git" master:gh-pages > /dev/null 2>&1
	rm -rf _book
