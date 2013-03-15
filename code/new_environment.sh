#START:create
new-host-4:~ tag_api hassan$ heroku create --remote <insert_name_here>
#END:create
#START:staging
new-host-4:~ tag_api hassan$ heroku create --remote staging
new-host-4:~ tag_api hassan$ cat .git/config
[core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
  ignorecase = true
[remote "origin"]
  fetch = +refs/heads/*:refs/remotes/origin/*
  url = git@github.com:kaboom-org/tag_api
[branch "master"]
  remote = origin
  merge = refs/heads/master
[remote "staging"]
  url = git@heroku.com:rocky-sea-8976.git
  fetch = +refs/heads/*:refs/remotes/staging/*
[gitflow "branch"]
  master = master
  develop = develop
[gitflow "prefix"]
  feature = feature/
  release = release/
  hotfix = hotfix/
  support = support/
  versiontag =
#END:staging
#START:prod
new-host-4:~ tag_api hassan$ heroku create --remote production
new-host-4:~ tag_api hassan$ cat .git/config
[core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
  ignorecase = true
[remote "origin"]
  fetch = +refs/heads/*:refs/remotes/origin/*
  url = git@github.com:kaboom-org/tag_api
[branch "master"]
  remote = origin
  merge = refs/heads/master
[remote "staging"]
  url = git@heroku.com:rocky-sea-8976.git
  fetch = +refs/heads/*:refs/remotes/staging/*
[remote "production"]
  url = git@heroku.com:dead-wood-3875.git
  fetch = +refs/heads/*:refs/remotes/production/*
[gitflow "branch"]
  master = master
  develop = develop
[gitflow "prefix"]
  feature = feature/
  release = release/
  hotfix = hotfix/
  support = support/
  versiontag =
#END:prod
#START:alias
new-host-4:~ tag_api hassan$ git config heroku.remote staging
new-host-4:~ tag_api hassan$ cat .git/config
[core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
  ignorecase = true
[remote "origin"]
  fetch = +refs/heads/*:refs/remotes/origin/*
  url = git@github.com:kaboom-org/tag_api
[branch "master"]
  remote = origin
  merge = refs/heads/master
[remote "staging"]
  url = git@heroku.com:rocky-sea-8976.git
  fetch = +refs/heads/*:refs/remotes/staging/*
[remote "production"]
  url = git@heroku.com:dead-wood-3875.git
  fetch = +refs/heads/*:refs/remotes/production/*
[heroku]
  remote = staging
[gitflow "branch"]
  master = master
  develop = develop
[gitflow "prefix"]
  feature = feature/
  release = release/
  hotfix = hotfix/
  support = support/
  versiontag =
#END:alias
