# helix_term:give_books - Give all 9 HELIX OS terminal books to player hotbar
function helix_term:books/nav
function helix_term:books/files
function helix_term:books/system
function helix_term:books/network
function helix_term:books/programs
function helix_term:books/ctf1
function helix_term:books/ctf2
function helix_term:books/ctf3
function helix_term:books/sable
tellraw @a [{"text":"[HELIX] ","color":"dark_green","bold":true},{"text":"Terminal books loaded to hotbar. Right-click to open, click commands to execute.","color":"gray"}]
