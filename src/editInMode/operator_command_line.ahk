;#line operation {

    ; line begin {
        deleteWordFromLineBegin(){
            command_operation("delete.word.from.line.begin", "{home}+^{right}{delete}" )
            return
        }

        deleteFromLineBegin() {
            command_operation("delete.from.line.begin", "{home}{delete}" )
            return
        }

        deleteToLineBegin() {
            command_operation("delete.to.line.begin", "+{home}{delete}" )
            return
        }
    ; }

    ; line end {
        deleteFromLineEnd() {
            command_operation("delete.from.line.end", "{end}{backspace}" )
            return
        }

        deleteToLineEnd() {
            command_operation("delete.to.line.end", "+{end}{backspace}" )
            return
        }

        copyToLineEnd() {
            command_operation("copy.to.line.end", "+{end}^c" )
            return
        }

        cutToLineEnd() {
            command_operation("cut.to.line.end", "+{end}^x" )
            return
        }

        deleteWordFromLineEnd(){
            command_operation("delete.word.from.line.end", "{end}+^{left}{backspace}" )
            return
        }
    ; }

    ; whole line {
        insertNewLineBelow() ;
        {
            command_operation("append.new.line", "{end}{enter}" )
            return
        }

        insertNewLineAbove() ;newLineAbove
        {
            command_operation("insert.new.line", "{home}{enter}{up}" )
            return
        }

        marginCurrentLine() {
            command_operation("margin.current.line", "{home}{enter}")
            return
        }

        deleteCurrentLine()
        {
            command_operation("delete.current.line", "{home}{home}+{end}+{right}{delete}{home}")
            return
        }

        copyCurrentLine() {
            command_operation("copy.current.line", "{home}+{end}^c")
            return
        }

        pasteInNewLine() {
            command_operation("paste.in.new.line", "{end}{enter}^v")
            return
        }
    ; }

;#line operation }
