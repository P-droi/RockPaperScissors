Class {
	#name : 'RockPaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Test',
	#package : 'RockPaperScissors-Test'
}

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperAgainstScissors [

	| paper scissors |
	
	paper := Paper new.
	scissors := Scissors new.
	
	self assert: (paper playAgainst: scissors) equals: scissors.
	self assert: (scissors playAgainst: paper) equals: scissors.
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockAgainstPaper [

	| rock paper |
	
	rock := Rock new.
	paper := Paper new.
	
	self assert: (rock playAgainst: paper) equals: paper.
	self assert: (paper playAgainst: rock) equals: paper.
	
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockAgainstScissors [

	| rock scissors |
	
	rock := Rock new.
	scissors := Scissors new.
	
	self assert: (rock playAgainst: scissors) equals: rock.
	self assert: (scissors playAgainst: rock) equals: rock.
	
]
