<?php
    // 自分の得意な言語で
    // Let's チャレンジ！！

    $N = trim(fgets(STDIN));
    $waiting_time = 0;
    $cnt = 0;
    
    for($i = 0; $i < $N; $i++){
        $food = trim(fgets(STDIN));
        
        if($food == 'melon' && $waiting_time == 0){
            $cnt += 1;
            $waiting_time += 10;
        }elseif($waiting_time != 0){
            $waiting_time -= 1;
        }
    }
    
    echo($cnt);
?>