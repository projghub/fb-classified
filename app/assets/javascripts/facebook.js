$(document).ready(function() {
	var signinWin = null;
	$("#facebook_login").live("click", function() {
		signinWin = window.open($(this).attr("href"), "SignIn", "width=780,height=410,toolbar=0,scrollbars=0,status=0,resizable=0,location=0,menuBar=0,left=" + 200 + ",top=" + 100);
		setTimeout(CheckLoginStatus, 2000);
		signinWin.focus();
		return false;
	});

})
function CheckLoginStatus() {
	if (signinWin.closed) 
	{
		window.location.href = "http://<%= request.env['HTTP_HOST'] %>"
	} 
	else 
	{
		setTimeout(CheckLoginStatus, 1000);
	}
}
