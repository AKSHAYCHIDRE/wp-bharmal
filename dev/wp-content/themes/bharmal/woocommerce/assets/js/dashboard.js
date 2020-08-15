jQuery(function(){
	var dashboard_wrap = jQuery('.product-archive-dashboard');
	if(dashboard_wrap.get(0)){
		dashboard_wrap.find('a.dashboard-minimize').click(function(){
			var ths = jQuery(this), dashboard;
			dashboard = ths.next('.dashboard');

			if(ths.hasClass('open')){
				ths.removeClass('open');
				dashboard.hide();
				if(jQuery.cookie){
					jQuery.cookie('woocommerce_dashboard_status', 'closed');
				}
			} else {
				ths.addClass('open');
				dashboard.show();
				if(jQuery.cookie){
					jQuery.cookie('woocommerce_dashboard_status', 'open');
				}
			}
		});

		if(jQuery.cookie){
			var status = jQuery.cookie('woocommerce_dashboard_status');
			if(status && status == 'open'){
				dashboard_wrap.find('a.dashboard-minimize').click();
			}
		}
	}
});