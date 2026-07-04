Class {
	#name : 'Paper',
	#superclass : 'Object',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> playAgainst: aHand [
	^ aHand playAgainstPaper: self.
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstRock: aHand [

	^ self
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstScissors: aScissors [ 
	^ aScissors.
]
