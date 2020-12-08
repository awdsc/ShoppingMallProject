/**
 * 
 */

function CheckAddProduct()
{
	
	
    var productId = document.getElementById("productId");
    var name = document.getElementById("name");
    var unitPrice = document.getElementById("unitPrice");
    var unitStock = document.getElementById("unitStock");
	
	
    if(!Check(/^P[0-9]{4,11}$/,productId,"Enter [ProductId]\nP And Number Within 5 to 12.\nBe sure to type the first letter in P."))
    {
        return false;
    }

    if(name.value.length < 4 || name.value.length >12)
    {
        alert("[ProductName]\n Please Enter A Minimum of 4 To 12 Characters.");
        name.select();
        name.focus();
        return false;
    }
    
    if(unitPrice.value.length == 0 || isNaN(unitPrice.value))
    {
        alert("[Price]\nEnter Only The Number");
        unitPrice.select();
        unitPrice.focus();
        return false;
    }

    if(unitPrice.value <0)
    {
        alert("[Price]\n Negative Numbers Are Not Allowed.");
        unitPrice.select();
        unitPrice.focus();
        return false;
    }else if(!Check(/^\d+(?:[\d]?[\d])?$/,unitPrice,"Please Enter The [Price]\n Only Up To The Second Decimal Place."))
    {
        return false;
    }
    if(isNaN(unitStock.value))
    {
        alert("[UnitStock]\nEnter Only The Number");
        unitStock.select();
        unitStock.focus();
        return false;
    }

    function Check(regExp,e,msg)
    {
        if(regExp.test(e.value))
        {
            return true;
        }
        alert(msg);
        e.select();
        e.focus();
        return false;
    }

    document.newProduct.submit();
	

}