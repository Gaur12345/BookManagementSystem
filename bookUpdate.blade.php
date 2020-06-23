<html>
	<head></head>
	
	
<body>
		
<div class="login-box"  style="margin-left:500px">

<h1>Add Book Details</h1>
<form  action="BookDetailsupdate" method="post">
<p>Book Name</p>
<input type="text" name="bname" id="uname" placeholder="Enter the bookname " autocomplete="off" required />

<!--<input type="text" name="cgender" id="gender" placeholder="Enter the Gender " autocomplete="off" required /> -->
<p>Author Name</p>
<input type="text" name="authorName" id="email" placeholder="Enter book Author Name" autocomplete="on" required />

<p id="p2" >Price of Book</p>
<input type="number" name="bookPrice"  placeholder="Enter the book price "  autocomplete="off" required />
<p id="p3">DCC no </p>
<input type="text" name="bookdcc" placeholder="Enter book Dcc no"  required /><br>

<br><input type="submit"  value="Add Book"  id="submit" /><br/>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="index.html">Logout</a>   
</form>


</div>
	
	
	</body>


</html>