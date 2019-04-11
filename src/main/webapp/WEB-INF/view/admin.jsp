<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="tmp/header.jsp" %>

<!-- START: header -->
<header role="banner" class="probootstrap-header">
    <div class="container-fluid">
        <a href="/index" class="probootstrap-logo">Yaruna Site</a>

        <a href="#" class="probootstrap-burger-menu visible-xs" ><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
            <ul class="probootstrap-main-nav">
                <li><a href="/index">Home</a></li>
                <li><a href="/portfolio">Portfolio</a></li>
                <li><a href="/model">Models</a></li>
                <li><a href="#" data-toggle="modal" data-target="#myModal">Registration</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/contact">Contact</a></li>
                <li  class="active"><a href="admin">Admin</a></li>
            </ul>
            <div class="extra-text visible-xs">
                <a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
                <h5>Social</h5>
                <ul class="social-buttons">
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-instagram2"></i></a></li>
                </ul>
                <p><small>&copy; Copyright 2019 ProBootstrap:Format. All Rights Reserved.</small></p>
            </div>
        </nav>
    </div>
</header>
<!-- END: header -->

<!-- START: section -->
<section class="probootstrap-intro" style="background-image: url(../../resources/img/hero_bg_2.jpg);" data-stellar-background-ratio="0.5">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7 probootstrap-intro-text">
                <h1 class="probootstrap-animate">It is Admin page</h1>
                <div class="probootstrap-subtitle probootstrap-animate">
                    <h2>Access do not have<a href="https://probootstrap.com/" target="_blank">yaruna.com</a></h2>
                </div>
                <p class="watch-intro probootstrap-animate"><a href="https://vimeo.com/45830194" class="popup-vimeo">Watch the video <i class="icon-play2"></i></a></p>
            </div>
        </div>
    </div>
    <a class="probootstrap-scroll-down js-next" href="#next-section">Scroll down <i class="icon-chevron-down"></i></a>
</section>
<!-- END: header -->

<section class="next-section">
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-8">
                <div class="probootstrap-footer-widget probootstrap-gutter0">
                    <h2 class="text-center">Interior</h2>
                    <c:forEach items="${workList}" var="work">
                        <div class="col-md-4 col-sm-6">
                            <a href="<c:url value='elseImg/${work.id}'/>" class="probootstrap-hover-overlay">
                                <img src="${work.image}" alt="interior" class="img-responsive">
                                <div class="probootstrap-text-overlay">
                                    <h3>${work.title}</h3>
                                    <p>${work.style}</p>
                                        <%--<a href="<c:url value='/portfolioRemove/${work.id}'/>">Delete</a>--%>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-md-4">
                <div class="probootstrap-footer-widget">
                    <div class="col-md-10 col-sm-10 mp-50">
                        <div class="probootstrap-text-overlay">
                            <div class="row mt60">
                                <div class="col-md-8 col-md-offset-2 probootstrap-animate">
                                    <c:url value="/work/add" var="addWork"/>
                                    <form:form action="${addWork}" method="post" modelAttribute="emptyWork" enctype="multipart/form-data">
                                        <div class="form-group">
                                                <%--<label for="title">Title</label>--%>
                                            <form:input path="title" type="text" class="form-control" id="title" name="title" placeholder="InteriorTitle"/>
                                        </div>
                                        <div class="form-group">
                                                <%--<label for="style">Style</label>--%>
                                            <form:input path="style" type="text" class="form-control" id="style" name="style" placeholder="style"/>
                                        </div>
                                        <div class="form-group">
                                                <%--<label for="description">Message</label>--%>
                                            <form:textarea path="description" cols="30" rows="1" class="form-control" id="description" name="description" placeholder="descripyion"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="file" name="image" class="form-control-file" formenctype="multipart/form-data" id="exampleFormControlFile1">
                                        </div>
                                        <form:input type="hidden" path="id" readonly="true"/>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary" id="submit" name="submit" value="Send Message">
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="probootstrap-footer-widget  probootstrap-gutter0">
                    <h2 class="text-center">Models</h2>
                    <c:forEach items="${modelList}" var="models">
                        <div class="col-md-4 col-sm-6">
                            <a href="<c:url value='elseImg/${models.id}'/>" class="probootstrap-hover-overlay">
                                <img src="${models.modelImg}" alt="interior" class="img-responsive">
                                <div class="probootstrap-text-overlay">
                                    <h3>${models.modelTitle}</h3>
                                    <p>${models.modelStyle}</p>
                                        <%--<a href="<c:url value='/portfolioRemove/${work.id}'/>">Delete</a>--%>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col-md-4">
                <div class="probootstrap-footer-widget">
                    <div class="col-md-10 col-sm-8 mp-50">
                        <div class="probootstrap-text-overlay">
                            <div class="row mt60">
                                <div class="col-md-8 col-md-offset-2 probootstrap-animate">
                                    <c:url value="/model/add" var="addModel"/>
                                    <form:form action="${addModel}" method="post" modelAttribute="emptyModel" enctype="multipart/form-data">
                                        <div class="form-group">
                                                <%--<label for="title">Title</label>--%>
                                            <form:input path="modelTitle" type="text" class="form-control" id="title" name="title" placeholder="modelTitle"/>
                                        </div>
                                        <div class="form-group">
                                                <%--<label for="style">Style</label>--%>
                                            <form:input path="modelStyle" type="text" class="form-control" id="style" name="style" placeholder="style"/>
                                        </div>
                                        <div class="form-group">
                                                <%--<label for="description">Message</label>--%>
                                            <form:textarea path="modelDescription" cols="30" rows="1" class="form-control" id="description" name="description" placeholder="descripyion"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="file" name="modelImg" class="form-control-file" formenctype="multipart/form-data" id="exampleFormControlFile1">
                                        </div>
                                        <form:input type="hidden" path="id" readonly="true"/>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary" id="submit" name="submit" value="Send Message">
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<footer class="probootstrap-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <ul class="probootstrap-footer-social">
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-github"></i></a></li>
                    <li><a href="#"><i class="icon-dribbble"></i></a></li>
                    <li><a href="#"><i class="icon-linkedin"></i></a></li>
                    <li><a href="#"><i class="icon-youtube"></i></a></li>
                </ul>
            </div>
        </div>
        <!-- END row -->
        <div class="row">
            <div class="col-md-12 copyright text-center">
                <p>&copy; 2017 <a href="https://probootstrap.com/">ProBootstrap:FineOak</a>. All Rights Reserved. <br> Designed &amp; Developed with <i class="icon icon-heart"></i> by <a href="https://probootstrap.com/">ProBootstrap.com</a></p>
            </div>
        </div>
    </div>
</footer>
<%@include file="tmp/footer.jsp" %>