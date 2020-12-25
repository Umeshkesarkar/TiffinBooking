
<html>
<script>
	sessionStorage.clear();
	window.location.href='index.html';
	</script>
	</html>
	<?php
session_start();
session_destroy();

?>