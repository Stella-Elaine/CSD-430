<%@ page import="java.util.*, com.example.cs430.MovieQueryBean" %>
<jsp:useBean id="movieBean" class="com.example.cs430.MovieQueryBean" scope="page" />

<%
    String movieId = request.getParameter("movieId");
    Map<String, String> movie = movieBean.getMovieDetailsById(movieId); // updated method name
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Details</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background-color: #f9f9f9; }
        h2 { color: #333; }
        table { border-collapse: collapse; width: 70%; margin: 20px 0; background-color: #fff; }
        th, td { border: 1px solid #ccc; padding: 12px; text-align: left; }
        th { background-color: #f0f0f0; }
        .back-link { margin-top: 20px; display: inline-block; }
    </style>
</head>
<body>

<h2>Movie Details</h2>

<% if (movie != null && !movie.isEmpty()) { %>
    <table>
        <thead>
            <tr>
                <th>Movie ID</th>
                <th>Title</th>
                <th>Director</th>
                <th>Genre</th>
                <th>Release Year</th>
                <th>Rating</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= movie.get("movie_id") %></td>
                <td><%= movie.get("title") %></td>
                <td><%= movie.get("director") %></td>
                <td><%= movie.get("genre") %></td>
                <td><%= movie.get("release_year") %></td>
                <td><%= movie.get("rating") %></td>
            </tr>
        </tbody>
    </table>
<% } else { %>
    <p style="color: red;">No movie found for ID <strong><%= movieId %></strong></p>
<% } %>

<a class="back-link" href="movieForm.jsp">← Back to Movie Selection</a>

</body>
</html>
