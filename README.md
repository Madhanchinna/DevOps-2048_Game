# Dockerfile for Hosting 2048 Game with Nginx

<div align="center">
    <img src="https://image.freepik.com/free-vector/pixel-art-retro-game-background_33099-444.jpg" alt="2048 Game" width="300"/>
</div>

<p align="center">
    <em>Build and run the Docker image to host the 2048 game using Nginx.</em>
</p>

## Usage

### Prerequisites
- Docker installed on your machine

### Building the Docker Image
1. Clone this repository or create a new directory and navigate to it.
2. Copy the contents of the provided Dockerfile into a new file named `Dockerfile` in your project directory.
3. Open your terminal and navigate to the project directory.
4. Build the Docker image by running the following command:
   ```shell
   docker build -t 2048-game .
   ```

### Running the Container
1. Once the image is successfully built, run the Docker container using the following command:
   ```shell
   docker run -d -p 80:80 2048-game
   ```
   This command starts the container and maps the host machine's port 80 to the container's port 80.
2. Access the 2048 game by opening a web browser and navigating to `http://localhost`.

## Credits

- The 2048 game repository used in this Dockerfile is available at: [https://github.com/gabrielecirulli/2048](https://github.com/gabrielecirulli/2048)
- Nginx is an open-source web server and can be found at: [https://www.nginx.com/](https://www.nginx.com/)

<div align="center">
    <em>Enjoy playing the 2048 game in your Docker container!</em>
</div>