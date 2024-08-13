INCLUDE Irvine32.inc

; THIS PROJECT WAS SOLEY WORKED ON BY HAMZA ASAD 
; 22I-1908 BS DS 
; default window size is 80 x 25 ; X x Y

.data

   


    ; Title screen message
    WelcomeMessage  DB 0AH, 0DH, "                                                                                     "
                     DB 0AH, 0DH, "                                                                                    "
                     DB 0AH, 0DH, "                                                                                    "
                    DB 0AH, 0DH, "                                                                                     "
                    DB 0AH, 0DH, "                                            #==============================#         "
                    DB 0AH, 0DH, "                                            #==============================#"
                    DB 0AH, 0DH, "                                            #======= - WELCOME TO - =======#"
                    DB 0AH, 0DH, "                                            #==============================#"
                    DB 0AH, 0DH, "                                            #==============================#"
                    DB 0AH, 0DH, "                                            #====== ~ BRICK BREAKER ~ =====#"
                    DB 0AH, 0DH, "                                            #==============================#"
                    DB 0AH, 0DH, "                                            #==============================#"
                     DB 0AH, 0DH, "                                                                                    "
                     DB 0AH, 0DH, "                                                                                    "
                    DB 0AH, 0DH, "                                                 Press ENTER to continue     ", 0

    ; Credits message 
    credits_string DB 0AH, 0DH, "                                                                                             "
                   DB 0AH, 0DH, "                                                                                             "
                   DB 0AH, 0DH, "                                                                                             "
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           ======== DEVELOPED BY: ==========================================="
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           ======================== HAMZA ASAD =============================="  
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           =================================================================="
                    DB 0AH, 0DH, "                           =================================================================="
                     DB 0AH, 0DH, "                                                                                             "
                    DB 0AH, 0DH, "                                            Press ENTER to go back to the menu          ", 0

    ; About page        
    about_string     DB 0AH, 0DH, "                                                                                             "
                     DB 0AH, 0DH, "                                                                                             "
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           === BRICK BREAKER IS A SINGLE-PLAYER GAME IN WHICH YOU HAVE TO ===="
                    DB 0AH, 0DH, "                           === BREAK ALL THE BRICKS ON THE SCREEN USING AN AUTOMATED BALL ===="
                    DB 0AH, 0DH, "                           ====== THAT YOU CONTROL USING A MOVABLE PLATFORM (STRIKER). ======="
                    DB 0AH, 0DH, "                           ==== THERE ARE A TOTAL OF THREE LEVELS; YOUR GOAL IS TO SCORE ====="
                    DB 0AH, 0DH, "                           === ENOUGH TO PROGRESS THROUGH ALL THE LEVELS AND WIN THE GAME ===="
                    DB 0AH, 0DH, "                           ======= YOU HAVE A TOTAL OF 3 LIVES, SO USE THEM WISELY! ;) ======="
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ========================== GOOD LUCK! :) =========================="
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                                                                                             "
                    DB 0AH, 0DH, "                                            Press ENTER to go back to the menu          ", 0

    ; Instructions       
    instructions_String  DB 0AH, 0DH, "                                                                                             "
                         DB 0AH, 0DH, "                                                                                             "
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ========================    CONTROLS   ============================"
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ===== USE THE 'A' AND 'D' ARROW KEYS TO MOVE THE STRIKER FROM ====="
                    DB 0AH, 0DH, "                           ==================================================================="
                    DB 0AH, 0DH, "                           ======= THE CURRENT POSITION TO LEFT OR RIGHT RESPECTIVELY. ======="
                    DB 0AH, 0DH, "                           ==================================================================="  
                    DB 0AH, 0DH, "                           ==================================================================="  
                     DB 0AH, 0DH, "                                                                                             "
                    DB 0AH, 0DH, "                                            Press ENTER to go back to the menu          ", 0

    ; End message
    end_string      DB 0AH, 0DH, "                          =============================="
                    DB 0AH, 0DH, "                          =============================="
                    DB 0AH, 0DH, "                          ====      THANK YOU       ===="
                    DB 0AH, 0DH, "                          ====         FOR          ===="
                    DB 0AH, 0DH, "                          ==== PLAYING THE GAME! <3 ===="
                    DB 0AH, 0DH, "                          =============================="
                    DB 0AH, 0DH, "                          ==============================",0

                    ;------------MENU SELECTION---------------


   ; Menu option for new game
menu0   DB "                        ========================================================",0AH, 0DH
        DB '                                       #====== ->1. NEW GAME      ======', 0AH, 0DH
        DB '                                                  2. CREDITS       ======', 0AH, 0DH
        DB '                                                  3. ABOUT         ======', 0AH, 0DH
        DB '                                                  4. HIGHSCORES    ======', 0AH, 0DH
        DB '                                                  5. INSTRUCTIONS  ======', 0AH, 0DH
        DB '                                                  6. QUIT GAME     ======', 0AH, 0DH     
        DB "                        ========================================================",0AH, 0DH,0 
    
; Menu option for credits
menu1   DB "                        ========================================================",0AH, 0DH
        DB '                                                  1. NEW GAME      ======', 0AH, 0DH
        DB '                                       #====== ->2. CREDITS       ======', 0AH, 0DH
        DB '                                                  3. ABOUT         ======', 0AH, 0DH
        DB '                                                  4. HIGHSCORES    ======', 0AH, 0DH
        DB '                                                  5. INSTRUCTIONS  ======', 0AH, 0DH
        DB '                                                  6. QUIT GAME     ======', 0AH, 0DH      
        DB "                        ========================================================",0AH, 0DH,0 

; Menu option for about
menu2   DB "                        ========================================================",0AH, 0DH
        DB '                                                  1. NEW GAME      ======', 0AH, 0DH
        DB '                                                  2. CREDITS       ======', 0AH, 0DH
        DB '                                       #====== ->3. ABOUT         ======', 0AH, 0DH
        DB '                                                  4. HIGHSCORES    ======', 0AH, 0DH
        DB '                                                  5. INSTRUCTIONS  ======', 0AH, 0DH
        DB '                                                  6. QUIT GAME     ======', 0AH, 0DH      
        DB "                        ========================================================",0AH, 0DH,0 

; Menu option for highscores
menu3   DB "                        ========================================================",0AH, 0DH
        DB '                                                  1. NEW GAME      ======', 0AH, 0DH
        DB '                                                  2. CREDITS       ======', 0AH, 0DH
        DB '                                                  3. ABOUT         ======', 0AH, 0DH
        DB '                                       #====== ->4. HIGHSCORES    ======', 0AH, 0DH
        DB '                                                  5. INSTRUCTIONS  ======', 0AH, 0DH
        DB '                                                  6. QUIT GAME     ======', 0AH, 0DH      
        DB "                        ========================================================",0AH, 0DH,0 

; Menu option for instructions
menu4   DB "                        ========================================================",0AH, 0DH
        DB '                                                  1. NEW GAME      ======', 0AH, 0DH
        DB '                                                  2. CREDITS       ======', 0AH, 0DH
        DB '                                                  3. ABOUT         ======', 0AH, 0DH
        DB '                                                  4. HIGHSCORES    ======', 0AH, 0DH
        DB '                                       #====== ->5. INSTRUCTIONS  ======', 0AH, 0DH
        DB '                                                  6. QUIT GAME     ======', 0AH, 0DH      
        DB "                        ========================================================",0AH, 0DH,0 

; Menu option for quit game
menu5   DB "                        ========================================================",0AH, 0DH
        DB '                                                  1. NEW GAME      ======', 0AH, 0DH
        DB '                                                  2. CREDITS       ======', 0AH, 0DH
        DB '                                                  3. ABOUT         ======', 0AH, 0DH
        DB '                                                  4. HIGHSCORES    ======', 0AH, 0DH
        DB '                                                  5. INSTRUCTIONS  ======', 0AH, 0DH
        DB '                                       #====== ->6. QUIT GAME     ======', 0AH, 0DH      
        DB "                        ========================================================",0AH, 0DH,0 



   currentMenuIndex  DWORD 0



   ; length of the border is 60 
   ; string for border, and game screen 
     border  DB          0AH, 0DH, "#******************************************************************#"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     db  0AH, 0DH, "#                                                                  #"
                     DB  0AH, 0DH, "#******************************************************************#", 0
                      
        WinMessage  DB 0AH, 0DH, "     ==============================      "
                    DB 0AH, 0DH, "     ==============================      "
                    DB 0AH, 0DH, "     ====     YOU WON! :)     =====      "
                    DB 0AH, 0DH, "     ==============================      "
                    DB 0AH, 0DH, "     ==============================      ", 0 
                    

      ;paddle
      paddle db '=======',0
      paddleEmpty db '       ', 0
      paddle_x dw 0
      score db 0

      paddle2 db "===", 0

       
    ;------------ brick variable ----------
    ; hardcoding teh bricks
    brick1bool db 1
    brick2bool db 1
    brick3bool db 1
    brick4bool db 1
    brick5bool db 1
    brick6bool db 1
    brick7bool db 1

    brick1 db '[brick1]', 0
    brick2 db '[brick2]', 0
    brick3 db '[brick3]', 0
    brick4 db '[brick4]', 0
    brick5 db '[brick5]', 0
    brick6 db '[brick6]', 0
    brick7 db '[brick7]', 0
    bricknone db '        ', 0
 

 ; 01 and 22 are the edge cases
 ; keep teh y coordinates between 5 and 12
 ; as for teh x coordinates, keep it between 2 and 58

    brick1_x BYTE 10      ; X coordinate for brick1
    brick1_y BYTE 08     ; Y coordinate for brick1 (above paddle)
    brick2_x BYTE 20      ; X coordinate for brick2
    brick2_y BYTE 12      ; Y coordinate for brick2 (above paddle)
    brick3_x BYTE 30      ; X coordinate for brick3
    brick3_y BYTE 09      ; Y coordinate for brick3 (above paddle)
    brick4_x BYTE 40      ; X coordinate for brick4
    brick4_y BYTE 07      ; Y coordinate for brick4 (above paddle)
    brick5_x BYTE 50      ; X coordinate for brick5
    brick5_y BYTE 10      ; Y coordinate for brick5 (above paddle)
    brick6_x BYTE 58      ; X coordinate for brick6
    brick6_y BYTE 05      ; Y coordinate for brick6 (above paddle)
    brick7_x BYTE 08      ; X coordinate for brick6
    brick7_y BYTE 05      ; Y coordinate for brick6 (above paddle)


    score_msg db " SCORE          : ", 0
   lives_msg db " LIVES REMAINING : ", 0
    heart3 BYTE '[L] [L] [L]', 0
    heart2 BYTE '[L] [L]', 0
    heart1 BYTE '[L]', 0
    lives_count = 3

    heart_x BYTE 93
    heart_y BYTE 11
    

    ; BALL DISPLAY & POSITIONING 

    ball byte 'O', 0
    ballempty byte ' ', 0
    ball_x db 0
    ball_y db 0
    ball_xDirection db 1
    ball_yDirection db 1

    bool db 1 ; to check whether ball is coming down or going up (1 for up, 0 for down)
    delayspeed word 100


    level db 0

name_prompt db "Enter your name player: ", 0
buffer_name db 100 dup(0)         ; Buffer for input (100 bytes)


l2 db 'LEVEL 2',0
l3 db 'LEVEL 3',0
l1 db 'LEVEL 1',0


level_prompt db 'What level do u wanna play (1,2,3) : ', 0 
level_ans dd ?

.code



; -------------------- MAIN PROCEDURE -----------------------

main PROC
  
     mov  eax,yellow+(black*16)
     call SetTextColor
  
    ; displays menu n the title page overall
     call call_title

   exit
main ENDP

; ------------- GAME ----------------------
game PROC

   
         
    mov edx, OFFSET name_prompt
    call writestring

   
    mov edx, OFFSET buffer_name 
    mov ecx, 100             
    call ReadString

    ; Initialize game
    call initialize_game

    ; Game loop
game_loop:
    call update_ball
    ;call update_lives
    call update_game
    call render_game
    ;call exit_game


    jmp game_loop

    ret
game ENDP


; --------- initialise the game ----------------
initialize_game PROC
    
   
    call display_heart
    call initialize_paddle
    call initialize_ball
    call display_borders
    call display_paddle
    call display_bricks
    call display_score
    ret
initialize_game ENDP


; ----- UPDATE GAME STATE ---------
update_game PROC
   call check_arrow_keys      
   ret
update_game ENDP

; ----------- RENDERING THE GAME -------------------
render_game PROC
    ;call clrscr
    ;call display_borders
    call display_ball
    ;call display_heart
    call display_paddle
    call display_bricks
    
    MOV eax, 0
    mov ax, delayspeed
    call delay
    ; Add other rendering routines like drawing the ball, updating scores, etc.
    ret
render_game ENDP

; --------------------- CALLING the menu  -------------------------------

; procedure to call al fucnions to maek a title page 
call_title PROC

    call DisplayWelcomeMessage
    call WaitForEnter
    call clrscr
    call menu_navigation
    ret
call_title ENDP

; --------- DISPLAYING, UPDATING THE BALL ------------------

; initialise ball 
initialize_ball PROC
    
    mov ball_x, 18
    mov ball_y, 15
    
    ret
initialize_ball ENDP


display_ball PROC

    mov ax, 0
    mov dx, 0
    mov al, byte ptr [ball_x]  
    mov dl, al                
    mov al, byte ptr [ball_y]  
    mov dh, al                

    call gotoxy                
    
    mov eax, gray + (black * 16)
    call SetTextColor
    
    mov edx, offset ball      
    call writestring          
    ret

ret
display_ball ENDP

end_game PROC

mov edx, offset end_string
call writestring

exit

end_game ENDP

display_win PROC

    call clrscr
    call clrscr
    call clrscr
    mov dl, 75
    mov dh, 11
    call gotoxy
    mov edx, offset winMessage
    call writestring
    
    ret
display_win ENDP

display_score PROC
    mov dl, 72
    mov dh, 13
    call gotoxy

    mov edx, offset score_msg
    call writestring
    mov  eax,0
    mov al, score
    cmp al, 25
    jge display_win
    mov edx, offset winMessage
    call WriteInt
    ret
display_score endp

; --------- UPDATE BALL POSITION -----------
toright PROC
    cmp ball_x, 65
    jne invertdirec
    mov ball_xdirection, 0
    call toleft
    ret
    invertdirec:
    inc ball_x
    ret
toright ENDP
toleft PROC
    cmp ball_x, 1
    jne dinvertdirec
    mov ball_xdirection, 1
    call toright
    ret
    dinvertdirec:
    dec ball_x
    ret
toleft ENDP
PaddleCollisionWithBall proc
    cmp ball_y, 21
    jne noneed1
    mov ax, paddle_x
    cmp ball_x, al
    jl noneed
    add al, 7
    cmp ball_x, al
    jg noneed
    mov cl, 0
    ret
    noneed:
    mov cl, 1
    ret
    noneed1:
    mov cl, 2
    ret
PaddleCollisionWithBall  endP
update_ball PROC
    mov ax, 0
    mov dx, 0
    mov al, byte ptr [ball_x]  
    mov dl, al                
    mov al, byte ptr [ball_y]  
    mov dh, al                

    call gotoxy                
    
    mov eax, gray + (black * 16)
    call SetTextColor
    
    mov edx, offset ballempty      
    call writestring

    cmp ball_yDirection, 0
    je toUp

    inc ball_y ; ball coming down
    cmp ball_xDirection, 1
    jne leftmove
    call toright
    jmp comparenow
    leftmove:
    call toleft
    comparenow:
    ;if the ball touches the platform i.e. misses the striker and goes below that (bottom border is at 21)
    call PaddleCollisionWithBall
    cmp cl, 2
    jne dorest

    call compareEachBrick
    call display_ball
    ret

    dorest:
    cmp cl, 0
    je changeDirection
    call initialize_ball
    mov eax, 2
    call RandomRange
    mov ball_xdirection, al
    mov eax, 2
    call RandomRange
    mov ball_ydirection, al
    mov eax, 30
    call randomRange
    mov ball_x, al
    ret
    toUp:
    dec ball_y

    cmp ball_xDirection, 1
    jne leftmove1
    call toright
    jmp comparenow1
    leftmove1:
    call toleft
    comparenow1:
    ;if the ball reaches the top border
    cmp byte ptr [ball_y], 2
    jbe changeDirection
    call compareEachBrick
    call display_ball
    ret

changeDirection:
    cmp ball_ydirection, 1
    je appoint0
    mov ball_ydirection, 1
    ret
    appoint0:
    mov ball_ydirection, 0
    ;mov bool, 0
    ret

reset_ball_position:
    mov bool, 1
    call initialize_ball
    call display_ball
    ;dec lives_count
    
    ret
update_ball ENDP



;-------------- DISPLAYING THE BRICKS ----------------------------
resetBrick PROC
    call gotoxy
    MOV edx, offset bricknone
    call writestring
    ret
resetBrick endP
compareEachBrick PROC      ; for brick7 score is 1, for brick 2 is 8, for all bricks is 5
    cmp brick1bool, 1
    jne check2
    mov ecx, 0
    mov ch, brick1_y
    mov cl, brick1_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check2
    mov brick1bool, 0
    add score, 1
    mov dl, brick1_x
    mov dh, brick1_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check2:
    cmp brick2bool, 1
    jne check3
    mov ecx, 0
    mov ch, brick2_y
    mov cl, brick2_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check3
    mov brick2bool, 0
    add score, 8
    mov dl, brick2_x
    mov dh, brick2_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check3:
    cmp brick3bool, 1
    jne check4
    mov ecx, 0
    mov ch, brick3_y
    mov cl, brick3_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check4
    mov brick3bool, 0
    add score, 5
    mov dl, brick3_x
    mov dh, brick3_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check4:
    cmp brick4bool, 1
    jne check5
    mov ecx, 0
    mov ch, brick4_y
    mov cl, brick4_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check5
    mov brick4bool, 0
    add score, 5
    mov dl, brick4_x
    mov dh, brick4_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check5:
    cmp brick5bool, 1
    jne check6
    mov ecx, 0
    mov ch, brick5_y
    mov cl, brick5_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check6
    mov brick5bool, 0
    add score, 5
    mov dl, brick5_x
    mov dh, brick5_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check6:
    cmp brick6bool, 1
    jne check7
    mov ecx, 0
    mov ch, brick6_y
    mov cl, brick6_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check7
    mov brick6bool, 0
    add score, 5
    mov dl, brick6_x
    mov dh, brick6_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check7:
    cmp brick7bool, 1
    jne cont
    mov ecx, 0
    mov ch, brick7_y
    mov cl, brick7_x
    call CheckBrickCollision
    cmp ecx, 1
    jne cont
    mov brick7bool, 0
    add score, 1
    mov dl, brick7_x
    mov dh, brick7_y
    call resetBrick
    call invertBallY
    call display_score
    cont:
    ret
compareEachBrick endP

invertBallY proc
    cmp ball_yDirection, 1
    je appoint0
    mov ball_ydirection, 1
    ret
    appoint0:
    mov ball_ydirection, 0
    ret
invertBallY endP
CheckBrickCollision PROC
    cmp ch, ball_y
    jne nocollision
    cmp ball_x, cl
    jl nocollision
    ;mov bl, ball_x
    add cl, 8
    cmp ball_x, cl
    jg nocollision
    MOV ecx, 1
    ret
    nocollision:
    MOV ecx, 0
    ret
CheckBrickCollision endP
display_bricks PROC

        mov  eax,green+(black*16)
        call SetTextColor

    ; Display brick1
    cmp brick1bool, 1
    jne move2
     mov  eax,blue+(blue*16)
    call SetTextColor
    MOV DL, [brick1_x]    ; Load X coordinate for brick1
    MOV DH, [brick1_y]    ; Load Y coordinate for brick1
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick1
    CALL WriteString      ; Display brick1


    move2:
    cmp brick2bool, 1
    jne move3
    mov  eax,magenta+(magenta*16)
    call SetTextColor
    MOV DL, [brick2_x]    ; Load X coordinate for brick2
    MOV DH, [brick2_y]    ; Load Y coordinate for brick2
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick2
    CALL WriteString      ; Display brick2

    move3:
    cmp brick3bool, 1
    jne move4
   mov  eax,blue+(blue*16)
    call SetTextColor
    MOV DL, [brick3_x]    ; Load X coordinate for brick3
    MOV DH, [brick3_y]    ; Load Y coordinate for brick3
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick3
    CALL WriteString      ; Display brick3
    
    move4:
    cmp brick4bool, 1
    jne move5
    ; Display brick4
   mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick4_x]    ; Load X coordinate for brick4
    MOV DH, [brick4_y]    ; Load Y coordinate for brick4
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick4
    CALL WriteString      ; Display brick4

    move5:
    cmp brick5bool, 1
    jne move6
    ; Display brick5
    mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick5_x]    ; Load X coordinate for brick5
    MOV DH, [brick5_y]    ; Load Y coordinate for brick5
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick5
    CALL WriteString      ; Display brick5


    move6:
    cmp brick6bool, 1
    jne move7
     mov  eax,magenta+(magenta*16)
    call SetTextColor
    MOV DL, [brick6_x]    ; Load X coordinate for brick6
    MOV DH, [brick6_y]    ; Load Y coordinate for brick6
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick6
    CALL WriteString      ; Display brick6


    move7:
    cmp brick7bool, 1
    jne returnnow
    mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick7_x]    ; Load X coordinate for brick7
    MOV DH, [brick7_y]    ; Load Y coordinate for brick7
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick7
    CALL WriteString      ; Display brick7


   
    returnnow:
    RET

display_bricks ENDP


; ----------- PADDLE DISPLAY && PADDLE UPDATE --------------------------

  initialize_paddle PROC
    mov paddle_x, 15
    ret
  initialize_paddle ENDP


display_paddle PROC
    mov dx, 0
    mov dl, byte ptr [paddle_x]
    mov dh, 21
    call gotoxy

    ; setting a different color for the paddle 
      mov  eax,red+(black*16)
      call SetTextColor  
      
    ; display the paddle 
    mov edx, offset paddle 
    call writestring

    ret
display_paddle ENDP
display_paddleEmpty PROC
    mov dx, 0
    mov dl, byte ptr [paddle_x]
    mov dh, 21
    call gotoxy

    ; setting a different color for the paddle 
      mov  eax,red+(black*16)
      call SetTextColor  
      
    ; display the paddle 
    mov edx, offset paddleEmpty 
    call writestring

    ret
display_paddleEmpty ENDP


; ---------- DISPLAYING BORDER -------------


display_borders PROC

        ;call clrscr
        mov dl, 0
        mov dh, 0
        call gotoxy
        mov  eax,yellow+(black*16)
        call SetTextColor
        mov edx, offset border
        call writestring
        call crlf

        mov  eax,white+(black*16)
        call SetTextColor

        call crlf
        call crlf
ret

display_borders ENDP 



;------- DISPLAYING CREDITS -------------
display_credits PROC
  
    call clrscr
    mov edx, offset credits_string 
    call writestring
    call WaitForEnter
    jmp menuLoop
   
display_credits ENDP

;-------- DISPLAYING THE ABOUT PAGE ---------------
display_about PROC

        call clrscr
        mov edx, offset about_string
        call writestring
        call WaitForEnter
        call menuLoop

display_about ENDP

; -------- DISPLAYING THE INSTRUCTIONSS GAME ------------
display_instructions PROC

        call clrscr
        mov edx, offset instructions_string
        call writestring
        call WaitForEnter
        call menuLoop

display_instructions ENDP

menuLoop : 

; -------- MENU DISPLAY FUNCTION , with selector arrow moving ------------
menu_navigation PROC
menuInputLoop:
    call clrscr
    call display_menu

    call ReadChar
    cmp al, '1'
    je set_menu0
    cmp al, '2'
    je set_menu1
    cmp al, '3'
    je set_menu2
    cmp al, '4'
    je set_menu3
    cmp al, '5'
    je set_menu4
    cmp al, '6'
    je set_menu5
    cmp al, 0Dh ; enter ki ascii key
    je select_option
    jmp menuLoop

set_menu0:
    mov currentMenuIndex, 0
    jmp menuInputLoop
set_menu1:
    mov currentMenuIndex, 1
    jmp menuInputLoop
set_menu2:
    mov currentMenuIndex, 2
    jmp menuInputLoop
set_menu3:
    mov currentMenuIndex, 3
    jmp menuInputLoop
set_menu4:
    mov currentMenuIndex, 4
    jmp menuInputLoop
set_menu5:
    mov currentMenuIndex, 5
    jmp menuInputLoop

    ;option selecting
    select_option : 
        mov eax, currentMenuIndex
        cmp eax, 0
        je level_decider
        cmp eax, 1
        je display_credits       ; for more options later as well 
        cmp eax, 2
        je display_about
        cmp eax, 4
        je display_instructions
        cmp eax, 6
        je end_game
        jmp menuInputLoop   


display_menu PROC
    mov eax, currentMenuIndex
    cmp eax, 0
    je display_menu0
    cmp eax, 1
    je display_menu1
    cmp eax, 2
    je display_menu2
    cmp eax, 3
    je display_menu3
    cmp eax, 4
    je display_menu4
    cmp eax, 5
    je display_menu5
    ret

display_menu0:
    mov edx, offset menu0
    call writestring
    ret
display_menu1:
    mov edx, offset menu1
    call writestring
    ret
display_menu2:
    mov edx, offset menu2
    call writestring
    ret
display_menu3:
    mov edx, offset menu3
    call writestring
    ret
display_menu4:
    mov edx, offset menu4
    call writestring
    ret
display_menu5:
    mov edx, offset menu5
    call writestring
    ret

display_menu ENDP
menu_navigation ENDP

level_decider PROC

        mov edx, offset level_prompt
        call writestring
        call readint

        mov level_ans, eax

        mov eax, level_ans
        cmp eax, 1
        je game
        cmp ax, 2
        je game2
        cmp ax, 3
        je game3


ret
level_decider ENDP


; ------- EXIT GAME -----------
exit_game PROC

ret
exit_game ENDP

; ------ TITLE PAGE DISPLAY ----------
DisplayWelcomeMessage PROC
    
    mov edx, OFFSET WelcomeMessage
    call WriteString

    ret
DisplayWelcomeMessage ENDP


; ------ ENTER KEY PRESSING ------------
WaitForEnter PROC
    
WaitForEnterLoop:
    call ReadChar
    cmp al, 0Dh         
    jne WaitForEnterLoop

    ret
WaitForEnter ENDP


;------- ARROW KEY MOVEMENT FOR PADDLE ---------
check_arrow_keys PROC
   
   mov eax, 0 
   call readkey  ; reads urkeyboard input

   cmp al, 0   ; 0 is if no key is pressed , so comparing with that
   je no_key_pressed

        cmp al, "a"  ; left arrow key 
        je move_left

        cmp al, "d" ; right arrow key 
        je move_right 

        jmp no_key_pressed ; jump if no arrow key pressed

    move_left :
       call Display_paddleEmpty

       mov ax, paddle_x
       cmp ax, 1
       jbe no_key_pressed
       dec paddle_x
       jmp no_key_pressed

    move_right :
        call Display_paddleEmpty

        mov ax, paddle_x
        cmp ax, 60  ; if at edge 
        jae no_key_pressed
        inc paddle_x

no_key_pressed : 
       ret

check_arrow_keys ENDP

; --------------- HEART DISPLAY AND LIVES TRACKING -------------------
display_heart PROC


    ; setting colour red 
    mov  eax,red+(black*16)
    call SetTextColor

    mov dl, 72
    mov dh, 11
    call gotoxy

    mov edx, offset lives_msg
    call writestring
   

    mov dl, heart_x
    mov dh, heart_y
    call gotoxy
    
    mov edx, offset heart3
    call writestring

    mov dl, 75
    mov dh , 8
    call gotoxy 
    mov edx, offset buffer_name
    call writestring


    mov dl, 75
    mov dh , 5
    call gotoxy 
    mov edx, offset l1
    call writestring

    mov  eax,white+(black*16)
    call SetTextColor

    ret
display_heart ENDP 


update_lives PROC
    
    mov ax, lives_count
    cmp ax, 3
    je display_3_hearts

    mov ax, lives_count
    cmp ax, 2
    je display_2_hearts

    mov ax, lives_count
    cmp ax, 1
    je display_1_heart

    mov ax, lives_count
    cmp ax, 0
    je exit_game  ; Call exit_game if lives_count is 0

    ; Handle invalid lives_count or any other unexpected value
    jmp display_no_hearts

            display_3_hearts:
                mov edx, offset heart3
                jmp display_lives

            display_2_hearts:
                mov edx, offset heart2
                jmp display_lives

            display_1_heart:
                mov edx, offset heart1
                jmp display_lives

display_no_hearts:
    ; You can use this section to handle other unexpected values, if needed
    ; In this case, we'll just exit the game if lives_count is 0
    ret

display_lives:
    mov dl, heart_x
    mov dh, heart_y
    call gotoxy
    call writestring

    ret
update_lives ENDP


; -------------------------------------------------------------------------------------------------- LEVEL 2 --------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

level_two PROC

        ; ------------- GAME ----------------------
game2 PROC

         
    mov edx, OFFSET name_prompt
    call writestring

   
    mov edx, OFFSET buffer_name 
    mov ecx, 100             
    call ReadString

    ; Initialize game
    call initialize_game2

    ; Game loop
game_loop:
    call update_ball2
    ;call update_lives
    call update_game2
    call render_game2
    ;call exit_game


    jmp game_loop

    ret
game2 ENDP


; --------- initialise the game ----------------
initialize_game2 PROC
    
   
    call display_heart2
    call initialize_paddle2
    call initialize_ball2
    call display_borders2
    call display_paddle2
    call display_bricks2
    call display_score2
    ret
initialize_game2 ENDP


; ----- UPDATE GAME STATE ---------
update_game2 PROC
   call check_arrow_keys      
   ret
update_game2 ENDP

; ----------- RENDERING THE GAME -------------------
render_game2 PROC
    ;call clrscr
    ;call display_borders
    call display_ball2
    ;call display_heart
    call display_paddle2
    call display_bricks2
    
    MOV eax, 0
    mov ax, delayspeed
    sub ax, 20
    call delay
    ; Add other rendering routines like drawing the ball, updating scores, etc.
    ret
render_game2 ENDP


; --------- DISPLAYING, UPDATING THE BALL ------------------

; initialise ball 
initialize_ball2 PROC
    
    mov ball_x, 18
    mov ball_y, 15
    
    ret
initialize_ball2 ENDP


display_ball2 PROC

    mov ax, 0
    mov dx, 0
    mov al, byte ptr [ball_x]  
    mov dl, al                
    mov al, byte ptr [ball_y]  
    mov dh, al                

    call gotoxy                
    
    mov eax, gray + (black * 16)
    call SetTextColor
    
    mov edx, offset ball      
    call writestring          
    ret

ret
display_ball2 ENDP

end_game2 PROC

mov edx, offset end_string
call writestring

exit

end_game2 ENDP

display_win2 PROC

    call clrscr
    call clrscr
    call clrscr
    mov dl, 75
    mov dh, 11
    call gotoxy
    mov edx, offset winMessage
    call writestring
    
    ret
display_win2 ENDP

display_score2 PROC
    mov dl, 72
    mov dh, 13
    call gotoxy

    mov edx, offset score_msg
    call writestring
    mov  eax,0
    mov al, score
    cmp al, 25
    jge display_win2
    
    call WriteInt
    ret
display_score2 endp

; --------- UPDATE BALL POSITION -----------
toright2 PROC
    cmp ball_x, 65
    jne invertdirec
    mov ball_xdirection, 0
    call toleft
    ret
    invertdirec:
    inc ball_x
    ret
toright2 ENDP
toleft2 PROC
    cmp ball_x, 1
    jne dinvertdirec
    mov ball_xdirection, 1
    call toright
    ret
    dinvertdirec:
    dec ball_x
    ret
toleft2 ENDP
PaddleCollisionWithBall2 proc
    cmp ball_y, 21
    jne noneed1
    mov ax, paddle_x
    cmp ball_x, al
    jl noneed
    add al, 7
    cmp ball_x, al
    jg noneed
    mov cl, 0
    ret
    noneed:
    mov cl, 1
    ret
    noneed1:
    mov cl, 2
    ret
PaddleCollisionWithBall2  endP
update_ball2 PROC
    mov ax, 0
    mov dx, 0
    mov al, byte ptr [ball_x]  
    mov dl, al                
    mov al, byte ptr [ball_y]  
    mov dh, al                

    call gotoxy                
    
    mov eax, gray + (black * 16)
    call SetTextColor
    
    mov edx, offset ballempty      
    call writestring

    cmp ball_yDirection, 0
    je toUp

    inc ball_y ; ball coming down
    cmp ball_xDirection, 1
    jne leftmove
    call toright
    jmp comparenow
    leftmove:
    call toleft
    comparenow:
    ;if the ball touches the platform i.e. misses the striker and goes below that (bottom border is at 21)
    call PaddleCollisionWithBall
    cmp cl, 2
    jne dorest

    call compareEachBrick
    call display_ball
    ret

    dorest:
    cmp cl, 0
    je changeDirection
    call initialize_ball
    mov eax, 2
    call RandomRange
    mov ball_xdirection, al
    mov eax, 2
    call RandomRange
    mov ball_ydirection, al
    mov eax, 30
    call randomRange
    mov ball_x, al
    ret
    toUp:
    dec ball_y

    cmp ball_xDirection, 1
    jne leftmove1
    call toright
    jmp comparenow1
    leftmove1:
    call toleft
    comparenow1:
    ;if the ball reaches the top border
    cmp byte ptr [ball_y], 2
    jbe changeDirection
    call compareEachBrick
    call display_ball
    ret

changeDirection:
    cmp ball_ydirection, 1
    je appoint0
    mov ball_ydirection, 1
    ret
    appoint0:
    mov ball_ydirection, 0
    ;mov bool, 0
    ret

reset_ball_position:
    mov bool, 1
    call initialize_ball
    call display_ball
    ;dec lives_count
    
    ret
update_ball2 ENDP



;-------------- DISPLAYING THE BRICKS ----------------------------
resetBrick2 PROC
    call gotoxy
    MOV edx, offset bricknone
    call writestring
    ret
resetBrick2 endP
compareEachBrick2 PROC      ; for brick7 score is 1, for brick 2 is 8, for all bricks is 5
    cmp brick1bool, 1
    jne check2
    mov ecx, 0
    mov ch, brick1_y
    mov cl, brick1_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check2
    mov brick1bool, 0
    add score, 1
    mov dl, brick1_x
    mov dh, brick1_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check2:
    cmp brick2bool, 1
    jne check3
    mov ecx, 0
    mov ch, brick2_y
    mov cl, brick2_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check3
    mov brick2bool, 0
    add score, 8
    mov dl, brick2_x
    mov dh, brick2_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check3:
    cmp brick3bool, 1
    jne check4
    mov ecx, 0
    mov ch, brick3_y
    mov cl, brick3_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check4
    mov brick3bool, 0
    add score, 5
    mov dl, brick3_x
    mov dh, brick3_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check4:
    cmp brick4bool, 1
    jne check5
    mov ecx, 0
    mov ch, brick4_y
    mov cl, brick4_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check5
    mov brick4bool, 0
    add score, 5
    mov dl, brick4_x
    mov dh, brick4_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check5:
    cmp brick5bool, 1
    jne check6
    mov ecx, 0
    mov ch, brick5_y
    mov cl, brick5_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check6
    mov brick5bool, 0
    add score, 5
    mov dl, brick5_x
    mov dh, brick5_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check6:
    cmp brick6bool, 1
    jne check7
    mov ecx, 0
    mov ch, brick6_y
    mov cl, brick6_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check7
    mov brick6bool, 0
    add score, 5
    mov dl, brick6_x
    mov dh, brick6_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check7:
    cmp brick7bool, 1
    jne cont
    mov ecx, 0
    mov ch, brick7_y
    mov cl, brick7_x
    call CheckBrickCollision
    cmp ecx, 1
    jne cont
    mov brick7bool, 0
    add score, 1
    mov dl, brick7_x
    mov dh, brick7_y
    call resetBrick
    call invertBallY
    call display_score
    cont:
    ret
compareEachBrick2 endP

invertBallY2 proc
    cmp ball_yDirection, 1
    je appoint0
    mov ball_ydirection, 1
    ret
    appoint0:
    mov ball_ydirection, 0
    ret
invertBallY2 endP
CheckBrickCollision2 PROC
    cmp ch, ball_y
    jne nocollision
    cmp ball_x, cl
    jl nocollision
    ;mov bl, ball_x
    add cl, 8
    cmp ball_x, cl
    jg nocollision
    MOV ecx, 1
    ret
    nocollision:
    MOV ecx, 0
    ret
CheckBrickCollision2 endP
display_bricks2 PROC

        mov  eax,green+(black*16)
        call SetTextColor

    ; Display brick1
    cmp brick1bool, 1
    jne move2
     mov  eax,blue+(blue*16)
    call SetTextColor
    MOV DL, [brick1_x]    ; Load X coordinate for brick1
    MOV DH, [brick1_y]    ; Load Y coordinate for brick1
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick1
    CALL WriteString      ; Display brick1


    move2:
    cmp brick2bool, 1
    jne move3
    mov  eax,magenta+(magenta*16)
    call SetTextColor
    MOV DL, [brick2_x]    ; Load X coordinate for brick2
    MOV DH, [brick2_y]    ; Load Y coordinate for brick2
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick2
    CALL WriteString      ; Display brick2

    move3:
    cmp brick3bool, 1
    jne move4
   mov  eax,blue+(blue*16)
    call SetTextColor
    MOV DL, [brick3_x]    ; Load X coordinate for brick3
    MOV DH, [brick3_y]    ; Load Y coordinate for brick3
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick3
    CALL WriteString      ; Display brick3
    
    move4:
    cmp brick4bool, 1
    jne move5
    ; Display brick4
   mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick4_x]    ; Load X coordinate for brick4
    MOV DH, [brick4_y]    ; Load Y coordinate for brick4
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick4
    CALL WriteString      ; Display brick4

    move5:
    cmp brick5bool, 1
    jne move6
    ; Display brick5
    mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick5_x]    ; Load X coordinate for brick5
    MOV DH, [brick5_y]    ; Load Y coordinate for brick5
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick5
    CALL WriteString      ; Display brick5


    move6:
    cmp brick6bool, 1
    jne move7
     mov  eax,magenta+(magenta*16)
    call SetTextColor
    MOV DL, [brick6_x]    ; Load X coordinate for brick6
    MOV DH, [brick6_y]    ; Load Y coordinate for brick6
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick6
    CALL WriteString      ; Display brick6


    move7:
    cmp brick7bool, 1
    jne returnnow
    mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick7_x]    ; Load X coordinate for brick7
    MOV DH, [brick7_y]    ; Load Y coordinate for brick7
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick7
    CALL WriteString      ; Display brick7


   
    returnnow:
    RET

display_bricks2 ENDP


; ----------- PADDLE DISPLAY && PADDLE UPDATE --------------------------

  initialize_paddle2 PROC
    mov paddle_x, 15
    ret
  initialize_paddle2 ENDP


display_paddle2 PROC
    mov dx, 0
    mov dl, byte ptr [paddle_x]
    mov dh, 21
    call gotoxy

    ; setting a different color for the paddle 
      mov  eax,red+(black*16)
      call SetTextColor  
      
    ; display the paddle 
    mov edx, offset paddle2
    call writestring

    ret
display_paddle2 ENDP
display_paddleEmpty2 PROC
    mov dx, 0
    mov dl, byte ptr [paddle_x]
    mov dh, 21
    call gotoxy

    ; setting a different color for the paddle 
      mov  eax,red+(black*16)
      call SetTextColor  
      
    ; display the paddle 
    mov edx, offset paddleEmpty 
    call writestring

    ret
display_paddleEmpty2 ENDP


; ---------- DISPLAYING BORDER -------------


display_borders2 PROC

        ;call clrscr
        mov dl, 0
        mov dh, 0
        call gotoxy
        mov  eax,yellow+(black*16)
        call SetTextColor
        mov edx, offset border
        call writestring
        call crlf

        mov  eax,white+(black*16)
        call SetTextColor

        call crlf
        call crlf
ret

display_borders2 ENDP 





; --------------- HEART DISPLAY AND LIVES TRACKING -------------------
display_heart2 PROC


    ; setting colour red 
    mov  eax,red+(black*16)
    call SetTextColor

    mov dl, 72
    mov dh, 11
    call gotoxy

    mov edx, offset lives_msg
    call writestring
   

    mov dl, heart_x
    mov dh, heart_y
    call gotoxy
    
    mov edx, offset heart3
    call writestring

    mov dl, 75
    mov dh , 8
    call gotoxy 
    mov edx, offset buffer_name
    call writestring

    mov dl, 75
    mov dh , 5
    call gotoxy 
    mov edx, offset l2
    call writestring

    mov  eax,white+(black*16)
    call SetTextColor

    ret
display_heart2 ENDP 


update_lives2 PROC
    
    mov ax, lives_count
    cmp ax, 3
    je display_3_hearts

    mov ax, lives_count
    cmp ax, 2
    je display_2_hearts

    mov ax, lives_count
    cmp ax, 1
    je display_1_heart

    mov ax, lives_count
    cmp ax, 0
    je exit_game  ; Call exit_game if lives_count is 0

    ; Handle invalid lives_count or any other unexpected value
    jmp display_no_hearts

            display_3_hearts:
                mov edx, offset heart3
                jmp display_lives

            display_2_hearts:
                mov edx, offset heart2
                jmp display_lives

            display_1_heart:
                mov edx, offset heart1
                jmp display_lives

display_no_hearts:
    ; You can use this section to handle other unexpected values, if needed
    ; In this case, we'll just exit the game if lives_count is 0
    ret

display_lives:
    mov dl, heart_x
    mov dh, heart_y
    call gotoxy
    call writestring

    ret
update_lives2 ENDP

    
level_two ENDP


level_3 PROC

        ; ------------- GAME ----------------------
game3 PROC

         
    mov edx, OFFSET name_prompt
    call writestring

   
    mov edx, OFFSET buffer_name 
    mov ecx, 100             
    call ReadString

    ; Initialize game
    call initialize_game3

    ; Game loop
game_loop:
    call update_ball3
    ;call update_lives
    call update_game3
    call render_game3
    ;call exit_game


    jmp game_loop

    ret
game3 ENDP


; --------- initialise the game ----------------
initialize_game3 PROC
    
   
    call display_heart3
    call initialize_paddle3
    call initialize_ball3
    call display_borders3
    call display_paddle3
    call display_bricks3
    call display_score3
    ret
initialize_game3 ENDP


; ----- UPDATE GAME STATE ---------
update_game3 PROC
   call check_arrow_keys      
   ret
update_game3 ENDP

; ----------- RENDERING THE GAME -------------------
render_game3 PROC
    ;call clrscr
    ;call display_borders
    call display_ball3
    ;call display_heart
    call display_paddle3
    call display_bricks3
    
    MOV eax, 0
    mov ax, delayspeed
    sub ax, 20
    call delay
    ; Add other rendering routines like drawing the ball, updating scores, etc.
    ret
render_game3 ENDP


; --------- DISPLAYING, UPDATING THE BALL ------------------

; initialise ball 
initialize_ball3 PROC
    
    mov ball_x, 18
    mov ball_y, 15
    
    ret
initialize_ball3 ENDP


display_ball3 PROC

    mov ax, 0
    mov dx, 0
    mov al, byte ptr [ball_x]  
    mov dl, al                
    mov al, byte ptr [ball_y]  
    mov dh, al                

    call gotoxy                
    
    mov eax, gray + (black * 16)
    call SetTextColor
    
    mov edx, offset ball      
    call writestring          
    ret

ret
display_ball3 ENDP

end_game3 PROC

mov edx, offset end_string
call writestring

exit

end_game3 ENDP

display_win3 PROC

    call clrscr
    call clrscr
    call clrscr
    mov dl, 75
    mov dh, 11
    call gotoxy
    mov edx, offset winMessage
    call writestring
    
    ret
display_win3 ENDP

display_score3 PROC
    mov dl, 72
    mov dh, 13
    call gotoxy

    mov edx, offset score_msg
    call writestring
    mov  eax,0
    mov al, score
    cmp al, 25
    
    call WriteInt
    ret
display_score3 endp

; --------- UPDATE BALL POSITION -----------
toright3 PROC
    cmp ball_x, 65
    jne invertdirec
    mov ball_xdirection, 0
    call toleft
    ret
    invertdirec:
    inc ball_x
    ret
toright3 ENDP
toleft3 PROC
    cmp ball_x, 1
    jne dinvertdirec
    mov ball_xdirection, 1
    call toright
    ret
    dinvertdirec:
    dec ball_x
    ret
toleft3 ENDP
PaddleCollisionWithBall3 proc
    cmp ball_y, 21
    jne noneed1
    mov ax, paddle_x
    cmp ball_x, al
    jl noneed
    add al, 7
    cmp ball_x, al
    jg noneed
    mov cl, 0
    ret
    noneed:
    mov cl, 1
    ret
    noneed1:
    mov cl, 2
    ret
PaddleCollisionWithBall3  endP
update_ball3 PROC
    mov ax, 0
    mov dx, 0
    mov al, byte ptr [ball_x]  
    mov dl, al                
    mov al, byte ptr [ball_y]  
    mov dh, al                

    call gotoxy                
    
    mov eax, gray + (black * 16)
    call SetTextColor
    
    mov edx, offset ballempty      
    call writestring

    cmp ball_yDirection, 0
    je toUp

    inc ball_y ; ball coming down
    cmp ball_xDirection, 1
    jne leftmove
    call toright
    jmp comparenow
    leftmove:
    call toleft
    comparenow:
    ;if the ball touches the platform i.e. misses the striker and goes below that (bottom border is at 21)
    call PaddleCollisionWithBall
    cmp cl, 2
    jne dorest

    call compareEachBrick
    call display_ball
    ret

    dorest:
    cmp cl, 0
    je changeDirection
    call initialize_ball
    mov eax, 2
    call RandomRange
    mov ball_xdirection, al
    mov eax, 2
    call RandomRange
    mov ball_ydirection, al
    mov eax, 30
    call randomRange
    mov ball_x, al
    ret
    toUp:
    dec ball_y

    cmp ball_xDirection, 1
    jne leftmove1
    call toright
    jmp comparenow1
    leftmove1:
    call toleft
    comparenow1:
    ;if the ball reaches the top border
    cmp byte ptr [ball_y], 2
    jbe changeDirection
    call compareEachBrick
    call display_ball
    ret

changeDirection:
    cmp ball_ydirection, 1
    je appoint0
    mov ball_ydirection, 1
    ret
    appoint0:
    mov ball_ydirection, 0
    ;mov bool, 0
    ret

reset_ball_position:
    mov bool, 1
    call initialize_ball
    call display_ball
    ;dec lives_count
    
    ret
update_ball3 ENDP



;-------------- DISPLAYING THE BRICKS ----------------------------
resetBrick3 PROC
    call gotoxy
    MOV edx, offset bricknone
    call writestring
    ret
resetBrick3 endP
compareEachBrick3 PROC      ; for brick7 score is 1, for brick 2 is 8, for all bricks is 5
    cmp brick1bool, 1
    jne check2
    mov ecx, 0
    mov ch, brick1_y
    mov cl, brick1_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check2
    mov brick1bool, 0
    add score, 1
    mov dl, brick1_x
    mov dh, brick1_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check2:
    cmp brick2bool, 1
    jne check3
    mov ecx, 0
    mov ch, brick2_y
    mov cl, brick2_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check3
    mov brick2bool, 0
    add score, 8
    mov dl, brick2_x
    mov dh, brick2_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check3:
    cmp brick3bool, 1
    jne check4
    mov ecx, 0
    mov ch, brick3_y
    mov cl, brick3_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check4
    mov brick3bool, 0
    add score, 5
    mov dl, brick3_x
    mov dh, brick3_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check4:
    cmp brick4bool, 1
    jne check5
    mov ecx, 0
    mov ch, brick4_y
    mov cl, brick4_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check5
    mov brick4bool, 0
    add score, 5
    mov dl, brick4_x
    mov dh, brick4_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check5:
    cmp brick5bool, 1
    jne check6
    mov ecx, 0
    mov ch, brick5_y
    mov cl, brick5_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check6
    mov brick5bool, 0
    add score, 5
    mov dl, brick5_x
    mov dh, brick5_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check6:
    cmp brick6bool, 1
    jne check7
    mov ecx, 0
    mov ch, brick6_y
    mov cl, brick6_x
    call CheckBrickCollision
    cmp ecx, 1
    jne check7
    mov brick6bool, 0
    add score, 5
    mov dl, brick6_x
    mov dh, brick6_y
    call resetBrick
    call invertBallY
    call display_score
    jmp cont

    check7:
    cmp brick7bool, 1
    jne cont
    mov ecx, 0
    mov ch, brick7_y
    mov cl, brick7_x
    call CheckBrickCollision
    cmp ecx, 1
    jne cont
    mov brick7bool, 0
    add score, 1
    mov dl, brick7_x
    mov dh, brick7_y
    call resetBrick
    call invertBallY
    call display_score
    cont:
    ret
compareEachBrick3 endP

invertBallY3 proc
    cmp ball_yDirection, 1
    je appoint0
    mov ball_ydirection, 1
    ret
    appoint0:
    mov ball_ydirection, 0
    ret
invertBallY3 endP
CheckBrickCollision3 PROC
    cmp ch, ball_y
    jne nocollision
    cmp ball_x, cl
    jl nocollision
    ;mov bl, ball_x
    add cl, 8
    cmp ball_x, cl
    jg nocollision
    MOV ecx, 1
    ret
    nocollision:
    MOV ecx, 0
    ret
CheckBrickCollision3 endP
display_bricks3 PROC

        mov  eax,green+(black*16)
        call SetTextColor

    ; Display brick1
    cmp brick1bool, 1
    jne move2
     mov  eax,blue+(blue*16)
    call SetTextColor
    MOV DL, [brick1_x]    ; Load X coordinate for brick1
    MOV DH, [brick1_y]    ; Load Y coordinate for brick1
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick1
    CALL WriteString      ; Display brick1


    move2:
    cmp brick2bool, 1
    jne move3
    mov  eax,magenta+(magenta*16)
    call SetTextColor
    MOV DL, [brick2_x]    ; Load X coordinate for brick2
    MOV DH, [brick2_y]    ; Load Y coordinate for brick2
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick2
    CALL WriteString      ; Display brick2

    move3:
    cmp brick3bool, 1
    jne move4
   mov  eax,blue+(blue*16)
    call SetTextColor
    MOV DL, [brick3_x]    ; Load X coordinate for brick3
    MOV DH, [brick3_y]    ; Load Y coordinate for brick3
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick3
    CALL WriteString      ; Display brick3
    
    move4:
    cmp brick4bool, 1
    jne move5
    ; Display brick4
   mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick4_x]    ; Load X coordinate for brick4
    MOV DH, [brick4_y]    ; Load Y coordinate for brick4
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick4
    CALL WriteString      ; Display brick4

    move5:
    cmp brick5bool, 1
    jne move6
    ; Display brick5
    mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick5_x]    ; Load X coordinate for brick5
    MOV DH, [brick5_y]    ; Load Y coordinate for brick5
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick5
    CALL WriteString      ; Display brick5


    move6:
    cmp brick6bool, 1
    jne move7
     mov  eax,magenta+(magenta*16)
    call SetTextColor
    MOV DL, [brick6_x]    ; Load X coordinate for brick6
    MOV DH, [brick6_y]    ; Load Y coordinate for brick6
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick6
    CALL WriteString      ; Display brick6


    move7:
    cmp brick7bool, 1
    jne returnnow
    mov  eax,cyan+(cyan*16)
    call SetTextColor
    MOV DL, [brick7_x]    ; Load X coordinate for brick7
    MOV DH, [brick7_y]    ; Load Y coordinate for brick7
    CALL Gotoxy           ; Move cursor to (X, Y)
    MOV EDX, OFFSET brick7
    CALL WriteString      ; Display brick7


   
    returnnow:
    RET

display_bricks3 ENDP


; ----------- PADDLE DISPLAY && PADDLE UPDATE --------------------------

  initialize_paddle3 PROC
    mov paddle_x, 15
    ret
  initialize_paddle3 ENDP


display_paddle3 PROC
    mov dx, 0
    mov dl, byte ptr [paddle_x]
    mov dh, 21
    call gotoxy

    ; setting a different color for the paddle 
      mov  eax,red+(black*16)
      call SetTextColor  
      
    ; display the paddle 
    mov edx, offset paddle2
    call writestring

    ret
display_paddle3 ENDP
display_paddleEmpty3 PROC
    mov dx, 0
    mov dl, byte ptr [paddle_x]
    mov dh, 21
    call gotoxy

    ; setting a different color for the paddle 
      mov  eax,red+(black*16)
      call SetTextColor  
      
    ; display the paddle 
    mov edx, offset paddleEmpty 
    call writestring

    ret
display_paddleEmpty3 ENDP


; ---------- DISPLAYING BORDER -------------


display_borders3 PROC

        ;call clrscr
        mov dl, 0
        mov dh, 0
        call gotoxy
        mov  eax,yellow+(black*16)
        call SetTextColor
        mov edx, offset border
        call writestring
        call crlf

        mov  eax,white+(black*16)
        call SetTextColor

        call crlf
        call crlf
ret

display_borders3 ENDP 





; --------------- HEART DISPLAY AND LIVES TRACKING -------------------
display_heart3 PROC


    ; setting colour red 
    mov  eax,red+(black*16)
    call SetTextColor

    mov dl, 72
    mov dh, 11
    call gotoxy

    mov edx, offset lives_msg
    call writestring
   

    mov dl, heart_x
    mov dh, heart_y
    call gotoxy
    
    mov edx, offset heart3
    call writestring

    mov dl, 75
    mov dh , 8
    call gotoxy 
    mov edx, offset buffer_name
    call writestring

    mov dl, 75
    mov dh , 5
    call gotoxy 
    mov edx, offset l2
    call writestring

    mov  eax,white+(black*16)
    call SetTextColor

    ret
display_heart3 ENDP 


update_lives3 PROC
    
    mov ax, lives_count
    cmp ax, 3
    je display_3_hearts

    mov ax, lives_count
    cmp ax, 2
    je display_2_hearts

    mov ax, lives_count
    cmp ax, 1
    je display_1_heart

    mov ax, lives_count
    cmp ax, 0
    je exit_game  ; Call exit_game if lives_count is 0

    ; Handle invalid lives_count or any other unexpected value
    jmp display_no_hearts

            display_3_hearts:
                mov edx, offset heart3
                jmp display_lives

            display_2_hearts:
                mov edx, offset heart2
                jmp display_lives

            display_1_heart:
                mov edx, offset heart1
                jmp display_lives

display_no_hearts:
    ; You can use this section to handle other unexpected values, if needed
    ; In this case, we'll just exit the game if lives_count is 0
    ret

display_lives:
    mov dl, heart_x
    mov dh, heart_y
    call gotoxy
    call writestring

    ret
update_lives3 ENDP

    
level_3 ENDP



END main