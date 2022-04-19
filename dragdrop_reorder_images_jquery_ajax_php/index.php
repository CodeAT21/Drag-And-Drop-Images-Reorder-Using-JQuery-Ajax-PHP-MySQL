<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Drag & Drop Reorder Images by Devooti</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- Include jQuery and jQuery UI library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- Mobile touch support -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('.reorder_link').on('click',function(){
		$("ul.reorder-photos-list").sortable({ tolerance: 'pointer' });
		$('.reorder_link').html('save reordering');
		$('.reorder_link').attr("id","saveReorder");
		$('#reorderHelper').slideDown('slow');
		$('.image_link').attr("href","javascript:void(0);");
		$('.image_link').css("cursor","move");
		$("#saveReorder").click(function( e ){
			if( !$("#saveReorder i").length ){
				$(this).html('').prepend('<img src="images/refresh-animated.gif"/>');
				$("ul.reorder-photos-list").sortable('destroy');
				$("#reorderHelper").html("Reordering Photos - This could take a moment. Please don't navigate away from this page.").removeClass('light_box').addClass('notice notice_error');
	
				var h = [];
				$("ul.reorder-photos-list li").each(function() {
					h.push($(this).attr('id').substr(9));
				});
				
				$.ajax({
					type: "POST",
					url: "orderUpdate.php",
					data: {ids: " " + h + ""},
					success: function(){
						window.location.reload();
					}
				});	
				return false;
			}	
			e.preventDefault();		
		});
	});
});
</script>
</head>
<body>
<div class="container">
	<a href="javascript:void(0);" class="reorder_link" id="saveReorder">reorder photos</a>
	<div id="reorderHelper" class="light_box" style="display:none;">1. Drag photos to reorder.<br>2. Click 'Save Reordering' when finished.</div>
	<div class="gallery">
		<ul class="reorder_ul reorder-photos-list">
		<?php
		// Include and create instance of DB class
		require_once 'DB.class.php';
		$db = new DB();
		
		// Fetch all images from database
		$images = $db->getRows();
		if(!empty($images)){
			foreach($images as $row){
		?>
			<li id="image_li_<?php echo $row['id']; ?>" class="ui-sortable-handle">
				<a href="javascript:void(0);" style="float:none;" class="image_link">
					<img src="<?php echo $row['file_name']; ?>" alt="">
				</a>
			</li>
		<?php } } ?>
		</ul>
	</div>
</div>
</body>
</html>
