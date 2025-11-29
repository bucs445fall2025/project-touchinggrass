# Tetris Website
## CS 445 Final Project
### Fall 2025

### Team: touching grass
Luis Ramon, Rachel Todd, Stella Young

## Getting Started
This is meant to be a simple, clean implementation of tetris as defined in the [tetris spec](https://tetris.wiki/Tetris_Guideline), imbedded in a website that allows users to upload their scores to global leaderboards and compete with their friends.

### Roadmap
- [ ] Fix grid system
- [ ] Add remaining tetrominoes
- [ ] Implement line clearing
- [ ] Add ghost piece projection alongside hard drops
- [ ] Add a scoring system
- [ ] Implement piece storing
  
## SRS
[Software Requirements Specification document](https://docs.google.com/document/d/14sJqsqGyM0i7BVEjOX5WYZZixLbz8a7n0NOdckxyNMA/edit?usp=sharing)
  
### Prerequisites
* [Docker](https://www.docker.com/)

### Installing
1. Install Docker Hub and clone the repo
`git clone https://github.com/bucs445fall2025/project-touchinggrass.git`
2. cd to the repo
`cd project-touchinggrass`
3. Launch Docker Hub and bring the container up
`docker compose up --build`
4. Open [localhost:3000](http://localhost:3000) in your web browser to see the Vite template screen
5. Open [localhost:3000/tetrisgame/tetris.html](http://localhost:3000/tetrisgame/tetris.html) to see the embedded Godot project


## Built With
* [Vite](https://vite.dev/) - frontend build tool
* [Godot](https://godotengine.org/) - free and open source game engine

## License
This project is licensed under the GNU General Public License.

## Acknowledgments
* Thanks to CyberPotato for their [How to make Tetris in Godot 4](https://www.youtube.com/watch?v=4XxsbtvQJE0) tutorial
