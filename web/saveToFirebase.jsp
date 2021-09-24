<%-- 
    Document   : saveToFirebase
    Created on : Aug 21, 2021, 4:49:35 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Movie" %>

<!-- get session object movie -->
<% Movie movie = (Movie) session.getAttribute("movie"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.6.3/firebase-database.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use
             https://firebase.google.com/docs/web/setup#available-libraries -->

        <script>
            // Your web app's Firebase configuration
            var firebaseConfig = {

            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
        </script>        
    </head>
    <body>
        <h2>Test Firebase 'Movie' connection</h2>

        <p>
            <input type="button" value="Save" onclick="save_movie();" />
        </p>

        <script>
            var databaseRef = firebase.database().ref('movie/');

            function save_movie() {
                var uid = firebase.database().ref().child('movie').push().key;

                var data = {
                    movie_id: uid,
                    movie_name: '<%= movie.getMovieName() %>',
                    movie_type: '<%= movie.getMovieType() %>',
                    movie_director: '<%= movie.getMovieDirector() %>'               
                }

                var updates = {};
                updates['/movie/' + uid] = data;
                firebase.database().ref().update(updates);

                alert('Movie is created successfully!');
                reload_page();
            }

            function reload_page() {
                window.location.reload();
            }

        </script>
    </body>
</html>
