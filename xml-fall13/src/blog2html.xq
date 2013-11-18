declare function local:format-date($date) { string($date) } ;

<html>
	<body>
		<table border="1" cellpadding="20">
			{ for $post in //post return
				<tr>
					<td><a href="../img/{ $post/image/@src }.jpg"><img src="../img/{ $post/image/@src }-small.jpg"/></a></td>
					<td>
						<h2> { local:format-date($post/@date) }: { $post/title/text() } </h2>
						<p> { $post/text/text() } </p>
					</td>
				</tr>
			}
		</table>
	</body>
</html>