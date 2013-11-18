<titles>
	{
		for $ref in //reference
			where starts-with($ref/date/@value, '2000')
			return $ref/title
	}
</titles>