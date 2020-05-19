Class {
	#name : #GHMLinkNameOpenerDelimiter,
	#superclass : #GHMAbstractDelimiter,
	#category : #'GithubMarkdown-Model - inline'
}

{ #category : #testing }
GHMLinkNameOpenerDelimiter >> isActive [
	^ false
]

{ #category : #accessing }
GHMLinkNameOpenerDelimiter >> isCloser [
	^ false
]

{ #category : #accessing }
GHMLinkNameOpenerDelimiter >> isOpener [
	^ true
]

{ #category : #accessing }
GHMLinkNameOpenerDelimiter >> markup [
	^ '['
]

{ #category : #accessing }
GHMLinkNameOpenerDelimiter >> type [
	^ #linkName
]