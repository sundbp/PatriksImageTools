private
shouldSetUserAndPassword: aRepo

	^ (aRepo isKindOf: MCHttpRepository) and: [ (self isSS: aRepo) or: [self isSS3: aRepo ] ]
