$(document).ready(function() {
	if($('form.new_event, form.edit_event').length) {
		$('#event_time').datetimepicker({
			minDate: 0,
			changeMonth: true,
			changeYear: true,
			dateFormat: 'yy-mm-dd',
			timeFormat:  "hh:mm TT",
			minute: 0
		});
	}
});
