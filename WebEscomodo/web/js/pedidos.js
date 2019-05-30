/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.collapsible');
    var instances = M.Collapsible.init(elems);
});
$(document).ready(function(){
    var count;

    function starmark(item){
        count=item.id[0];
        starRating = count;
        var subid= item.id.substring(1);
        for(var i=0;i<5;i++){
            if(i<count){
                document.getElementById((i+1)+subid).className="fas fa-cookie-bite fa-5x";
            }else{
                document.getElementById((i+1)+subid).className="fas fa-cookie fa-5x";
            }
        }
    }

    function result(){
    alert("Rating : "+count);
    }
     
    $(document).on("click", ".cal", function(){
            $.confirm({
                    title: '',
                    icon: 'fas fa-hotdog',
                    content: '<br><div class="row center-align"><span class="col s12 m12 l12 flow-text">Califica este platillo:</span></div>'+
                                '<br> <br> <div class="row center-align">'+
                                '<i onmouseover="starmark(this)" onclick="result()" id="1one" class="fa fa-5x fa-cookie"></i>'+
                                '<i onmouseover="starmark(this)" onclick="result()" id="2one" class="fa fa-5x fa-cookie"></i>'+
                             '<i onmouseover="starmark(this)" onclick="result()" id="3one" class="fa fa-5x fa-cookie"></i>'+
                                '<i onmouseover="starmark(this)" onclick="result()" id="4one" class="fa fa-5x fa-cookie"></i>'+
                                '<i onmouseover="starmark(this)" onclick="result()" id="5one" class="fa fa-5x fa-cookie"></i>'+
                            '</div><br><br>',
                    buttons: {
                    Ok: function agregarPlatillo() {
                                $.alert({
                                    title: "",
                                    content: '<br><div class="row center-align"><span class="col s12 m12 l12 flow-text">¡Gracias! Tu opinión es tomada en cuenta</span></div>',
                                    icon: 'fas fa-pizza-slice',
                                    theme: 'material',
                                    useBootstrap: false,
                                    boxWidth: '400px'
                                });
                    },
                    cancelar: function () {
                        $.alert({
                            title: "",
                            content: '<br><div class="row center-align"><span class="col s12 m12 l12 flow-text">Califica en otro momento, tu opinión es importante</span></div>',
                            icon: 'fas fa-bacon',
                            theme: 'material',
                            useBootstrap: false,
                            boxWidth: '400px'
                        });
                    }
                    }

                });
                starmark("");
        
    });
});