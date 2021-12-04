
function train_notes_names()
  notes_array = (("A", "La"), ("B", "Si"), ("C", "Do"), ("D", "Re"), ("E", "Mi"), ("F", "Fa"), ("G", "Sol"))


  println("\n-------------- Welcome to the notes training program! ---------------- \n")

  println("These are all the notes: ")
  for note in notes_array
    println(note[1], " -> ", note[2])
  end

  println("\nPause a bit and try to remember them. Press enter to continue (and get the notes out of your sight) when you're ready.")

  readline()

  print(repeat("...\n", 40))

  println("\nNote: answer 'q' to quit. And the program is not case sensitive.")
  note_name = ""
  last_note = ""
  note_symbol = ""

  while note_name != "q"
    note_idx = 0

    # get random note
    while note_symbol == last_note
      note_idx = rand(1:length(notes_array))
      note_symbol = notes_array[note_idx][1]
    end

    last_note = note_symbol

    # get user input
    println("\nWhat letter represents this note: ", note_symbol, "?")
    note_name = readline()

    # check if user input is correct
    if note_name != "q"
      if uppercase(note_name) == uppercase(notes_array[note_idx][2])
        println("Correct!")
      else
        println("Wrong! The correct answer is ", notes_array[note_idx][2])
      end
    end
  end

  println("\nThanks for playing!")
end

train_notes_names()