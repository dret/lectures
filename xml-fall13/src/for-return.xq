<titles>
	{
		for $ref in //reference/title/text()
			return <title> { $ref } </title>
	}
</titles>