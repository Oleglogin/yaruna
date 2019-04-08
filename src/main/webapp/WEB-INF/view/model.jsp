<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>
<!-- START: header -->
<header role="banner" class="probootstrap-header">
    <div class="container-fluid">
        <a href="index" class="probootstrap-logo">Yaruna Site></a>

        <a href="#" class="probootstrap-burger-menu visible-xs" ><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
            <ul class="probootstrap-main-nav">
                <li><a href="index">Home</a></li>
                <li><a href="portfolio">Portfolio</a></li>
                <li class="active"><a href="model">Models</a></li>
                <li><a href="about">About</a></li>
                <li><a href="contact">Contact</a></li>
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
                <h1 class="probootstrap-animate">I am creative girl based in Lviv and New York</h1>
                <div class="probootstrap-subtitle probootstrap-animate">
                    <h2>something write to be beautiful, very expensive, glamour and something else. <a href="https://probootstrap.com/" target="_blank">yaruna.com</a></h2>
                </div>
                <p class="watch-intro probootstrap-animate"><a href="https://vimeo.com/45830194" class="popup-vimeo">Watch the video <i class="icon-play2"></i></a></p>
            </div>
        </div>
    </div>
    <a class="probootstrap-scroll-down js-next" href="#next-section">Scroll down <i class="icon-chevron-down"></i></a>
</section>
<!-- END: section -->
<section id="next-section">
    <div class="container-fluid">
        <div class="row probootstrap-gutter0">
            <c:forEach items="${modelList}" var="model">
                <div class="col-md-4 col-sm-6">
                    <a href="<c:url value='portfolio-single/${model.id}'/>" class="probootstrap-hover-overlay">
                        <img src="${model.modelImg}" alt="Free Bootstrap Template by ProBootstrap.com" class="img-responsive">
                        <div class="probootstrap-text-overlay">
                            <h3>${model.modelTitle}</h3>
                            <p>${model.modelStyle}</p>
                                <%--<a href="<c:url value='/modelRemove/${work.id}'/>">Delete</a>--%>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<section class="probootstrap-section probootstrap-section-colored">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-8 col-md-offset-2 mb30 section-heading probootstrap-animate">
                <h2>Let's Work Together</h2>
                <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4 probootstrap-animate">
                <p class="text-center">
                    <a href="#" class="btn btn-ghost btn-ghost-white btn-lg btn-block" role="button">Contact Us</a>
                </p>
            </div>
        </div>
    </div>
</section>
<!-- END: section -->
<!-- START: footer -->
<footer role="contentinfo" class="probootstrap-footer">
    <div class="container">
        <div class="row">

            <div class="row mt40">
                <div class="col-md-12 text-center">
                    <p>
                        <small>&copy; 2019 <a href="https://probootstrap.com/" target="_blank">ProBootstrap:Format</a>. All Rights Reserved. <br> Designed &amp; Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap.com</a> Demo Images: Unsplash</small><br>
                        <a href="#" class="js-backtotop">Back to top</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- END: footer -->


<%@include file="tmp/footer.jsp" %>