!function(r){"use strict";var n=r(".validate-input .input100");r(".validate-form").on("submit",function(){for(var t,a,e=!0,i=0;i<n.length;i++)0==function(t){if("email"==r(t).attr("type")||"email"==r(t).attr("name")){if(null==r(t).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/))return!1}else if(""==r(t).val().trim())return!1}(n[i])&&(t=n[i],a=r(t).parent(),r(a).addClass("alert-validate"),e=!1);return e}),r(".validate-form .input100").each(function(){r(this).focus(function(){var t;t=r(this).parent(),r(t).removeClass("alert-validate")})})}(jQuery);