<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
   <link rel="stylesheet" href="/css/coordinationBoard.css">
</head>
<body>
   <%@ include file="../header.jsp" %>
    
    <main style="margin-top:8rem;" class="container">
        <div class="row row-cols-1 row-cols-md-4">
        <c:foreach items="${resultMap}" var="item">
            <a href="/coordination/view" class="col mb-3">
                <div class="card border-light h-100">
                    <img src="/refer/coordination/model1.jpg" class="card-image" alt="">
                    <div class="card-body">
                        <div class="card-title">제목(링크연결됨)</div>
                        <div class="card-text">등록자</div>
                        <div class="card-text-viewcount">조회수 : </div>
                    </div>
                </div>
            </a>
        </c:foreach>
        </div>
        <hr />
        <div class="text-end">
        <form action="/coordination/write_coordination">
          <button class="btn btn-dark">
            게시글 작성
          </button>
        </form>
        </div>
        <!-- pagination -->
        <div class="container d-flex justify-content-center">
            <nav aria-label="Page navigation example" class="">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
        </div>
    </main>

<%@ include file="../footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
    crossorigin="anonymous"></script>
</body>
</html>