<?php
    // 自分の得意な言語で
    // Let's チャレンジ！！

    $ipt = explode(' ', trim(fgets(STDIN)));
    $N = $ipt[0];
    $c_1 = $ipt[1];
    $c_2 = $ipt[2];
    
    $stock_n = 0;
    $stock_price = 0;
    $profit = 0;
    
    for($i = 0; $i < $N; $i++){
        $stock_price = trim(fgets(STDIN));
        
        if($stock_price <= $c_1){
            $stock_n += 1;
            $profit -= $stock_price;
        }elseif($stock_price >= $c_2){
            $profit += $stock_price * $stock_n;
            $stock_n = 0;
        }
    }
    
    echo($profit + $stock_price * $stock_n);
?>