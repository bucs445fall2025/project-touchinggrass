# TETRIS --> GODOT

class Tetris_Piece
    def rotate:
        pass
        "Whenever rotate-right key stroke is pressed, rotate block 90 degrees to the right"
        "When rotate-left key is pressed, rotate block 90 degrees to the left"

    def horizontal:
        pass
        "Move block either left or right based on the left & right keys"

    def manual_go_down:
        pass
        "On the user's end, they can speed up the block going down"
    
    def go_down:
        pass
        "infinitely, block goes down until it reaches surface"

class Score:
    def score_init:
        pass
        initialize score to 0
    def score_increase:
        pass
        "increase score depending on how many lines have been cleared"
    def score_submit:
        pass
        "submit score to leaderboard when game ends"

class Pause_Menu:
    def restart_game:
        pass
        "restarts a new game of tetris"
    def resume:
        pass
        "resume game"
    def main_menu:
        pass
        "Go back to main menu"
        call save_changes()
    def save_changes:
        pass
        "Give user the option to save or not save their game progress"
    
    