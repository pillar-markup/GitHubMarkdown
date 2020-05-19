Class {
	#name : #GHMItalicDelimiter,
	#superclass : #GHMAbstractDelimiter,
	#category : #'GithubMarkdown-Model - inline'
}

{ #category : #accessing }
GHMItalicDelimiter >> isCloser [
	^ true
]

{ #category : #accessing }
GHMItalicDelimiter >> isOpener [
	^ true
]

{ #category : #accessing }
GHMItalicDelimiter >> markup [
	^ '_'
]

{ #category : #accessing }
GHMItalicDelimiter >> type [
	^ #italic
]