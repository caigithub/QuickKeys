; #word operation {
    deleteToWordBegin()
    {
        command_operation("delete.to.word.begin", "^+{left}{delete}" )
        return
    }

    deleteToWordEnd()
    {
        command_operation("delete.to.word.end", "^+{right}{delete}" )
        return
    }

    deleteCurrentWordBackward()
    {
        command_operation("delete.current.word.back", "^{left}^+{right}{delete}" )
        return
    }

    deleteCurrentWordForward()
    {
        command_operation("delete.current.word.forward", "^{right}^+{left}{delete}" )
        return
    }

; #word operation }
