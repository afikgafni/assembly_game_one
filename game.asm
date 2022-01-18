MODEL small

STACK 256

DATASEG
x_offset dw 00h
y_offset dw 00h
; TODO: write comment to explain we will define it later
coinx_offset1 dw 10h
coiny_offset1 dw 10h

coinx_offset2 dw 20h
coiny_offset2 dw 10h

coinx_offset3 dw 30h
coiny_offset3 dw 10h

enemyx_offset1 dw 10h
enemyy_offset1 dw 50h

enemyx_offset2 dw 10h
enemyy_offset2 dw 51h

enemyx_offset3 dw 10h
enemyy_offset3 dw 52h

enemyx_offset4 dw 10h
enemyy_offset4 dw 53h

enemyx_offset5 dw 10h
enemyy_offset5 dw 54h

enemyx_offset6 dw 10h
enemyy_offset6 dw 55h

enemyx_offset7 dw 10h
enemyy_offset7 dw 56h

enemyx_offset8 dw 10h
enemyy_offset8 dw 57h

enemyx_offset9 dw 10h
enemyy_offset9 dw 58h

enemyx_offset10 dw 10h
enemyy_offset10 dw 59h

func_shape_x dw 0h
func_shape_y dw 0h

shape db 100 dup(00h)

CODESEG

 move_to_graphics_mode proc
    mov ah, 00h ;enter graphics mode
    mov al, 13h
    int 10h
    ret
endp

 change_bg_color proc
    mov ax, 0600h
    mov bh, 1fh
    mov cx, 0000h
    mov dx, 184fh
    int 10h
    ret
endp

 color_pixel proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset x_offset
    mov cx, [si] ;x value
    mov si, offset y_offset
    mov dx, [si] ;y value
    int 10h
    ret
endp
color_coin1 proc
mov ah, 0ch ;write a pixel
    mov al, 01 ;blue pixel
    mov si, offset coinx_offset1
    mov cx, [si] ;x value
    mov si, offset coiny_offset1
    mov dx, [si] ;y value
    int 10h
    ret
endp

color_coin2 proc
mov ah, 0ch ;write a pixel
    mov al, 01 ;blue pixel
    mov si, offset coinx_offset2
    mov cx, [si] ;x value
    mov si, offset coiny_offset2
    mov dx, [si] ;y value
    int 10h
    ret
endp

color_coin3 proc
mov ah, 0ch ;write a pixel
    mov al, 01 ;blue pixel
    mov si, offset coinx_offset3
    mov cx, [si] ;x value
    mov si, offset coiny_offset3
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy1 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset1
    mov cx, [si] ;x value
    mov si, offset enemyy_offset1
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy2 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset2
    mov cx, [si] ;x value
    mov si, offset enemyy_offset2
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy3 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset3
    mov cx, [si] ;x value
    mov si, offset enemyy_offset3
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy4 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset4
    mov cx, [si] ;x value
    mov si, offset enemyy_offset4
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy5 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset5
    mov cx, [si] ;x value
    mov si, offset enemyy_offset5
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy6 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset6
    mov cx, [si] ;x value
    mov si, offset enemyy_offset6
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy7 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset7
    mov cx, [si] ;x value
    mov si, offset enemyy_offset7
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy8 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset8
    mov cx, [si] ;x value
    mov si, offset enemyy_offset8
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy9 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset9
    mov cx, [si] ;x value
    mov si, offset enemyy_offset9
    mov dx, [si] ;y value
    int 10h
    ret
endp

 color_enemy10 proc
    mov ah, 0ch ;write a pixel
    mov al, 4 ;red pixel
    mov si, offset enemyx_offset10
    mov cx, [si] ;x value
    mov si, offset enemyy_offset10
    mov dx, [si] ;y value
    int 10h
    ret
endp

remove_pixel proc  
    mov ah, 0ch ;write a pixel
    mov al, 0fh ;red pixel
    mov si, offset x_offset
    mov cx, [si] ;x value
    mov si, offset y_offset
    mov dx, [si] ;y value
    int 10h
    ret
    ret
endp

 move_when proc
    mov ah, 0
    int 16h
        mov [enemyx_offset1], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset2], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset3], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset4], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset5], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset6], bx
    cmp   [x_offset], bx
    je x_ok    
        mov [enemyx_offset7], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset8], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset9], bx
    cmp   [x_offset], bx
    je x_ok
        mov [enemyx_offset10], bx
    cmp   [x_offset], bx
    je x_ok
    cmp al, 'w'
    je w_pressed
    cmp al, 'a'
    je middlea
    cmp al, 's'
    je middles
    cmp al, 'd'
    je middled

    jmp exits
        x_ok:
        mov [enemyy_offset1], bx
        cmp  [y_offset], bx
        je middle1
                mov [enemyy_offset2], bx
        cmp  [y_offset], bx
        je middle1
                mov [enemyy_offset3], bx
        cmp  [y_offset], bx
        je middle1
                mov [enemyy_offset4], bx
        cmp  [y_offset], bx
        je middle1
                mov [enemyy_offset5], bx
        cmp  [y_offset], bx
        je middle1
                mov [enemyy_offset6], bx
        cmp  [y_offset], bx
        je middle
                mov [enemyy_offset7], bx
        cmp  [y_offset], bx
        je middle
                mov [enemyy_offset8], bx
        cmp  [y_offset], bx
        je middle
                mov [enemyy_offset9], bx
        cmp  [y_offset], bx
        je middle
                mov [enemyy_offset10], bx
        cmp  [y_offset], bx
        je middle
    middle1:
        jmp middle
    middlea:
        jmp a_pressed
    middles:
        jmp s_pressed
    middled:
        jmp d_pressed
    w_pressed:
        call delete_shape
        mov si, offset y_offset
        mov ax, [si]
        dec ax
        mov [si], ax
        call draw_shape
        jmp exits
    a_pressed:
        call delete_shape
        mov si, offset x_offset
        mov ax, [si]
        dec ax
        mov [si], ax
        call draw_shape
        jmp exits
    s_pressed:
        call delete_shape
        mov si, offset y_offset
        mov ax, [si]
        inc ax
        mov [si], ax
        call draw_shape
        jmp exits
    d_pressed:
        call delete_shape
        mov si, offset x_offset
        mov ax, [si]
        inc ax
        mov [si], ax
        call draw_shape
        jmp exits
    exits:
        ret
    middle:
    jmp Exit
endp

; returns a random number in ax


 delete_shape proc
    push ax
    push si
    push cx
    push dx

    mov di, offset x_offset
    mov ax, [di]
    mov [func_shape_x], ax
    mov di, offset y_offset
    mov ax, [di]
    mov [func_shape_y], ax
    mov bx, 00h ; bc is the loop index
    mov si, offset shape
    delete_shape_main_loop:
        mov al, 0fh ; We will "delete" the pixel by changing its color to the background color, making it invisible
        mov ah, 0Ch
	    mov cx, [func_shape_x]
        mov dx, [func_shape_y]
        int 10h

        inc [func_shape_x]

        mov di, offset x_offset
        mov ax, [di]
        sub [func_shape_x], ax
        cmp [func_shape_x], 0ah ; number of pixels in a row
        jge delete_shape_update_y
        delete_shape_repeat:
            inc si ; move to the next pixel
            add [func_shape_x], ax
            inc bx
            cmp bx, 64h ; check if we delete everything (64h=100=10x10)
            jge delete_shape_end
            jmp delete_shape_main_loop
    delete_shape_update_y:
        sub [func_shape_x], 0ah ; number of pixels in a row. we are resetting cx to its default value
	    inc [func_shape_y]
        jmp delete_shape_repeat
    delete_shape_end:
        pop dx
        pop cx
        pop si
        pop ax
        ret
endp

 draw_shape proc
    push ax
    push si
    push cx
    push dx

    mov di, offset x_offset
    mov ax, [di]
    mov [func_shape_x], ax
    mov di, offset y_offset
    mov ax, [di]
    mov [func_shape_y], ax
    mov bx, 00h ; bc is the loop index
    mov si, offset shape
    draw_shape_main_loop:
        mov al, [si] ; We will draw the pixel by changing it to its color in the array
        mov ah, 0Ch
	    mov cx, [func_shape_x]
        mov dx, [func_shape_y]
        int 10h

        inc [func_shape_x]

        mov di, offset x_offset
        mov ax, [di]
        sub [func_shape_x], ax
        cmp [func_shape_x], 0ah ; number of pixels in a row
        jge draw_shape_update_y
        draw_shape_repeat:
            inc si ; move to the next pixel
            add [func_shape_x], ax
            inc bx
            cmp bx, 64h ; check if we draw everything (64h=100=10x10)
            jge draw_shape_end
            jmp draw_shape_main_loop
    draw_shape_update_y:
        sub [func_shape_x], 0ah ; number of pixels in a row. we are resetting cx to its default value
	    inc [func_shape_y]
        jmp draw_shape_repeat
    draw_shape_end:
        pop dx
        pop cx
        pop si
        pop ax
        ret
endp

Start:
    mov ax, @data
    mov ds, ax

    call move_to_graphics_mode
    call change_bg_color
    call color_pixel
    call color_coin1
    call color_coin2
    call color_coin3
    call color_enemy1
    call color_enemy2
    call color_enemy3
    call color_enemy4
    call color_enemy5
    call color_enemy6
    call color_enemy7
    call color_enemy8
    call color_enemy9
    call color_enemy10
    main_loop:
        call move_when
        jmp main_loop

Exit:
    mov ax, 4C00h
    int 21h
END start