$(document).ready(function() {
    
    var questaoAtual = 0;
    $('#q0').css('display', 'block');
    
    $('#bt_voltar').on('click', function(){
        if(questaoAtual != 0) {
            questaoAtual--;
            console.log('voltou a questao');
            esconderTudo(questaoAtual);
            console.log("questao atual: "+questaoAtual);
        }
        
        
    });
    $('#bt_avancar').on('click', function(){
        if(questaoAtual != 9) {
            questaoAtual++;
            console.log('avançou a questao');
            esconderTudo(questaoAtual);
            console.log("questao atual: "+questaoAtual);
        }
        
    });
    
    
});

function esconderTudo(quest){
        for(i = 0; i<=9; i++) {
            if(i==quest) {
                $('#q'+i).css('display', 'block');
                console.log('display');
            }
            else {
                $('#q'+i).css('display', 'none');
                console.log('none');
            }
        }
        // $('q1').css('display', 'none');
        // $('q2').css('display', 'none');
        // $('q3').css('display', 'none');
        // $('q4').css('display', 'none');
        // $('q5').css('display', 'none');
        // $('q6').css('display', 'none');
        // $('q7').css('display', 'none');
        // $('q8').css('display', 'none');
        // $('q9').css('display', 'none');
        // $('q10').css('display', 'none');
    }