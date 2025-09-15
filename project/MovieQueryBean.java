package com.example.cs430;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

public class MovieQueryBean {
    private String dbUrl = "jdbc:mysql://localhost:3306/CSD430";
    private String dbUser = "student1";
    private String dbPassword = "pass";

    private int movieId;
    private String title;
    private String director;
    private String genre;
    private int releaseYear;

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        loadMovieDetails();
        return title;
    }

    public String getDirector() {
        loadMovieDetails();
        return director;
    }

    public String getGenre() {
        loadMovieDetails();
        return genre;
    }

    public int getReleaseYear() {
        loadMovieDetails();
        return releaseYear;
    }

    private void loadMovieDetails() {
        try (Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM stella_movies_data WHERE movie_id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, movieId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                title = rs.getString("title");
                director = rs.getString("director");
                genre = rs.getString("genre");
                releaseYear = rs.getInt("release_year");
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Map<String, String> getMovieById(String id) {
        Map<String, String> movie = new HashMap<>();

        try (Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String query = "SELECT * FROM stella_movies_data WHERE movie_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                movie.put("movie_id", rs.getString("movie_id"));
                movie.put("title", rs.getString("title"));
                movie.put("director", rs.getString("director"));
                movie.put("genre", rs.getString("genre"));
                movie.put("release_year", rs.getString("release_year"));
                movie.put("rating", rs.getString("rating"));
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movie;
    }

    public List<Map<String, String>> getAllMovieIdsAndTitles() {
        List<Map<String, String>> movies = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT movie_id, title FROM stella_movies_data";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Map<String, String> movie = new HashMap<>();
                movie.put("movie_id", rs.getString("movie_id"));
                movie.put("title", rs.getString("title"));
                movies.add(movie);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movies;
    }

    public boolean insertMovie(String title, String director, String genre, int releaseYear, double rating) {
    boolean isInserted = false;

    try (Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
        String sql = "INSERT INTO stella_movies_data (title, director, genre, release_year, rating) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, title);
        stmt.setString(2, director);
        stmt.setString(3, genre);
        stmt.setInt(4, releaseYear);
        stmt.setDouble(5, rating);

        int rows = stmt.executeUpdate();
        if (rows > 0) {
            isInserted = true;
        }

        stmt.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return isInserted;
}

}
