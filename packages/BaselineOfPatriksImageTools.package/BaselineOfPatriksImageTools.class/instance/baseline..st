as yet unclassified
baseline: spec
	<baseline>
       
	spec for: #pharo  do: [
		spec blessing: #baseline.
		
 		spec 
			package: 'PatriksImageTools'
			with: [ spec repository: 'github://sundbp/PatriksImageTools:master/packages' ].

		spec
			project: 'TilingWindowManager' 
			with: [
				spec
					className: 'ConfigurationOfTilingWindowManager';
					loads: #('default');
					file: 'ConfigurationOfTilingWindowManager';
					versionString: #stable;
					repository: 'http://www.squeaksource.com/TilingWindowManager' ].
		
		spec
			project: 'GlamourCore'
			with: [
				spec
					className: 'ConfigurationOfGlamour';
					loads: #('Core' 'Morphic' );
					file: 'ConfigurationOfGlamour';
					versionString: #stable;
					repository: 'http://www.squeaksource.com/Glamour' ].
	
		spec 
			project: 'Keymapping' 
			with: [
				spec
					className: 'ConfigurationOfKeymapping';
					loads: #('forDeveloper' );
					file: 'ConfigurationOfKeymapping';
					versionString: #stable;
					repository: 'http://www.squeaksource.com/ShortWays' ].
				
		spec 
			project: 'Spotlight'
			with: [
				spec
					className: 'ConfigurationOfSpotlight';
					file: 'ConfigurationOfSpotlight';
					versionString: #stable;
					repository: 'http://www.squeaksource.com/Spotlight' ].


		spec 
			package: 'GT-Inspector' 
			with: [
				spec
					repository: 'http://www.squeaksource.com/glamoroust';
					requires: #('GlamourCore') ].
			
		spec
			group: 'CommanderImage' 
			with: #( 'BaseImage'). " 'Commander'). add this in later.."
				
		spec
			group: 'BaseImage' 
			with: #('TilingWindowManager' 'Keymapping' 'Spotlight' 'PatriksImageTools').
	 ].
"
	spec for: #'pharo1.4.x' do: [
		spec 
			project: 'NautilusWithRBAndOCompletion' 
			with:  [
				spec
					className: 'ConfigurationOfNautilus';
					file: 'ConfigurationOfNautilus';
					versionString: #stable;
					loads: 'release';
					repository: 'http://ss3.gemstone.com/ss/Nautilus' ].
			
		spec 
			group: 'BaseImage' 
			with: #( 'NautilusWithRBAndOCompletion'  ). 
	].
"