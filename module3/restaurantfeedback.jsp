<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%-- feedbackResult.jsp --%>

<%-- 1) Read parameters (scriptlet) --%>
<%
  request.setCharacterEncoding("UTF-8");

  String name       = request.getParameter("name");
  String email      = request.getParameter("email");
  String visitDate  = request.getParameter("visitDate");
  String mealType   = request.getParameter("mealType");
  String rating     = request.getParameter("rating");
  String recommend  = request.getParameter("recommend"); // "yes" or null
  String comments   = request.getParameter("comments");

  String recommendDisplay =
      (recommend != null && recommend.equals("yes")) ? "Yes" : "No";
%>

<%-- 2) Declare helper method(s) (declaration block) --%>
<%!
  // Minimal HTML escaper to safely render user input
  private static String esc(String s) {
    if (s == null) return "";
    return s
      .replace("&", "&amp;")
      .replace("<", "&lt;")
      .replace(">", "&gt;")
      .replace("\"", "&quot;")
      .replace("'", "&#x27;");
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Submitted Feedback — Review</title>
  <link rel="stylesheet" href="styles/main.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>

  <header class="site-header">
    <h1>Thank You for Your Feedback</h1>
    <p class="subtitle">
      Below is a summary of what you submitted. This page demonstrates
      JSP scriptlets (Java logic) with all HTML outside the scriptlets.
    </p>
  </header>

  <section class="description">
    <h2>Submission Details</h2>
    <p>
      Your responses are presented in a tabular format for clarity. Field
      definitions: <em>Name</em> (your full name), <em>Email</em> (contact address),
      <em>Date of Visit</em> (when you dined), <em>Meal Type</em> (service window),
      <em>Rating</em> (1–5), <em>Recommend</em> (willingness to refer), and
      <em>Comments</em> (optional qualitative feedback).
    </p>
  </section>

  <main>
    <table class="data-table">
      <thead>
        <tr>
          <th scope="col">Field</th>
          <th scope="col">Value</th>
        </tr>
      </thead>
      <tbody>
        <tr><td>Name</td><td><%= esc(name) %></td></tr>
        <tr><td>Email</td><td><%= esc(email) %></td></tr>
        <tr><td>Date of Visit</td><td><%= esc(visitDate) %></td></tr>
        <tr><td>Meal Type</td><td><%= esc(mealType) %></td></tr>
        <tr><td>Overall Rating (1–5)</td><td><%= esc(rating) %></td></tr>
        <tr><td>Recommend?</td><td><%= recommendDisplay %></td></tr>
        <tr>
          <td>Comments</td>
          <td><pre class="pre-wrap"><%= esc(comments) %></pre></td>
        </tr>
      </tbody>
    </table>
  </main>

  <footer class="site-footer">
    <p>display table</p>
  </footer>

</body>
</html>
