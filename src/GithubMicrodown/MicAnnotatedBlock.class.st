"
I'm a block starting with !!text paragraph (@@note @@important in Pillar)

!!note this is important so I used exclamatation mark.

For now I do not accept top level blocks.

Since there is no need to end the block with the marker it is not that nice to have it as subclass of SameStartEndMarkupDelimitedBlock.

"
Class {
	#name : #MicAnnotatedBlock,
	#superclass : #GHMAnnotatedBlock,
	#category : #'GithubMicrodown-Core'
}

{ #category : #testing }
MicAnnotatedBlock >> addLineAndReturnNextNode: line [
	"line is assumed to be of the form '@@label some text
	
	'
	"

	isClosed
		ifTrue: [ ^ self ].
	label 
		ifNil: [ 
			| indexOfFirstSpace |
			indexOfFirstSpace := line indexOf: Character space.
			label := line copyFrom: self lineMarkup size + 1 to: indexOfFirstSpace - 1.
			body := (line copyFrom: indexOfFirstSpace + 1 to: line size) trim ]
		ifNotNil: [ body := body , String cr , line ]
]

{ #category : #testing }
MicAnnotatedBlock >> canConsumeLine: line [
	"return if this block can consume line"

	"it can be dangerous but let us try"
	^ line isNotEmpty 
]

{ #category : #accessing }
MicAnnotatedBlock >> label [
	^ label
]

{ #category : #testing }
MicAnnotatedBlock >> lineMarkup [

	^ parser annotatedParagraphMarkup
]

{ #category : #accessing }
MicAnnotatedBlock >> text [ 

	^ self body
]
