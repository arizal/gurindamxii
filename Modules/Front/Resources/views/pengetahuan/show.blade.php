@extends('front::layouts.master')

@section('content')
<main id="main">
    <style>
        

        .post-content{
        background: #f8f8f8;
        border-radius: 4px;
        width: 100%;
        border: 1px solid #f1f2f2;
        overflow: hidden;
        position: relative;
        }

        .post-content img.post-image, video.post-video, .google-maps{
        width: 100%;
        height: auto;
        }

        .post-content .google-maps .map{
        height: 300px;
        }

        .post-content .post-container{
        padding: 20px;
        }

        .post-content .post-container .post-detail{
        margin-left: 65px;
        position: relative;
        margin-top:-50px;
        }

        .post-content .post-container .post-detail .post-text{
        line-height: 24px;
        margin: 0;
        }

        .post-content .post-container .post-detail .reaction{
        position: absolute;
        right: 0;
        top: 0;
        }

        .post-content .post-container .post-detail .post-comment{
        display: inline-flex;
        margin: 10px auto;
        width: 100%;
        }

        .post-content .post-container .post-detail .post-comment img.profile-photo-sm{
        margin-right: 10px;
        }

        .post-content .post-container .post-detail .post-comment .form-control{
        height: 30px;
        border: 1px solid #ccc;
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        margin: 7px 0;
        min-width: 0;
        }

        img.profile-photo-md {
            height: 50px;
            width: 50px;
            border-radius: 50%;
        }

        img.profile-photo-sm {
            height: 40px;
            width: 40px;
            border-radius: 50%;
        }

        .text-green {
            color: #8dc63f;
        }

        .text-red {
            color: #ef4136;
        }

        .following {
            color: #8dc63f;
            font-size: 12px;
            margin-left: 20px;
        }
        .text-muted{
            font-size:12px;
        }

        /* FORM COMMENTS */
        .form-group.fl_icon .icon {
            position: absolute;
            top: 1px;
            left: 16px;
            width: 48px;
            height: 48px;
            background: #f6f6f7;
            color: #b5b8c2;
            text-align: center;
            line-height: 50px;
            -webkit-border-top-left-radius: 2px;
            -webkit-border-bottom-left-radius: 2px;
            -moz-border-radius-topleft: 2px;
            -moz-border-radius-bottomleft: 2px;
            border-top-left-radius: 2px;
            border-bottom-left-radius: 2px;
        }

        .form-group .form-input {
            font-size: 13px;
            line-height: 50px;
            font-weight: 400;
            color: #b4b7c1;
            width: 100%;
            height: 50px;
            padding-left: 20px;
            padding-right: 20px;
            border: 1px solid #edeff2;
            border-radius: 3px;
        }

        .form-group.fl_icon .form-input {
            padding-left: 70px;
        }

        .form-group textarea.form-input {
            height: 150px;
            border-color:#ccc;
        }
        a {
            color: #851a8b;
        }
        a:hover{
            color:#5e1362
        }
    </style>
    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">
            <div style="display:block; float:left;width:100%">
                <ol>
                    <li><a href="{{url("/front")}}">Home</a></li>
                    <li><a href="{{url('/front/materi/')}}">Materi</a></li>
                </ol>
            </div>
            <div class="d-flex justify-content-between align-items-center" style="float:left; text-align:justify">
                <!-- <div style="display:block; float:left;width:100%">
                    <ol>
                        <li><a href="{{url("/front")}}">Home</a></li>
                        <li>Materi</li>
                    </ol>
                </div> -->
                <h2 style="font-weight:bold">{{$data['data']->pgTitle}}</h2>
            </div>
            <div style="display:block; float:left;width:100%;">
                <span class="label label-xlg label-purple arrowed">&nbsp; {{$data['data']->pgType}} &nbsp;</span>
                <span style="font-size:16px;">{{$data['data']->catName}}</span>
            </div>
            <div style="display:block; float:left;width:100%;font-size:11px;">
                {{date("d M Y H:i:s",strtotime($data['data']->pgTimePost))}} WIB
            </div>
        </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page" style="padding:0px">
        <div class="container" style="text-align:justify; ">
            <?php /* <h3>{{$categori_pembelajaran->catPermalink}}</h3>
            <p>Writen By : {{$categori_pembelajaran->catPermalink}}</p>
            <p>Number of Page : {{$categori_pembelajaran->catPermalink}}</p>
            <p>Publisher On : {{$categori_pembelajaran->catPermalink}}</p>
            */ ?>
            
            <?php /*
            <pre style="height:400px;">
            <?php print_r($data) ?>
            </pre> */ ?>
            
            <div class="col-lg-12 col-md-12 d-flex align-items-stretch" style="margin-bottom:10px;  ">
                <span style="font-weight:bold; border-bottom:1px solid #ccc; width:100%"><?php /*Keterangan :*/ ?></span><br>
            </div>
            <div class="row"  style="letter-spacing:0.6px !important;font-size:16px !important;">
                <p>{!!$data['data']->pgDescription!!}</p>
            </div><br>

            <div class="line-divider" <?php #style="border:1px solid #ccc; margin-bottom:20px;" ?>></div>

            <div class="col-lg-12 col-md-12 d-flex align-items-stretch" style="margin-bottom:10px;  ">
                <span style="font-weight:bold; border-bottom:1px solid #ccc; width:100%">Materi :</span><br>
            </div>
            <?php ####################################################################################################?>
            <style type="text/css">
                /*
                body {
                font-size: 62.5%;
                background: #dadada;
                font-family: 'Open Sans', sans-serif;
                line-height: 2;
                padding: 5em;
                }*/

                .accordion {
                font-size: 1rem;
                width: 100%;
                margin: 0 auto;
                border-radius: 5px;
                }

                .accordion-header,
                .accordion-body {
                background: white;
                }

                .accordion-header {
                padding: 1.5em 1.5em;
                background: #151515;/*3F51B5*/
                color: white;
                cursor: pointer;
                font-size: .7em;
                letter-spacing: .1em;
                transition: all .3s;
                text-transform: uppercase;
                }

                .accordion__item {
                    border-bottom: 1px solid #e8a13e;
                }

                .accordion__item .accordion__item {
                border-bottom: 1px solid #e8a13e;
                }

                .accordion-header:hover {
                background: #FFB752;
                position: relative;
                z-index: 5;
                color:black;
                }

                .accordion-body {
                background: #fcfcfc;
                color: #353535;
                display: none;
                }

                .accordion-body__contents {
                /*padding: 1.5em 1.5em;*/
                font-size: .85em;
                }

                .accordion__item.active:last-child .accordion-header {
                border-radius: none;
                }

                .accordion:first-child > .accordion__item > .accordion-header {
                border-bottom: 1px solid transparent;
                }

                .accordion__item > .accordion-header:after {
                content: "\25BC";
                font-family: IonIcons;
                font-size: 1.2em;
                float: right;
                position: relative;
                top: -2px;
                transition: .3s all;
                transform: rotate(0deg);
                }

                .accordion__item.active > .accordion-header:after {
                transform: rotate(-180deg);
                }

                .accordion__item.active .accordion-header {
                background: #FEB652;
                color:black;
                }

                .accordion__item .accordion__item .accordion-header {
                background: #f1f1f1;
                color: #353535;
                }
                .title_check{
                    font-weight:bold; color:#FFB752
                }

                @media screen and (max-width: 1000px) {
                    body {
                        padding: 1em;
                    }
                    
                    .accordion {
                        width: 100%;
                    }
                }
            </style>
            <div class="accordion js-accordion">
                @foreach($data['data']->content as $ctid=>$ctval)
                    <div class="accordion__item js-accordion-item {{$ctid==0?'active':''}} ttl_{{$ctid}}">
                        <div class="accordion-header js-accordion-header">
                            @if($ctval->pcContentType =='document')
                                <i class="fa-solid fa-file-pdf"></i>
                            @elseif($ctval->pcContentType =='video')
                                <i class="fa-solid fa-video"></i>
                            @else
                                <i class="fa-solid fa-newspaper"></i>
                            @endif
                            &nbsp;
                            {{$ctval->pcTitle? $ctval->pcTitle : 'Konten'}} &nbsp;
                            @if($ctval->rcId)
                            <span class="title_check"><i class='fa-solid fa-check'></i>Selesai Dibaca</span>
                            @endif
                        </div> 
                        
                        <div class="accordion-body js-accordion-body">
                            <div class="accordion-body__contents">
                                @if($ctval->pcContentType =='document')
                                    <object data="{{asset('storage/images/assets_pengetahuan/'.$ctval->pcDocuments)}}" type="application/pdf" width="100%" height="900">
                                        <a href="{{asset('storage/images/assets_pengetahuan/'.$ctval->pcDocuments)}}">{{$ctval->pcContentType}}</a>
                                    </object>
                                    <?php /*
                                    <iframe style="height:900px; width: 100%;" src="{{asset('storage/images/assets_pengetahuan/'.$ctval->pcDocuments)}}"></iframe> */ ?>
                                @endif
                                @if($ctval->pcContentType =='video')
                                    <video width="100%" style="aspect-ratio: 16 / 9" controls>
                                        <source src="{{asset('storage/images/assets_pengetahuan/'.$ctval->pcVideo)}}" type="video/mp4">
                                        <source src="movie.ogg" type="video/ogg">
                                            Your browser does not support the video tag.
                                    </video>
                                @endif
                                @if($ctval->pcContentType =='text')
                                    {!!$ctval->pcText!!}
                                @endif

                                @php
                                $already_finish = Modules\Front\Http\Controllers\MateriController::get_beread($ctval->pcPermalink);
                                @endphp
                                @if($already_finish===0)
                                <div style="text-align:right !important; padding-bottom:10px;">
                                    <a href="{{route('materi.post_finish',$ctval->pcPermalink)}}" class="clicks click_{{$ctid}}" title="click_{{$ctid}}">
                                        <button class="btn btn-xs btn-info" <?php /*OnClick="alert('hahha')" */ ?>>
                                            <i class="ace-icon fa fa-bolt bigger-110"></i>
                                                Tandai Selesai
                                            <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                        </button>
                                    </a>
                                </div>
                                @endif
                            </div>
                        </div><!-- end of accordion body -->
                        
                    </div><!-- end of accordion item -->
                @endforeach
            </div><!-- end of accordion -->
                
            <?php ####################################################################################################?>
            <div class="row" style="margin-bottom:25px;">
                <?php /*
                <style type="text/css">
                    .span0 {
                        width: 0;
                        margin-left: 0;
                        display:none;
                    }
                </style>
                <div id="colPush" class="col-xs-6 col-sm-2">
                    <ul>
                        <li>asdas</li>
                        <li>asdas</li>
                        <li>asdas</li>
                        <li>asdas</li>
                    </ul>
                </div> 
                */ ?>
                <?php /*
                <div id="colMain" class="col-xs-6 col-sm-12">
                    @if($data['data']->pcContentType =='document')
                        <object data="{{asset('storage/images/assets_pengetahuan/'.$data['data']->pcDocuments)}}" type="application/pdf" width="100%" height="900">
                            <a href="{{asset('storage/images/assets_pengetahuan/'.$data['data']->pcDocuments)}}">{{$data['data']->pcContentType}}</a>
                        </object>
                    @endif
                    @if($data['data']->pcContentType =='video')
                        <video width="100%" style="aspect-ratio: 16 / 9" controls>
                            <source src="{{asset('storage/images/assets_pengetahuan/'.$data['data']->pcVideo)}}" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                                Your browser does not support the video tag.
                        </video>
                    @endif
                    @if($data['data']->pcContentType =='text')
                        {!!$data['data']->pcText!!}
                    @endif
                </div>
                */ ?>
            </div>
            
            <div class="row">
                <!-- LIKE AND FRIENDS BTN -->
                <!-- <i class="fa-solid fa-list"></i>
                <i class="fa-solid fa-thumbtack"></i>
                <i class="fa-solid fa-heart"></i> -->
                <!-- END LIKE AND FRIENDS BTN -->
                <!-- STAR BUTTON -->
                <div class="col-lg-3 col-xs-12">
                    <style type="text/css">
                        *{
                            margin: 0;
                            padding: 0;
                        }
                        #rate {
                            float: left;
                            height: 46px;
                            padding: 0 10px;
                        }
                        #rate:not(:checked) > input {
                            position:absolute;
                            top:-9999px;
                        }
                        #rate:not(:checked) > label {
                            float:right;
                            width:1em;
                            overflow:hidden;
                            white-space:nowrap;
                            cursor:pointer;
                            font-size:30px;
                            color:#ccc;
                        }
                        #rate:not(:checked) > label:before {
                            content: '★ ';
                        }
                        #rate > input:checked ~ label {
                            color: #ffc700;    
                        }
                        #rate:not(:checked) > label:hover,
                        #rate:not(:checked) > label:hover ~ label {
                            color: #deb217;  
                        }
                        #rate > input:checked + label:hover,
                        #rate > input:checked + label:hover ~ label,
                        #rate > input:checked ~ label:hover,
                        #rate > input:checked ~ label:hover ~ label,
                        #rate > label:hover ~ input:checked ~ label {
                            color: #c59b08;
                        }

                        /* Modified from: https://github.com/mukulkant/Star-rating-using-pure-css */

                        
                    </style>
                    
                    <div class="rate" id="rate" style="display: table-cell;vertical-align: middle">
                        <span class="count_star">4.5(<i class="fa-solid fa-star" style="color:red;"></i>)</span>
                        <input type="radio" class="ratelist" id="star5" name="rate" value="5" onClick="addRating(this,'{{$data['data']->pgPermalink}}');"/>
                        <label for="star5" class="ratelist" title="5">5 stars</label>
                        <input type="radio" class="ratelist" id="star4" name="rate" value="4" onClick="addRating(this,'{{$data['data']->pgPermalink}}');"/>
                        <label for="star4" class="ratelist" title="4">4 stars</label>
                        <input type="radio" class="ratelist" id="star3" name="rate" value="3" onClick="addRating(this,'{{$data['data']->pgPermalink}}');"/>
                        <label for="star3" class="ratelist" title="3">3 stars</label>
                        <input type="radio" class="ratelist" id="star2" name="rate" value="2" onClick="addRating(this,'{{$data['data']->pgPermalink}}');"/>
                        <label for="star2" class="ratelist" title="2">2 stars</label>
                        <input type="radio" class="ratelist" id="star1" name="rate" value="1" onClick="addRating(this,'{{$data['data']->pgPermalink}}');"/>
                        <label for="star1" class="ratelist" title="1">1 star</label>
                        <a href="#" class="reratelist" style="display:none">Ulang beri Rate</a>

                    </div>
                </div>
                <!-- END STAR BUTTON-->
                <div class="col-lg-9 col-xs-12">
                    <!-- SHARE BUTTON-->
                    <?php /*
                    <style type="text/css">
                        i.fab {
                            opacity: 0;
                            font-size: 28px;
                            color: #1F1E1E;
                            will-change: transform;
                            -webkit-transform: scale(.1);
                                    transform: scale(.1);
                            -webkit-transition: all .3s ease;
                            transition: all .3s ease;
                        }

                        .btn_wrap {
                            position: relative;
                            display: -webkit-box;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-box-pack: center;
                                -ms-flex-pack: center;
                                    justify-content: center;
                            -webkit-box-align: center;
                                -ms-flex-align: center;
                                    align-items: center;
                            overflow: hidden;
                            cursor: pointer;
                            width: 240px;
                            height: 45px;
                            background-color: #EEEEED;
                            border-radius: 10px;
                            padding: 0 18px;
                            will-change: transform;
                            -webkit-transition: all .2s ease-in-out;
                            transition: all .2s ease-in-out;
                        }

                        .btn_wrap:hover {
                            -webkit-transform: scale(1.1);
                                    transform: scale(1.1)
                        }

                        span.share_b {
                            position: absolute;
                            z-index: 99;
                            width: 240px;
                            height: 45px;
                            border-radius: 10px;
                            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                            font-size: 20px;
                            text-align: center;
                            line-height: 40px;
                            letter-spacing: 2px;
                            color: #EEEEED;
                            background-color: #ffc107;
                            padding: 0 18px;
                            -webkit-transition: all 1.2s ease;
                            transition: all 1.2s ease;
                            border:1px solid #6D2A71;
                        }

                        .box_c {
                            display: -webkit-box;
                            display: -ms-flexbox;
                            display: flex;
                            -ms-flex-pack: distribute;
                                justify-content: space-around;
                            -webkit-box-align: center;
                                -ms-flex-align: center;
                                    align-items: center;
                            width: 240px;
                            height: 45px;
                            border-radius: 10px;
                            border:1px solid #6D2A71;
                        }

                        .box_c i:nth-of-type(1) {
                                    -webkit-transition-delay: 1.1s;
                                            transition-delay: 1.1s;
                        }

                        .box_c i:nth-of-type(2) {
                                    -webkit-transition-delay: .9s;
                                            transition-delay: .9s;
                        }

                        .box_c i:nth-of-type(3) {
                                    -webkit-transition-delay: .7s;
                                            transition-delay: .7s;
                        }

                        .box_c i:nth-of-type(4) {
                                    -webkit-transition-delay: .4s;
                                            transition-delay: .4s;
                        }

                        .btn_wrap:hover span {
                            -webkit-transition-delay: .05s;
                                    transition-delay: .05s;
                            -webkit-transform: translateX(-280px);
                                    transform: translateX(-280px)
                        }

                        .btn_wrap:hover i {
                            opacity: 1;
                            -webkit-transform: scale(1);
                                    transform: scale(1);
                        }


                        .dr {
                            position: absolute;
                            bottom: 16px; 
                            right: 16px;
                            width:100px;
                        }

                        .fab:hover{
                            background-color:#F1BB53;
                            display:block;
                            padding:4px 10px;
                            border-radius: 5px;
                        }
                    </style>
                    <div class="btn_wrap">
                        <span class="share_b">Share</span>
                        <div class="box_c">
                            <i class="fab fa-facebook-f"></i>
                            <i class="fab fa-twitter"></i>
                            <i class="fab fa-instagram"></i>
                            <i class="fab fa-github"></i>
                        </div>
                    </div>
                    */ ?>

                    <style type="text/css">
                        /*
                        .social-share-icon{
                            
                            -webkit-filter: url(#goo);
                            filter: url(#goo);
                        }
                        .social-share-icon a.a{
                            z-index: 123;
                        }
                        .social-share-icon a{
                            text-decoration: none;
                            color: #212121;
                            height: 45px;
                            width: 45px;
                            border-radius: 100px;
                            display: inline-block;
                            background-color: #FFB752;
                            line-height: 45px;
                            text-align: center;
                            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.2)
                        }
                        .social-share-icon a:hover{
                            background-color: #DDD;
                        }
                        .social-share-icon a i{
                            line-height: inherit;
                        }
                        .social-share-icon a.a1{
                            transform: translateX(245px);
                            transition: all ease-in-out 200ms;
                            opacity: 0;
                        }
                        .social-share-icon a.a2{
                            transform: translateX(196px);
                            transition: all ease-in-out 300ms;
                            opacity: 0;
                        }
                        .social-share-icon a.a3{
                            transform: translateX(147px);
                            transition: all ease-in-out 400ms;
                            opacity: 0;
                        }
                        .social-share-icon a.a4{
                            transform: translateX(98px);
                            transition: all ease-in-out 500ms;
                            opacity: 0;
                        }
                        .social-share-icon a.a5{
                            transform: translateX(49px);
                            transition: all ease-in-out 600ms;
                            opacity: 0;
                        }
                        .social-share-icon:hover a.a1{
                            transform: translateX(0);
                            transition: all ease-in-out 600ms;
                            opacity: 1;
                        }
                        .social-share-icon:hover a.a2{
                            transform: translateX(0);
                            transition: all ease-in-out 500ms;
                            opacity: 1;
                        }
                        .social-share-icon:hover a.a3{
                            transform: translateX(0);
                            transition: all ease-in-out 400ms;
                            opacity: 1;
                        }
                        .social-share-icon:hover a.a4{
                            transform: translateX(0);
                            transition: all ease-in-out 300ms;
                            opacity: 1;
                        }
                        .social-share-icon:hover a.a5{
                            transform: translateX(0);
                            transition: all ease-in-out 200ms;
                            opacity: 1;
                        }
                        */


                        /* asdas*/
                        .mn-social-bottom-c {margin: 10px /*calc(50vh - 23px) calc(50vw - 194px)*/}
                        .mn-social-bottom{
                                border:1px solid #D2D2D2;
                                background:#f5f5f5;
                                width:46px;
                                height:46px;
                                box-sizing:border-box;
                                padding:13px 0 0;
                                color:#ff822d;
                                border-radius:4px;
                                margin:0 2px 15px;
                                transition:all .3s;
                                font-size:19px;
                                display:inline-block;
                                text-align:center;
                                position:relative}
                        .mn-social-bottom:hover{background:#ff822d;color:#fff;top:-3px;cursor: pointer;}
                        #mn-social-bottom-hidden{display:none}
                        .fa-plus {transition:-webkit-transform 0.3s}
                        .fa-plus.mn-social-r {-webkit-transform:rotate(45deg)}
                    </style>
                    <?php /*
                    <div class="social-share-icon" style="backgriund-color:black; margin-left:20px;">
                        <a href="javascript:;" class="option a color-facebook waves-effect waves-light"><i class="fa fa-share-alt"></i></a>
                        <a href="javascript:;" class="option a1 color-facebook waves-effect waves-light"><i class="fa fa-facebook"></i></a>
                        <a href="javascript:;" class="option a2 color-twitter waves-effect waves-light"><i class="fa fa-twitter"></i></a>
                        <a href="javascript:;" class="option a3 color-google-plus waves-effect waves-light"><i class="fa fa-google-plus"></i></a>
                        <a href="javascript:;" class="option a4 color-pinterest waves-effect waves-light"><i class="fa fa-pinterest"></i></a>
                        <a href="javascript:;" class="option a5 color-whatsapp waves-effect waves-light"><i class="fa fa-whatsapp"></i></a>
                    </div>*/  ?>
                    <div class="mn-social-bottom-c">
                        <a class="mn-social-bottom" href="https://www.facebook.com/sharer/sharer.php?u={{url('front/materi/'.$data['data']->pgPermalink)}}" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a class="mn-social-bottom" href="http://twitter.com/share?text={{$data['data']->pgTitle}}&url={{url('front/materi/'.$data['data']->pgPermalink)}}&hashtags=" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a class="mn-social-bottom"><i class="fa fa-linkedin"></i></a>
                        <a class="mn-social-bottom"><i class="fa fa-google-plus"></i></a>
                        <a class="mn-social-bottom"><i class="fa fa-pinterest-p"></i></a>
                        <a class="mn-social-bottom" onclick="$('#mn-social-bottom-hidden').slideToggle();$('.fa-plus').toggleClass('mn-social-r')"><i class="fa fa-plus"></i></a>
                        <div id="mn-social-bottom-hidden">
                            <a class="mn-social-bottom"><i class="fa fa-tumblr"></i></a>
                            <a class="mn-social-bottom"><i class="fa fa-get-pocket"></i></a>
                            <a class="mn-social-bottom"><i class="fa fa-stumbleupon"></i></a>
                            <a class="mn-social-bottom"><i class="fa fa-reddit"></i></a>
                            <a class="mn-social-bottom"><i class="fa fa-envelope"></i></a>
                            <a class="mn-social-bottom"><i class="fa fa-delicious"></i></a>
                        </div>
                    </div>
                    <?php /*
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
                        <defs>
                            <filter id="goo">
                                <feGaussianBlur in="SourceGraphic" stdDeviation="6" result="blur" />
                                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 15 -5" result="goo" />
                                <feBlend in="SourceGraphic" in2="goo" />
                            </filter>
                        </defs>
                    </svg>
                    */ ?>
                </div>    
            </div>
            
            <!-- END SHARE BUTTON-->
            
            <br><br>
            <div class="col-lg-12 col-md-12 d-flex align-items-stretch" style="margin-bottom:10px;  ">
                <span style="font-weight:bold; border-bottom:1px solid #ccc; width:100%">Komentar :</span><br>
            </div>
            <div class="alert alert-danger" role="alert">
                Anda harus Login terlebih dahulu apabila ingin memberikan komentar..
            </div>
            <!-- START COMMENTS -->
            <div class="container">
                <form class="form-block post_comments" action="{{route('materi.post_comments',$data['data']->pgPermalink)}}" method="POST" id="post_comments">
                    @csrf
                    <div class="row">
                        <div class="col-xs-12">									
                            <div class="form-group">
                                <textarea class="form-input summernote" name="komentar" required="" placeholder="Ketikkan Komentar Anda di Sini" style="color:black"></textarea>
                            </div>
                        </div>
                        <div style="text-align:right !important; padding-top:10px;">
                            {!! htmlFormSnippet() !!} 
                        </div>
                        <div style="text-align:right !important; padding-bottom:10px;">
                            <input  class="btn btn-warning pull-right" type="submit" name="comment" value="Kirim Komentar"  style="width:150px; margin-top:10px;">
                        </div>    
                    </div>
                </form>
                <!-- END  FORM KOMENTAR -->
                <div class="row">
                    <div class="col-md-12">
                        @foreach($data['komentar'] as $cmkey=>$cmval)
                        @php
                        $comments = Modules\Front\Http\Controllers\MateriController::get_comments($cmval->cmId);
                        $time_ago = Modules\Front\Http\Controllers\MateriController::time_elapsed_string($cmval->cmAddedDate);
                        @endphp
                        <div class="post-content">
                            <div class="post-container">
                                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="user" class="profile-photo-md pull-left">
                                <div class="post-detail">
                                    <form class="form-block post_comments" action="{{route('materi.post_replycomments',$cmval->cmPermalink)}}" method="POST" id="post_comments">
                                        @csrf
                                        <div class="user-info" style="max-width:100% !important">
                                            <h5><a href="timeline.html" class="profile-link">{{$cmval->name}}</a> <span class="following"><?php #following?></span></h5>
                                            <p class="text-muted">{{date("d M Y",strtotime($cmval->cmAddedDate))}} WIB ({{$time_ago}})</p>
                                        </div>
                                        <?php /*
                                        <div class="reaction">
                                            <a class="btn text-green"><i class="fa fa-thumbs-up"></i> 13</a>
                                            <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                                        </div> */ ?>
                                        <div class="line-divider"></div>
                                        <div class="post-text" id="{{$cmval->cmPermalink}}">
                                            <p>{!!$cmval->cmComment!!} <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                                        </div>
                                        <div class="line-divider"></div>
                                        <div class="list_reply_comments_{{$cmval->cmId}}">
                                            @foreach($comments as $rmkey=>$rmval)
                                            <div class="post-comment"  id="{{$rmval->cmPermalink}}">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" class="profile-photo-sm">
                                                <p>
                                                    <a href="timeline.html" class="profile-link">{{$rmval->name}} </a>
                                                    <i class="em em-laughing"></i>
                                                    {{$rmval->cmComment}}
                                                </p>
                                            </div>
                                            @endforeach
                                        </div>
                                            
                                        <div class="post-comment">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="profile-photo-sm">
                                            <input type="text" name="balas_komentar" class="form-control post_commentsx " placeholder="Balas Komentar di sini">
                                        </div>
                                    </form>    
                                </div>
                            </div>
                        </div>
                        @endforeach 
                    </div>
                </div>
            </div>
            <?php /*
            <pre style="height:200px">
                <?php print_r($data['komentar']) ?>
            </pre> */ ?>
            <!-- KOMENTAR -->

            <div class="col-lg-12 col-md-12 d-flex align-items-stretch" style="margin-bottom:10px;margin-top:20px;  ">
                <span style="font-weight:bold; border-bottom:1px solid #ccc; width:100%">Materi lainnya :</span><br>
            </div>    
            <div class="row" style="padding:5px; background-color:white">
                @foreach($data['materi_lain'] as $makey=>$maval)
                @php
                $time_ago = Modules\Front\Http\Controllers\MateriController::time_elapsed_string($maval->pgTimePost);
                @endphp
                <div class="col-xs-6 col-sm-2" style="margin-bottom:10px;">
                    <img src="{{asset('storage/images/assets_pengetahuan/'.$maval->pgImage)}}" width="100%">
                </div>
                <div class="col-xs-6 col-sm-4" style="margin-bottom:10px;">
                    <div class="row">
                        <div class="col-xs-12">
                            <a href="{{url("front/materi/".$maval->pgPermalink)}}" style="font-size:16px;">{{$maval->pgTitle}}</a>
                        </div>
                        <div class="col-xs-12" style="font-size:14px">
                            <a href="{{url("front/materi/?cari_filter[]=".$maval->catPermalink)}}">{{$maval->catName}}</a>
                        </div>
                        <div class="col-xs-12" style="font-size:14px">
                            {{$maval->pgTimePost}} WIB ({{$time_ago}})
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <?php /*
            <hr>
            @foreach($data['materi_lain'] as $makey=>$maval)
            @php
            $time_ago = Modules\Front\Http\Controllers\MateriController::time_elapsed_string($maval->pgTimePost);
            @endphp
            <div class="col-lg-12 col-md-12 d-flex align-items-stretch" style="margin-bottom:10px;  ">
                <div class="col-lg-3 col-md-12 d-flex align-items-stretch">
                    <img src="{{asset('storage/images/assets_pengetahuan/'.$maval->pgImage)}}" width="100%">
                </div>
                <div class="col-lg-9 col-md-12 padding-left" style="padding-left:20px;">
                    <div class="row">
                        <div class="col-xs-12" style="font-size:18px;"><a href="{{url("front/materi/".$maval->pgPermalink)}}">{{$maval->pgTitle}}</a></div>
                        <div class="col-xs-12">{{$maval->catName}}</div>
                        <div class="col-xs-12" style="font-size:11px;">{{$maval->pgTimePost}} WIB ({{$time_ago}})</div>
                    </div>
                </div>
            </div>
            @endforeach    */ ?>
        </div>
    </section>

</main><!-- End #main -->
@endsection