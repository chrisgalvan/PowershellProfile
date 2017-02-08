<#
	.SYNOPSIS
	
	Sets upstream repository and list the current remotes
#>
function addUpstream
{
param(
	$repo
)
	git remote add upstream $repo
	
	write-host "Added"
	
	git remote -v
}

<#
	.SYNOPSIS
	
	Updates a repo with content from the upstream.
	
	.DESCRIPTION
	
	This function will fetch the changes in the upstream repo and push them to
	our fork.
	The upsteam repository needs to be setup before running this command
#>
function updateUpstream
{
	$branch = git rev-parse --abbrev-ref HEAD
	
	git pull
	
	git fetch upstream
	
	git merge upstream\$branch
	
	git push origin $branch
}