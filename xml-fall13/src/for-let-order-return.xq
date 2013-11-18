<names>
	{
		for $person in //person
			let $given := $person/givenname/text()
			let $sur := $person/surname/text()
			order by $given ascending, $sur descending
			return <name> { $given, ' ', $sur } </name>
	}
</names>