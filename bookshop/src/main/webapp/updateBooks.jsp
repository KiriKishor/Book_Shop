<%@ page import="java.util.*, dao.BookDAO, bean.BookBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Books</title>
    <style>
        body { font-family: Arial; padding: 30px; background: #f4f4f4; }
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        th { background-color: #007bff; color: white; }
        input[type="text"], input[type="number"] {
            width: 90%;
            padding: 5px;
        }
        select { padding: 5px; }
        button {
            background: #28a745;
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2 style="text-align:center;">Update Book Details</h2>
<%
    BookDAO dao = new BookDAO();
    List<BookBean> books = dao.getAllBooks();
%>

<form action="UpdateBookServlet" method="post">
    <table>
        <tr>
            <th>ID</th>
            <th>Book Name</th>
            <th>Price</th>
            <th>Book Type</th>
            <th>Action</th>
        </tr>
        <%
            for (BookBean book : books) {
        %>
        <tr>
            <td><%= book.getId() %></td>
            <td>
                <input type="text" name="name_<%= book.getId() %>" value="<%= book.getName() %>">
            </td>
            <td>
                <input type="number" step="0.01" name="price_<%= book.getId() %>" value="<%= book.getPrice() %>">
            </td>
            <td>
                <select name="book_type_<%= book.getId() %>">
                    <option <%= book.getBookType().equals("school book") ? "selected" : "" %>>School book</option>
                    <option <%= book.getBookType().equals("story book") ? "selected" : "" %>>Story book</option>
                    <option <%= book.getBookType().equals("children book") ? "selected" : "" %>>Children book</option>
                    <option <%= book.getBookType().equals("others") ? "selected" : "" %>>Others</option>
                </select>
            </td>
            <td>
                <button type="submit" name="updateId" value="<%= book.getId() %>">Update</button>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</form>
</body>
</html>
