<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>
<!-- START: header -->
<header role="banner" class="probootstrap-header">
    <div class="container-fluid">
        <a href="<c:url value='/index'/>" class="probootstrap-logo">Format</a>

        <a href="#" class="probootstrap-burger-menu visible-xs" ><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
            <ul class="probootstrap-main-nav">
                <li><a href="/index">Home</a></li>
                <li class="active"><a href="/portfolio">Portfolio</a></li>
                <li><a href="/model">Models</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/contact">Contact</a></li>
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
<section class="probootstrap-intro" style="background-image: url(img/hero_bg_2.jpg);" data-stellar-background-ratio="0.5">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7 probootstrap-intro-text">
                <h1 class="probootstrap-animate">Project Title Here</h1>
                <div class="probootstrap-subtitle probootstrap-animate">
                    <h2>A free html website template for creative agency like you! brought to you by <a href="https://probootstrap.com/" target="_blank">ProBootstrap.com</a></h2>
                </div>
                <p class="watch-intro probootstrap-animate"><a href="https://vimeo.com/45830194" class="popup-vimeo">Watch the video <i class="icon-play2"></i></a></p>
            </div>
        </div>
    </div>
    <a class="probootstrap-scroll-down js-next" href="#next-section">Scroll down <i class="icon-chevron-down"></i></a>
</section>
<!-- END: section -->
<section id="next-section" class="probootstrap-section">
    <div class="container">
        <div class="col-md-3 col-md-push-9">
            <h2>Description</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            <p class="mb20">
                <strong class="probootstrap-black-color">Role:</strong> <br>
                ${work.style} <br>
                Branding <br>
                Mobile Design
            </p>
            <p class="mb50">
                <strong class="probootstrap-black-color">Client</strong> <br>
                Google, Inc.
            </p>

            <p>
                <a href="#" role="button" class="btn btn-primary">Visit Website</a>
            </p>
        </div>
        <c:if test="${!empty work}">
            <div class="col-md-9 col-md-pull-3">
                <p><a href="${work.image}" class="image-popup"><img src="${work.image}" alt="Interior" class="img-responsive"></a></p>

                <c:forEach items="${elseImgList}" var="elseImg">
                    <c:if test="${work.id == elseImg.work.id}">
                        <p><a href="${elseImg.img}" class="image-popup"><img src="${elseImg.img}" alt="Interior" class="img-responsive"></a></p>
                    </c:if>
                </c:forEach>
            </div>
        </c:if>

        <c:if test="${!empty models}">
            <div class="col-md-9 col-md-pull-3">
                <p><a href="${models.modelImg}" class="image-popup"><img src="${models.modelImg}" alt="Interior" class="img-responsive"></a></p>

                <c:forEach items="${elseImgList}" var="elseImg">
                    <c:if test="${models.id == elseImg.modelka.id}">
                        <p><a href="${elseImg.img}" class="image-popup"><img src="${elseImg.img}" alt="Interior" class="img-responsive"></a></p>
                    </c:if>
                </c:forEach>
            </div>
        </c:if>


    </div>
</section>

<!-- START: section -->
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