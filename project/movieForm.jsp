<%@ page import="java.util.*, com.example.cs430.MovieQueryBean" %>
<jsp:useBean id="movieBean" class="com.example.cs430.MovieQueryBean" scope="page" />

<%
    List<Map<String, String>> movies = movieBean.getAllMovieIdsAndTitles();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select a Movie</title>
</head>
<body>

<h1>Select a Movie</h1>

<form action="movieResult.jsp" method="post">
    <label for="movieId">Movie:</label>
    <select name="movieId" id="movieId">
        <%
            if (movies != null) {
                for (Map<String, String> movie : movies) {
                    String id = movie.get("movie_id");
                    String title = movie.get("title");
        %>
                    <option value="<%= id %>"><%= title %></option>
        <%
                }
            } else {
        %>
                <option disabled>No movies found</option>
        <%
            }
        %>
    </select>
    <br><br>
    <input type="submit" value="Get Details" />
</form>

</body>
</html>
