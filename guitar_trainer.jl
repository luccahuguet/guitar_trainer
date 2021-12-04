
function train_notes_names()
  notes_array = (("A", "La"), ("B", "Si"), ("C", "Do"), ("D", "Re"), ("E", "Mi"), ("F", "Fa"), ("G", "Sol"))

  wish_to_continue = "y"

  while wish_to_continue != "q"

    # get random note
    note_idx = rand(1:length(notes_array))
    random_note = notes_array[note_idx][1]

    # get user input
    println("\nWhat is the name of the note ", random_note, "?")
    note_name = readline()

    # check if user input is correct
    if uppercase(note_name) == uppercase(notes_array[note_idx][2])
      println("Correct!")
    else
      println("Wrong! The correct answer is", notes_array[note_idx][2])
    end

    println("\nType 'q' to quit or any other key to continue")
    wish_to_continue = readline()
  end
end

train_notes_names()