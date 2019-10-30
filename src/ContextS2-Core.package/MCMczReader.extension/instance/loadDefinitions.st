*contexts2-core-override
loadDefinitions
	"OVERRIDE: snapshots don't really seem to work with partial methods, ignore them"
	definitions := OrderedCollection new.
	"(self zip memberNamed: 'snapshot.bin') ifNotNil:
		[:m | [^ definitions := (DataStream on: m contentStream) next definitions]
			on: Error do: [:fallThrough ]]."
	"otherwise"
	(self zip membersMatching: 'snapshot/*')
		do: [:m | self extractDefinitionsFrom: m].
