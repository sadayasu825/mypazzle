<?php
    // 自分の得意な言語で
    // Let's チャレンジ！！

    $ipt = explode(' ', fgets(STDIN));
    
    $x = $ipt[1];
    $y = $ipt[2];
    $max_x = $x;
    
    
    for($i; $i < $ipt[0]; $i++){
        $dxdy = explode(' ', fgets(STDIN));

        $dx = $dxdy[0];
        $dy = $dxdy[1];
        
        $x += $dx;
        if($x > $max_x){
            $max_x = $x;
        }
        
        $y += $dy;
        if($y <= 0){
            break;
        }
    }
    
    echo($max_x);
    
?>