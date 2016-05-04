function getCityList(data) {
	var stateId = document.getElementById(data.id).value;
	$.ajax({
		type : "GET",
		url : "cityList?stateId=" + stateId
	}).success(
			function(cityValues) {
				$('#city').html('');// Empty select box before fill
				$('#city')// Due to above line all data is clear
				.append(
						$("<option value='" + 0 + "'></option>").text(
								"Select City"));
				for (i = 0; i < cityValues.length; i++) {
					$('#city').append(
							$(
									"<option value='" + cityValues[i].id
											+ "'></option>").text(
									cityValues[i].cityName));
				}
			});
}

function ifStateNotSelected(field, rules, i, options) {
	var state = document.getElementById('state').value;
	if (state == 0) {
		return "*Please select an option, this field is required";
	}
}
function ifCityNotSelected(field, rules, i, options) {
	var city = document.getElementById('city').value;
	if (city == 0) {
		return "*Please select an option, this field is required";
	}
}
function ifMerchantTypeNotSelected(field, rules, i, options) {
	var merchant = document.getElementById('merchant').value;
	if (merchant == 0) {
		return "*Please select an option, this field is required";
	}
}
function ifProductService(field, rules, i, options) {
	var category = document.getElementById('category').value;
	if (category == 0) {
		return "*Please select an option, this field is required";
	}
}
function checkComplementryCode(verify) {
	var complementry = verify.value;
	if (complementry != '') {
		$.ajax({
			url : "complementaryCode?complementry=" + complementry,
			type : "GET",
			contentType : "application/json; charset=utf-8",
			success : function(call) {
				if (call == "false") {
					alert("Complementry code is wrong!");
					document.getElementById("comp").value = false;
				} else
					document.getElementById("comp").value = true;
			},
		})
	}
}
function checkComp() {
	var status = document.getElementById("comp").value;
	compRadia = document.getElementById('SomeRadio').checked;
	payuRadia = document.getElementById('SomeRadio1').checked;
	if (status == "false") {
		alert("Complementry code is wrong!");
		return false;
	}
	if (compRadia == false && payuRadia == false) {
		alert("Please select atleast one Registration type");
		return false;
	}
	validate();
}

function validate() {
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

function showFields() {
	var complementryRadio = document.getElementById('SomeRadio').checked;
	var paidRadio = document.getElementById('SomeRadio1').checked;
	if (complementryRadio == false) {
		document.getElementById('complementry').style.display = "none";
	} else {
		document.getElementById('complementry').style.display = "block";
	}
	if (paidRadio == false) {
		document.getElementById('checkbox').style.display = "none";
	} else {
		document.getElementById('checkbox').style.display = "block";
	}
}
