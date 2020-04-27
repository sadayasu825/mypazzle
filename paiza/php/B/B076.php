<?php
    // 自分の得意な言語で
    // Let's チャレンジ！！

    $ipt = explode(" ", trim(fgets(STDIN)));
    $bread_kinds = $ipt[0];
    $query_n = $ipt[1];
    
    $bread_prices = [];
    $bread_stucks = [];
    
    for($i = 0; $i < $bread_kinds; $i++)
    {
        $bread_params = explode(" ", trim(fgets(STDIN)));
        
        $bread_prices[$i] = $bread_params[0];
        $bread_stucks[$i] = $bread_params[1];
    }
    
    for($i = 0; $i < $query_n; $i++)
    {
        $query = explode(" ", trim(fgets(STDIN)));
        $flag = true;
        $p_n = [];
        $sum = 0;
        
        if($query[0] == "buy")
        {
            for($j = 0; $j < $bread_kinds; $j++)
            {
                $purchase_n = $query[$j + 1];
                
                if($purchase_n > $bread_stucks[$j]){
                    $flag = false;
                    break;
                }
                
                $p_n[] = $purchase_n;
            }
            
            if($flag == false){
                echo -1, "\n";
                continue;
            }
            
            for($k = 0; $k < $bread_kinds; $k++)
            {
                $bread_stucks[$k] -= $p_n[$k];
                $sum += $bread_prices[$k] * $p_n[$k];
            }
            
            echo $sum, "\n";
        }else
        {
            for($j = 0; $j < $bread_kinds; $j++)
            {
                $bread_stucks[$j] += $query[$j + 1];
            } 
        }
    }
?>