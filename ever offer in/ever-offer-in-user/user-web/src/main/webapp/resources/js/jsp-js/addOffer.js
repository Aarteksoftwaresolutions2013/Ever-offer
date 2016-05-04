function validate() {
	var imgVal = $('#uploadBtn').val();
	if (imgVal == '') {
		$("#file_error").css("display", "block");
		$("#file_error").html("Please select image ");
		return false;
	}
	var oFile = $('#uploadBtn')[0].files[0];
	// hide all errors
	$('#file_error').hide();
	// check for image type (jpg and png are allowed)
	var rfilter = /^(image\/jpeg|image\/png)$/i;

	if (!rfilter.test(oFile.type)) {
		$('#file_error').html(
				'Please select a valid image file (jpg and png are allowed)')
				.show();
		return false;
	}

	$("#file_error").html("");
	var file_size = $('#uploadBtn')[0].files[0].size;
	if (file_size > 2097152) {
		$("#file_error").css("display", "block");
		$("#file_error").html("Please select image upto 2 MB");
		return false;
	}
	return true;
}

function myFunction() {
	var filesSelected = document.getElementById("uploadBtn").files;
	if (filesSelected.length > 0) {
		var fileToLoad = filesSelected[0];
		var fileReader = new FileReader();
		fileReader.onload = function(fileLoadedEvent) {
			document.getElementById('preview').setAttribute('src',
					fileLoadedEvent.target.result);
		};
		fileReader.readAsDataURL(fileToLoad);
	}

	var offerHeading = document.getElementById("formID").elements
			.namedItem("offerHeading").value;
	document.getElementById("demo4").innerHTML = offerHeading;
	var formValue = document.getElementById("formID").elements
			.namedItem("noOfCouponsPerPerson").value;
	document.getElementById("demo1").innerHTML = formValue;
	var termAndCondition = document.getElementById("formID").elements
			.namedItem("termsAndConditions").value;
	document.getElementById("demo2").innerHTML = termAndCondition;
	var offerDiscription = document.getElementById("formID").elements
			.namedItem("offerDescription").value;
	document.getElementById("demo3").innerHTML = offerDiscription;
	var offerheading = document.getElementById("formID").elements
			.namedItem("offerHeading").value;
	document.getElementById("demo4").innerHTML = offerheading;
	var offerStartTime = document.getElementById("formID").elements
			.namedItem("offerStartTime").value;
	var offerEndTime = document.getElementById("formID").elements
			.namedItem("offerEndTime").value;
	document.getElementById("demo5").innerHTML = offerStartTime + " - "
			+ offerEndTime;

}