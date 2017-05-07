$(document).ready(function () {

    controlarHabilitarCalcular();
    $('#divInfoResult').hide();

    $("#Entrada1").change(function () { controlarHabilitarCalcular(); });
    $("#Entrada2").change(function () { controlarHabilitarCalcular(); });
    $(".clsOperador").change(function () { controlarHabilitarCalcular(); });

    $("#calcular").click(function () { realizarCalculo(); });
});

function realizarCalculo() {
    var objectCalc = getObjectCalculadoraModel();
    if (objectCalc.IsValid) {
        var resultado = efetuarCaculo(objectCalc);
    }
}

function controlarHabilitarCalcular() {

    var objectCalc = getObjectCalculadoraModel();
    if (objectCalc.IsValid) {
        $("#calcular").removeAttr("disabled");
    } else {
        $("#calcular").attr("disabled", "disabled");
    }
}

function getUrlPost() { 
    return "/Home/Calculate"; //'@Url.Action("Calculate", "Home")';
}

function efetuarCaculo(objectCalc) {
   
    var jsonObject = [];
    if (objectCalc != undefined) {
        jsonObject = objectCalc;
    } else {
        jsonObject = getObjectCalculadoraModel();
    }
    var url = getUrlPost();
    $.post(url, jsonObject, function (data) {
        exibirResultado(data);
    });
}
function efetuaasdsadsadrCaculo(objectCalc) {

    var jsonString = getJsonFromObject(objectCalc);

    $.ajax(
        {
            type: "POST",
            URL: getUrlPost(),
            dataType: "json",
            contentType: "application/json",
            data: jsonString,
            error: function (response) {
                console.log(response);
            },
            //After successfully inserting records
            success: function (response) {
                //alert(response);
                alert('asdasd');
                exibirResultado(response);
            }
        });
}
 
 
function getObjectCalculadoraModel() {
    var entrada1 = $('#Entrada1').val();
    var entrada2 = $('#Entrada2').val();
    var operacao = $(".clsOperador").filter(':checked').val();

    var _inputCalculadoraModel = {
        Entrada1: entrada1,
        Entrada2: entrada2,
        Operacao: operacao,
        IsValid: entrada1 != '' && entrada1 != undefined && entrada2 != '' && entrada2 != undefined && operacao != '' && operacao != undefined
    };
    return _inputCalculadoraModel;
}

function getJsonFromObject(objectModel) {

    var result = JSON.stringify(objectModel);
    return result;
}

function exibirResultado(resultado) {
    $('#divInfoResult').show();
    $('#resultCalculadora').html(resultado);
} 