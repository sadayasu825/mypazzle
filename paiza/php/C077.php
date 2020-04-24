<?php
    // 自分の得意な言語で
    // Let's チャレンジ！！

    $ipt = explode(' ', trim(fgets(STDIN)));
    
    $N = $ipt[0];
    $q_n = $ipt[1];
    
    $point = 100 / $q_n;
    
    for($i = 0; $i < $N; $i++){
        $student_params = explode(' ', trim(fgets(STDIN)));
        $submission_date = $student_params[0];
        $correct_answers = $student_params[1];
        
        if($submission_date <= 0){
            $score = $point * $correct_answers;
        }elseif($submission_date <= 9){
            $score = floor($point * $correct_answers * 0.8);
        }else{
            $score = 0;
        }
        
        if($score >= 80){
            echo("A\n");
        }elseif($score >= 70){
            echo("B\n");
        }elseif($score >= 60){
            echo("C\n");
        }else{
            echo("D\n");
        }
    }
?>