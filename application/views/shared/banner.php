<script type="text/javascript" src="public/themes/js/sliderBanner.js"></script>
<div class="banner-mat">
    <div class="container">
        <div class="banner">

            <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1280px; height: 650px; overflow: hidden; visibility: hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                    <div style="position:absolute;display:block;background:url('/public/themes/images/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                </div>
                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1280px; height: 700px; overflow: hidden;">
                    <?php
                        foreach($banner as $key => $value){
                            echo '<div data-p="112.50" style="display: none;"><a href="index.php?c=detail&a=index&id='.$value->BOOK_ID.'"><img data-u="image" class="img-responsive" src="public/themes/images/'.$value->BOOK_IMAGE_1.'" /></a></div>';
                        }
                    ?>


                </div>
                <!-- Bullet Navigator -->
                <div data-u="navigator" class="jssorb01" style="bottom:16px;right:16px;">
                    <div data-u="prototype" style="width:12px;height:12px;"></div>
                </div>
                <!-- Arrow Navigator --><span data-u="arrowleft" class="jssora05l" style="top:0px;left:8px;width:40px;height:40px;" data-autocenter="2"></span><span data-u="arrowright" class="jssora05r" style="top:0px;right:8px;width:40px;height:40px;" data-autocenter="2"></span><a href="#" style="display:none">Slideshow Maker</a></div>
            <div class="clearfix"></div>
            <script>
                jssor_1_slider_init();
            </script>

        </div>

        <!-- //slider-->
    </div>
</div>
