####  Cálculo do desconto

Para encorajar mais vendas de diferentes medicamentos iremos oferecer descontos para compras de itens diferentes.

Para esse teste, vamos levar em consideração que o preço do medicamento é fixo em 8 reais.

Se o cliente comprar dois medicamentos diferentes, ele ganha um desconto de 5% nesse grupo.
se comprar 3 medicamentos diferentes ele ganha 10% de desconto nesse grupo.
se comprar 4 medicamentos diferentes ele ganha 20% de desconto nesse grupo.
Se comprar 5 medicamentos ou mais, terá um desconto de 25% de desconto nesse grupo.

Observação: Se comprar 4 medicamentos, sendo 3 diferentes e 1 repetido, irá ganhar 10% de desconto nesse grupo de 3 medicamentos diferentes, contudo o item repetido não terá desconto.

O objetivo é escrever uma Operação que calcule o preço do carrinho que dará o maior desconto possível para o cliente.

Por exemplo, qual será o preço desse carrinho?

2 quantidades de Aspirina  
2 quantidades de Enxaq  
2 quantidades de Engov  
1 quantidade de Doril  
1 quantidade de Viagra   

Uma das formas de agrupar esses 8 itens é:

1 grupo com 5 itens diferentes --> 25% desconto (aspirina, enxaq, engov, doril e viagra)  
+1 grupo com 3 itens --> 10% discount (aspirina, enxaq, engov)  
que dará um total de:  

5 medicamentos com 25% de desconto  
+3 medicamentos com 10% de desconto  
que o resultado será:  

5 x (8 - 2.00) == 5 x 6.00 == R$ 30.00  
+3 x (8 - 0.80) == 3 x 7.20 == R$ 21.60  
Um total de R$ 51.60  

Contudo, um jeito diferente de agrupar esses medicamentos é:

1 grupo de 4 medicamentos --> 20% desconto (aspirina, enxaq, engov e doril)  
+1 grupo de 4 medicamentos --> 20% desconto (aspirina, enxaq, engov e viagra)  
Onde o total será:

4 medicamentos com 20% de desconto  
+4 medicamentos com 20% de desconto  
que o resultado será:  

4 x (8 - 1.60) == 4 x 6.40 == R$ 25.60  
+4 x (8 - 1.60) == 4 x 6.40 == R$ 25.60  
Um total de R$ 51.20  

Sendo que R$ 51.20 é o preço com o maior desconto e esse que deverá ser informado como resultado.