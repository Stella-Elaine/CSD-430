<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.cs430.StellaMoviesBean" %>
<jsp:useBean id="movie" class="com.example.cs430.StellaMoviesBean" scope="request" />
<jsp:setProperty name="movie" property="movieId" value="1" />
<jsp:setProperty name="movie" property="title" value="Inception" />
<jsp:setProperty name="movie" property="director" value="Christopher Nolan" />
<jsp:setProperty name="movie" property="genre" value="Science Fiction" />
<jsp:setProperty name="movie" property="releaseYear" value="2010" />
<jsp:setProperty name="movie" property="rating" value="8.8" />


<html>
<head><title>Bean Display</title></head>
<body>
  <h2>Movie Details</h2>
  <p><strong>ID:</strong> <jsp:getProperty name="movie" property="movieId" /></p>
  <p><strong>Title:</strong> <jsp:getProperty name="movie" property="title" /></p>
  <p><strong>Director:</strong> <jsp:getProperty name="movie" property="director" /></p>
  <p><strong>ID:</strong> <jsp:getProperty name="movie" property="movieId" /></p>
<p><strong>Title:</strong> <jsp:getProperty name="movie" property="title" /></p>
<p><strong>Director:</strong> <jsp:getProperty name="movie" property="director" /></p>
<p><strong>Genre:</strong> <jsp:getProperty name="movie" property="genre" /></p>
<p><strong>Release Year:</strong> <jsp:getProperty name="movie" property="releaseYear" /></p>
<p><strong>Rating:</strong> <jsp:getProperty name="movie" property="rating" /></p>

</body>
</html>
