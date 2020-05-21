Class {
	#name : #GHMStrikeDelimiter,
	#superclass : #GHMAbstractDelimiter,
	#category : #'GithubMarkdown-Model - inline'
}

{ #category : #accessing }
GHMStrikeDelimiter >> isCloser [
	^ true
]

{ #category : #accessing }
GHMStrikeDelimiter >> isOpener [
	^ true
]

{ #category : #accessing }
GHMStrikeDelimiter >> markup [
	^ '~'
]

{ #category : #accessing }
GHMStrikeDelimiter >> type [
	^ #strike
]