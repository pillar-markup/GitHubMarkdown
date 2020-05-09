Class {
	#name : #BaselineOfGithubMarkdown,
	#superclass : #BaselineOf,
	#category : #BaselineOfGithubMarkdown
}

{ #category : #baselines }
BaselineOfGithubMarkdown >> baseline: spec [
	<baseline>
	self flag: #fixme.
	"we should check because the dependency analyser is given strange results."
	spec for: #'common' do: [
		spec 
			package: #'GithubMarkdown';
			package: #'GithubMarkdown-Tests' with: [
				spec requires:  #('GithubMarkdown') ];
			package: #'GithubMarkdown-Pillar';
			package: #'GithubMarkdown-Tests' with: [
				spec requires:  #('GithubMarkdown-Pillar-Tests' 'GithubMarkdown-Tests') ]]

]