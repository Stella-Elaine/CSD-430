<%@ page import="java.util.*, com.example.cs430.MovieQueryBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Movies</title>
</head>
<body>
    <h2>🎬 All Movies in the Database</h2>

    <%
        MovieQueryBean movieBean = new MovieQueryBean();
        List<Map<String, String>> movies = movieBean.getAllMovieIdsAndTitles();
    %>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Title</th>
        </tr>
        <%
            for (Map<String, String> movie : movies) {
        %>
        <tr>
            <td><%= movie.get("movie_id") %></td>
            <td><%= movie.get("title") %></td>
        </tr>
        <%
            }
        %>
    </table>

    <br><br>
    <a href="addMovieForm.jsp">➕ Add Another Movie</a>
</body>
</html>
