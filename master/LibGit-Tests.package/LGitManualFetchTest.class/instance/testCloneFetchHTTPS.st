tests
testCloneFetchHTTPS
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo remote signature message |
	repo := self newRepo state0MissingReference.
	repo cloneHttps: self newRepo repositoryUrlHttps.
	self deny: (repo repositoryReference / '.git/FETCH_HEAD') exists.
	remote := LGitRemote of: repo named: 'master' url: self newRepo repositoryUrlHttps.
	signature := LGitSignature new
		name: 'Homer Simpson';
		email: 'foo@bar.ogr';
		dateAndTime: DateAndTime now;
		freeAfterUse: true;
		yourself.
	message := 'Bart ate my shorts!'.
	self shouldnt: [ remote fetchWithSignature: signature message: message ] raise: LGitAbstractError.
	self assert: (repo repositoryReference / '.git/FETCH_HEAD') exists