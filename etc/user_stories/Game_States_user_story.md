# Game States

## **User Story**
    As a client,
    I want multiple (distinct) game states
    so that the game can display login page, gameplay page (including game over screen), rankings page, and multiple game modes.
---

## **Acceptance Criteria**
- [Define the success conditions for this feature]
- [How will we know when this is done?]
- [What must be functional before release?]
Rachel Todd wishes to have multiple game states so users can access multiple features on the game at different times. We must be able to create a flow of events for user to go through (for instance: login --> friends list / game modes --> gameplay --> game over -- > friends list / game modes).

---

## **Notes**
Potential challenges: Must be sure to not allow user to "no clip" through to unintended states when they are in specific game states. (for instance: users in login state must not be able to accidentally directly access gameplay state afterwards, as user must go through "friends list / game modes" state to select the gameplay they want).