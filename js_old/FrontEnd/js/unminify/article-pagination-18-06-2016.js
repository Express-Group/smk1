(function($){
    $.fn.extend({ 
        MyPagination: function(options) {
            var defaults = {
                height: 400,
                fadeSpeed: 400
            };
            var options = $.extend(defaults, options);

            //Creating a reference to the object
            var objContent = $(this);

            // other inner variables
            var fullPages = new Array();
            var subPages = new Array();
            var height = 0;
            var lastPage = 1;
            var paginatePages;
            // initialization function
            init = function() {
                objContent.children().each(function(i){
                    if ((height + this.clientHeight > options.height) && ((height + this.clientHeight) > options.height + 400)) {
                        fullPages.push(subPages);
                        subPages = new Array();
                        height = 0;
                    }
                    height += this.clientHeight;
                    subPages.push(this);
                });

                if (height > 0) {
                    fullPages.push(subPages);
                }

                // wrapping each full page
                $(fullPages).wrap("<div class='page' style=\"width:100%;float:left;\"></div>");

                // hiding all wrapped pages
                objContent.children().hide();

                // making collection of pages for pagination
                paginatePages = objContent.children();

				// show first page
                showPage(lastPage);

                // draw controls
				if($(paginatePages).length>1){
                showPagination($(paginatePages).length);
			     }else{
				 //$( '.pagination' ).hide( );
				  $( '#article_pagination' ).hide( );
				 }
            };

            // update counter function
            updateCounter = function(i) {
				$('#current_page').val(i);
				if(!$('#current_page').length){
				$('<input>').attr({type: 'hidden',id: 'current_page',name: 'current_page',value: 1	}).appendTo('#content');
				$('<input>').attr({type: 'hidden',id: 'total_page',name: 'total_page',value: $(paginatePages).length}).appendTo('#content');
				}
				$( '.pagination li a.active' ).removeClass( 'active' );
				$('.pagination li a:eq('+i+')').addClass('active');
				$( '.pagination li a.prevnext ' ).removeClass( 'active' );
				var curr_page = $('#current_page').val();
				var tot_page = $('#total_page').val();
				if(curr_page==1){
				$( '#prev' ).addClass( 'element-disabled' );
				$( '#next' ).removeClass( 'element-disabled' );
				}else if(curr_page==tot_page && tot_page!='undefined'){
				$( '#next' ).addClass( 'element-disabled' );
				$( '#prev' ).removeClass( 'element-disabled' );
				}else{
				$( '.pagination li a.prevnext ' ).removeClass( 'element-disabled' );
				}
				
				var live_url = content_url;
				var article_url = live_url.split('.html');
				localStorage.setItem("articleurl", article_url[0]);
				//localStorage.removeItem("articleurl");
				var parseArticleurl = localStorage.getItem("articleurl");
				if(tot_page!=1 && (content_from=="live")){
				window.history.pushState('', '', parseArticleurl+'--'+i+'.html');
				hit_page_views();
				}
				
				var body = $('html, body');
				body.animate({
				  scrollTop:0
				}, 'slow', 
				function(){} // callback method use this space how you like 
			);
			//update content height
			$('#content').height($('.page').eq(i-1).height());
            };

            // show page function
            showPage = function(page) {
                i = page - 1; 
                if (paginatePages[i]) {
                   if($('#current_page').val()!=page){
                    // hiding old page, display new one
                    $(paginatePages[lastPage]).fadeOut(options.fadeSpeed);
                    lastPage = i;
                    $(paginatePages[lastPage]).fadeIn(options.fadeSpeed);
                    // and updating counter
                    updateCounter(page);
						}
                }
            };

            // show pagination function (draw switching numbers)
			 showPagination = function(numPages) {
			 var controlElements = '';
			 var pageCount = 1;
            for (var pageCount=1;pageCount<=numPages;pageCount++) {
				 if(pageCount==1){ 
                controlElements += '<li data-page="1" class="tp-page"><a onclick="showPage(1);" class="active" href="javascript:;">1</a></li>';
						}else{
						controlElements += $('<li>')
                        .attr('data-page',''+(pageCount))
                        .html('<a href="javascript:;"  onclick="showPage(' + pageCount + ');">'+(pageCount)+'</a>')
                        .addClass('tp-page') 
                        //.addClass( (pageCount==1) ? 'active' : '')
                        .prop("outerHTML");
						}
            }
            $('.pagination li:first-child').after(controlElements);
			 var page_Index = (parseInt(page_Indexid) <= numPages)?  parseInt(page_Indexid) : 1;
			 $('#article_pagination').twbsPagination({
				totalPages: numPages,
				startPage: parseInt(page_Index),
				visiblePages: 5,
				first: 'First',
				prev: 'Previous',
				next: 'Next',
				last: 'Last',
				initiateStartPageClick: true,
				onPageClick: function (event, page) {
			showPage(page);
			}
          });
           };
            // perform initialization
            init();

            // and binding 2 events - on clicking to Prev
            $('.pagination #prev').click(function() {
                showPage(lastPage);
            });
            // and Next
            $('.pagination #next').click(function() {
                showPage(lastPage+2);
            });

        }
    });
})(jQuery);
function hit_page_views() {
    try {
        var theUrl = document.location;
        if (typeof(ga) != undefined) {
           // ga('create', 'UA-2311935-30', 'auto');
            ga('send', 'pageview', location.pathname);
        }
    } catch (err) {}
}
// custom initialization
jQuery(window).load(function() {
	if(page_Indexid!="no_pagination"){
    $('#content').MyPagination({height: 900, fadeSpeed: 400});
	 $('#content').css("height", "900");
	}
     $('#content').height($('.page').eq(0).height());
	 showPage(page_Indexid);
});