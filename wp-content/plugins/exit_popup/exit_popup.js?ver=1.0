        jQuery.noConflict();
        jQuery( document ).ready(function( $ ) {   
          $("#exitpopbtn").click(function(event) {

            // initiate some vals
            var exitpopEmailAddress = $("#exitpop").find("input[name='e']").val();

            function exitpopValidEmail(email) {
                // TESTING!
                // return 1;
                return email.match(/^([\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)$/i);
            }

            if (exitpopValidEmail(exitpopEmailAddress)) {

                // remove any error states
                $("#exitpopbademail").css("display", "none");
                $("#exitpopfail").css("display", "none");
                $("#exitpopinput").css("border", "grey 1px solid");

                // user details
                var exitpopd = new Date();
                var exitpopFoot = String(exitpopd.getTimezoneOffset());
                exitpopFoot += String(screen.width) + String(screen.height);
                if (navigator.plugins) {
                    for (i = 0; i < navigator.plugins.length; i++) {
                        exitpopFoot += String(navigator.plugins[i].name);
                    }
                }
                exitpopFoot = exitpopHashCode(exitpopFoot);

                // show sending text on button
                $("#exitpopbtn").html('<img src="wp-content/plugins/exit_popup/images/ajax-loader.gif" width=22 height=16 style="border:none; margin:0; padding:0";>Sending');
                
            	var data = {
            			action: 'exit_popup_do_ajax_request',
            			e: exitpopEmailAddress,
            			u: exitpopFoot
            	}; 


                // Send the data using post
                var exitpopPosting = $.post(ajaxurl, data);
                exitpopPosting.done(function(data) {
                    // console.log("Data Loaded: " + data);
					
                    if (data === 'OK' || data === 'dup') {
                        $("#initialcontent").css("display", "none");
                        if(data === 'dup'){
                           $("#dup").css("display", "block"); 
                        } else {
                            $("#confirmation").css("display", "block");
                        }
                        exitpopCreateCookie("exitpopsuccess", 1, 30);
                    } else { // timeout or some other error
                        $("#exitpopfail").css("display", "block");
                        $("#exitpopinput").css("border", "red 2px solid");
                        $("#exitpopbtn").html("Please try again");
                    }
                });
                exitpopPosting.fail(function() {
                    $("#exitpopfail").css("display", "block");
                    $("#exitpopinput").css("border", "red 2px solid");
                    $("#exitpopbtn").html("Please try again");
                });

            } else { // invalid email
                $("#exitpopbademail").css("display", "block");
                $("#exitpopinput").css("border", "red 2px solid");
                $("#exitpopbtn").html("Please try again");
            }

        });

        // close btn function
        $('#exitpopclose').click(function() {
            $('#exitpop').animate({
                top: -450
            }, 150, function() {
                // Animation complete.
                exitpopCreateCookie("exitpopclose", 1, 30);
                $("#exitpop").hide();
            });

        });


        // Cookies
        function exitpopCreateCookie(name, value, days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            var expires = "; expires=" + date.toGMTString();
            document.cookie = name + "=" + value + expires + "; path=/";
        }
        function exitpopReadCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) === ' ')
                    c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) === 0)
                    return c.substring(nameEQ.length, c.length);
            }
            return null;
        }
        function exitpopEraseCookie(name) {
            createCookie(name, "", -1);
        }

        // convert string into quasi hash
        function exitpopHashCode(str) {
            var hash = 0;
            if (str.length === 0)
                return hash;
            for (i = 0; i < str.length; i++) {
                c = str.charCodeAt(i);
                hash = ((hash << 5) - hash) + c;
                hash = hash & hash; // Convert to 32bit integer
            }
            return hash;
        }

        // pop function
	        (function() {
	
	            var current_scroll = 0;
	            var last_mouse_y = null;
	
	            $(document)
	                    .scroll(function() {
	                        current_scroll = $(this).scrollTop();
	                    })
	                    .mousemove(function(e) {
	                        var speed = last_mouse_y - e.pageY;
	                        var success_val = e.pageY - speed;
	
	                        if (success_val < last_mouse_y && success_val <= current_scroll) {
	                            $("#exitpop").show();
	                            if (!exitpopReadCookie("exitpopsuccess") && !exitpopReadCookie("exitpopclose") && $("#exitpop").css("top") === "-450px") {
	                                $("#exitpop").animate({
	                                    top: 20
	                                }, 150);
	                                document.getElementById('exitpopdingle').play();
	                            }
	                        }
	                        last_mouse_y = e.pageY;
	                    });
	
	        })();
        });