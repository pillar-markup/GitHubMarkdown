"
I'm a delimiter for math inline environment.
"
Class {
	#name : #GHMMathDelimiter,
	#superclass : #GHMAbstractDelimiter,
	#category : #'GithubMarkdown-Model - inline'
}

{ #category : #accessing }
GHMMathDelimiter class >> isCloser [
	^ true
]

{ #category : #accessing }
GHMMathDelimiter class >> markup [
	^ '$'
]

{ #category : #accessing }
GHMMathDelimiter >> isOpener [
	^ true
]

{ #category : #accessing }
GHMMathDelimiter >> type [
	^ #math
]
