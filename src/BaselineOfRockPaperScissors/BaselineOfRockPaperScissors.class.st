Class {
	#name : 'BaselineOfRockPaperScissors',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRockPaperScissors',
	#package : 'BaselineOfRockPaperScissors'
}

{ #category : 'baselines' }
BaselineOfRockPaperScissors >> baseline: spec [

	<baseline>
	spec for: #common do: [ "For all Pharo versions"
			spec
				baseline: 'MathRandomNumbers'
				with: [
				spec repository: 'github://PolyMathOrg/random-numbers;v1.x.x/src' ].
			"Pattern to specify the external GitHub dependency, version number 
				and folder where the source code lies"

			spec package: 'RockPaperScissors'.

			spec
				package: 'RockPaperScissors-Test'
				with: [
				spec requires: #( 'RockPaperScissors' 'MathRandomNumbers' ) ].

			"Exclude specific packages from repository"
			spec group: 'Core' with: #( 'RockPaperScissors' ).

			spec group: 'Tests' with: #( 'RockPaperScissors-Tests' ).

			"This will load the Test group, which depends on the test package, which depends on our 
			actual code, so the default load (it is not just a user-defined name. Standard is default) 
			will load everything:
			Metacello new
         		baseline: 'RockPaperScissors';
 				repository: 'github://P-droi/RockPaperScissors:main';
 				load: 'default' 
			Or specify other groups in the load statement"
			spec group: 'default' with: #( 'Tests' ) ]
]
