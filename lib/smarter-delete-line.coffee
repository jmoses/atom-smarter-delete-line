module.exports =
  activate: ->
    atom.commands.add 'atom-text-editor', 'smarter-delete-line:delete-to-first-character',  ->
      editor = atom.workspace.getActiveTextEditor()

      editor.mutateSelectedText (selection) ->
        if selection.isEmpty
          selection.selectToFirstCharacterOfLine()

        selection.deleteSelectedText()
