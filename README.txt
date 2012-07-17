Saving Progress
===============

Once you've made a change you would like to keep, run the command

    git add .
    git commit -a -m "My descriptive message"

For instance, you just made it scroll in 4 directions. Oh frabjous day! So make a commit with a good commit message:

    git add .
    git commit -a -m "Added 4-direction scrolling to images"

Later on, if you've screwed the pooch, other git commands can help you get back to where everything was working.

This even applies to images -- everything in this folder and its subfolders is tracked, with all changes recorded.

For now, just commit all changes -- later, we can use the GUI to see what's changed, and others can help you rebase, undo, rollback etc.

