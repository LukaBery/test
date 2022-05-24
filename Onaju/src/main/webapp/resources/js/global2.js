(function ($) {
    'use strict';
    /*==================================================================
        [ Daterangepicker ]*/
    
    
    try {
    
		$('#checkIn_date_goods').daterangepicker({
			locale: {
				"separator": " ~ ",                     // 시작일시와 종료일시 구분자
			
				"applyLabel": "확인",                    // 확인 버튼 텍스트
				"cancelLabel": "취소",                   // 취소 버튼 텍스트
				"daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
				"monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
			},
            ranges: true,
            autoApply: true,
            applyButtonClasses: false,
			autoUpdateInput: false,
			beforeShowDay: function(t) {
				var valid = !(t.getDay() == 0 || t.getDay() == 6);  //disable saturday and sunday
				var _class = '';
				var _tooltip = valid ? '' : 'weekends are disabled';
				return [valid, _class, _tooltip];
			}
		}, function(start, end) {
            $('#checkIn_date_goods').val(start.format('YYYY/MM/DD'));
            $('#checkOut_date_goods').val(end.format('YYYY/MM/DD'));
            fn_check();
        }
        );
    
    
    } catch(er) {console.log(er);}
    /*==================================================================
        [ Input Number ]*/
    
    try {
    
        var inputCon = $('.js-number-input');
    
        inputCon.each(function () {
            var that = $(this);
    
            var btnPlus = that.find('.plus');
            var btnMinus = that.find('.minus');
            var qtyInput = that.find('.quantity1');
    
    
            btnPlus.on('click', function () {
                var oldValue = parseInt(qtyInput.val());
                var newVal = oldValue + 1;
                qtyInput.val(refineString(newVal));
            });
    
            btnMinus.on('click', function () {
                var min = 0;
    
                var oldValue = parseInt(qtyInput.val());
                if (oldValue <= min) {
                    var newVal = oldValue;
                } else {
                    var newVal = oldValue - 1;
                }
                qtyInput.val(refineString(newVal));
            });
        });
    
        function refineString(s) {
            if(parseInt(s) <= 1) return parseInt(s) + " 명";
            else return parseInt(s) + " 명";
        }
    
    }catch (e) {
        console.log(e);
    }

})(jQuery);


