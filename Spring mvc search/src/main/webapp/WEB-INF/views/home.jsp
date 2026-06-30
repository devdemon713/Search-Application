<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home - springmvcsearch</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.6.0/css/bootstrap.min.css">
    <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" />  
    <script src="<c:url value='/resources/js/s.js'/>"></script>
    
  </head>
  <body>

    <img src="<c:url value='/resources/images/p.jpg'/>" alt="my image" />
    <div class="container">
      <div class="card mx-auto mt-5 bg-primary" style="width: 50%;">
        <div class="card-body py-5">
          <h3 class="text-center text-white" style="text-transform: uppercase;">Search</h3>
          <form action="search" class="mt-3" method="get">
            <div class="form-group">
              <input type="text" name="querybox" placeholder="Enter your keyword" class="form-control" />
            </div>
            <div class="container text-center">
              <button class="btn btn-outline-light">Search</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.min.js"></script>
  </body>
</html>
