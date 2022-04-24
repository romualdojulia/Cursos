<?php

$texto = "Hello Word <br />";

echo $texto;
echo $texto;

$nome = "Julia";
$idade = 18;
$formacoes = array();
$ultimavizualizacao = null;

echo $nome . "<br />";
echo $idade . "<br />";

echo isset($formacoes) . "<br />";
echo isset($ultimavizualizacao) . "<br />";

echo empty($formacoes) . "<br />";
echo empty($ultimavizualizacao) . "<br />";

//------- Tipos de comentário em php ---------//

//comentário de linha única

/* Comentários 
de múltiplicas 
linhas */

/**
 * Comentário de documentação
 */