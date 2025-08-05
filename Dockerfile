FROM gcc:latest
WORKDIR /app
COPY . .
RUN gcc -Iinclude -o myapp src/c/main.c src/c/utils.c

# Install OpenJDK
RUN apt-get update && apt-get install -y openjdk-17-jdk

# Compile Java file
RUN javac src/myjava/Main.java

# Default: run C program
CMD ["./myapp"]

# To run the Java program:
# docker run --rm my-c-app java -cp src/myjava Main

# Install Python
RUN apt-get update && apt-get install -y python3

# (Optional) To run the Python program by default, change CMD:
# CMD ["python3", "src/python/app.py"]

# Or, to run the Python program manually:
# docker run --rm -i my-c-app python3 src/python/app.py