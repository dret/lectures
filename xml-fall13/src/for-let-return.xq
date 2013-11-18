<titles>
	{
		for $ref in //reference
			let $title := $ref/title/text()
			return <title> { $title } </title>
	}
</titles>