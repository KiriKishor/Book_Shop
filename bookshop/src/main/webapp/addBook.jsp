<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7f8;
            padding: 20px;
        }
        form {
            width: 400px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
        }
        input[type="text"], input[type="number"], input[type="file"], button {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
        }
        .message {
            text-align: center;
            color: green;
        }
        .error {
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
    <form action="AddBookServlet" method="post" enctype="multipart/form-data">
        <h2>Add New Book</h2>
        <div class="message">${message}</div>
        <div class="error">${error}</div>

        <input type="text" name="name" placeholder="Book name" required>
        <input type="number" step="0.01" name="price" placeholder="Price" required>
        <label>Book Type:</label>
<select name="book_type" required>
    <option value="School Book">School Book</option>
    <option value="Story Book">Story Book</option>
    <option value="Children Book">Children Book</option>
    <option value="Others">Others</option>
</select><br><br>
        
        <input type="file" name="image" accept="image/*" required>

        <button type="submit">Add Book</button>
    </form>
</body>
</html>
