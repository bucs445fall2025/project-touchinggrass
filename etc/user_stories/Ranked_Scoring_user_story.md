# Ranked scoring

## **User Story**
As a player,
I want to track mine and other's highscores
so that I can see if I have the highest score.
---

## **Acceptance Criteria**
The success conditions are if users can all simulataneously see each other's (ranked) scores. What must be functional is the backend database for storing scores, and retrieving appropriate scores for ranking.

---

## **Notes**
We must not show all ranked scores simulataneously (past maybe top 10 or top 20) because there may be a lot of unneccessary lag (and most users may not be interested in seeing *all* user's rankings).