# Copyright 2006-2019 Joseph Block <jpb@apesseekingknowledge.net>
#
# Licensed under the Apache License, Version 2.0 (the "License")
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Add our plugin's bin diretory to user's path
#PLUGIN_D=$(dirname "$0")
#export PATH="${PATH}:${PLUGIN_D}/bin"


# Skipped:
#   incoming-commits  (appears to be a dupe of grab)
#   mark-all-resolved (git: 'conflicts' is not a git command.)
zstyle ':completion:*:*:git:*' user-commands \
  churn:'List files in ref with change/commit count' \
  divergence:'List local/remote (incoming/outgoing) changes for current branch' \
  incoming:'Fetch remote tracking branch, and list incoming commits' \
  outgoing:'Fetch remote tracking branch, and list outgoing commits' \
  undo-push:'Undo your last push to branch ($1) of origin' \
  where:'Shows where a particular commit falls between releases' \
  winner:'Determines "winner" by commit count, and number of lines' \
  wtf:'Displays the state of your repository in a readable, easy-to-scan format' \
  #prune-branches:'Simple script that cleans up unnecessary branches' \
  #upstream-sync:'Sync to upstream/yourforkname and rebase into your local fork, then push'
  #age:'A git-blame viewer, written using PyGTK written by Kristoffer Gronlund ' \
  #big-file:'List disk size of files in ref' \
  #change-author:'Rewrite commits, updating author/email' \
  #changes:'List authors/emails with commit count' \
  #unpushed:"Show the diff of everything you haven't pushed yet" \
  #unpushed-stat:"Show the diffstat of everything you haven't pushed yet" \
  #unreleased:'Shows git commits since the last tagged version' \
  #up-old:'Like git-pull but show a short and sexy log of changes immediately after merging (git-up) or rebasing (git-reup)' \
  #when-merged:'Find when a commit was merged into one or more branches' \
  #pie-ify:'Apply perl pie, on the fly' \
  #promote:'Promotes a local topic branch to a remote tracking branch of the same name, by pushing and then setting up the git config' \
  #pruneall:'Prune branches from specified remotes, or all remotes when <remote> not specified' \
  #publish:'Pushes/publishes current branch to specified remote' \
  #purge-from-history:'Script to permanently delete files/folders from your git repository' \
  #rank-contributors:"A simple script to trace through the logs and rank contributors by the total size of the diffs they're responsible for" \
  #rebase-authors:'Adds authorship info to interactive git rebase output' \
  #rel:'Shows the relationship between the current branch and <ref>' \
  #root-directory:"Print the root of the git checkout you're in" \
  #run-command-on-revisions:'Runs a given command over a range of Git revisions' \
  #shamend:'Amends your staged changes as a fixup to the specified older commit in the current branch' \
  #show-overwritten:"Aggregates git blame information about original owners of lines changed or removed in the '<base>...<head>' diff" \
  #sp:"'Simple push', commits and pushes. Use -a flag to add"\
  #submodule-rm:'Remove submodules from current repo' \
  #thanks:'List authors with commit count' \
  #track:'Sets up your branch to track a remote branch' \
  #trail:'Show all branching points in Git history' \
  #ls-object-refs:'Find references to <object> SHA1 in refs, commits, and trees. All of them' \
  #maildiff: 'Simple git command to email diff in color to reviewer/co-worker & optionally attach patch file.' \
  #maxpack:'Repack with maximum compression' \
  #nuke:'Nukes a branch locally and on the origin remote' \
  #object-deflate:'Deflate an loose object file and write to standard output' \
  #find-dirty:'Recurse current directory, listing "dirty" git clones' \
  #flush:'Recompactify your repo to be as small as possible' \
  #grab:'Add github remote, by username and repo' \
  #ignored:'List files currently being ignored by .gitignore' \
  #improved-merge:'Sophisticated git merge with integrated CI check and automatic cleanup upon completion' \
  #find-dirty:'Recurse current directory, listing "dirty" git clones' \
  #flush:'Recompactify your repo to be as small as possible' \
  #grab:'Add github remote, by username and repo' \
  #ignored:'List files currently being ignored by .gitignore' \
  #improved-merge:'Sophisticated git merge with integrated CI check and automatic cleanup upon completion' \
