<%@ page import="com.example.cs430.MovieQueryBean" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Movie</title>
</head>
<body>
    <h2>This page loaded correctly 🎬</h2>
</body>
</html> 

<html>
<head>
    <title>Add New Movie</title>
</head>
<body>
    <h1>Add a New Movie</h1>
    <p>Use the form below to add a new movie record to the database.</p>

    <form method="post" action="addMovieForm.jsp">
        <label for="title">Title:</label><br />
        <input type="text" name="title" required /><br /><br />

        <label for="director">Director:</label><br />
        <input type="text" name="director" required /><br /><br />

        <label for="genre">Genre:</label><br />
        <input type="text" name="genre" required /><br /><br />

        <label for="release_year">Release Year:</label><br />
        <input type="number" name="release_year" required /><br /><br />

        <label for="rating">Rating (0.0 - 5.0):</label><br />
        <input type="number" name="rating" step="0.1" min="0" max="5" required /><br /><br />

        <input type="submit" value="Add Movie" />
    </form>

    <hr />

<%
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String genre = request.getParameter("genre");
    String releaseYearStr = request.getParameter("release_year");
    String ratingStr = request.getParameter("rating");

    if (title != null && director != null && genre != null && releaseYearStr != null && ratingStr != null) {
        try {
            int releaseYear = Integer.parseInt(releaseYearStr);
            double rating = Double.parseDouble(ratingStr);

            MovieQueryBean movieBean = new MovieQueryBean();
            boolean success = movieBean.insertMovie(title, director, genre, releaseYear, rating);

            if (success) {
%>
                <h2>Movie Added Successfully!</h2>
<%
            } else {
%>
                <h2 style="color: red;">Failed to Add Movie. Check server logs.</h2>
<%
            }
        } catch (Exception e) {
%>
            <h2 style="color: red;">Invalid input. Please try again.</h2>
<%
            e.printStackTrace();
        }
    }
%>

</body>
</html>
