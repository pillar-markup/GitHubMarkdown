"
I am a plain text paragraph.

If am divided from other paragraphs by either a blank line, or one of the other markups.
"
Class {
	#name : #GHMParagraphBlock,
	#superclass : #GHMAbstractBlock,
	#instVars : [
		'text'
	],
	#category : #'GithubMarkdown-Model'
}

{ #category : #'instance creation' }
GHMParagraphBlock class >> opensBy: aLine [
	^ aLine notEmpty 
]

{ #category : #parsing }
GHMParagraphBlock >> addLineAndReturnNextNode: line [
	"add line to this node. 
	Notice, the action is allowed to create new nodes in the block tree.
	Returns the node to handle next line - typically self."

	text := text
		ifNil: [ line trim ]
		ifNotNil: [ text , String cr , line trim ].
	^ self
]

{ #category : #private }
GHMParagraphBlock >> asUnindented: line [
	"return a line where the indentation to my indentation level has been removed"

	^ line copyFrom: self indent +1 to: line size
]

{ #category : #parsing }
GHMParagraphBlock >> canConsumeLine: line [
	"A paragraph is closed by an empty line, "

	| unIndented |
	line ifEmpty: [ ^ false ].
	(self isRightlyIndented: line)
		ifFalse: [ ^ false ].
	unIndented := self asUnindented: line.
	^ (self blockStarterClassFrom: unIndented) = self class
]

{ #category : #public }
GHMParagraphBlock >> contents [ 
	^super contents , '[ ', self text, ' ]'
]

{ #category : #private }
GHMParagraphBlock >> isRightlyIndented: line [
	"test if line has the appropriate number of spaces at first"

	self indent = 0
		ifTrue: [ ^ true ].
	^ line beginsWith: (' ' repeat: self indent)
]

{ #category : #accessing }
GHMParagraphBlock >> text [
	^ text
]
