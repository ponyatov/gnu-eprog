        .text
        b start           @ пропустить данные
arr:    .byte 10, 20, 25  @ константный массив байт
eoa:                      @ адрес массива + 1
        .align
start:
        ldr   r0, =arr    @ r0 = &arr
        ldr   r1, =eoa    @ r1 = &eoa
        bl    sum         @ (вложенный) вызов процедуры
stop:   b stop
