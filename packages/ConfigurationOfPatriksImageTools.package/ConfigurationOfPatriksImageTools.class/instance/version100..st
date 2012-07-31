versions
version100: spec
	<version: '1.0.0'>
	spec
		for: #common
		do: [
			spec blessing: #'release'.
			spec description: 'First cut at managing a porject in filetree+git'.
			spec
				baseline: 'PatriksImageTools' with: [ spec repository: 'github://sundbp/PatriksImageTools:master/packages' ];
				import: 'PatriksImageTools' ]
