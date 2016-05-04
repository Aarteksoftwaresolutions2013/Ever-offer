  function convertIdIntoBase64(id) {
        var encodedId = Base64.encode(id.toString());
        document.location.href = "viewOffer?offerId=" + encodedId;
    }