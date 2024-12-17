#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

#define BRIDGE_HOST "10.144.201.181"
#define BRIDGE_PORT 9000
#define BUFFER_SIZE 4096

int main() {
    int client_socket;
    struct sockaddr_in server_addr;

    client_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (client_socket == -1) {
        perror("Socket creation failed");
        exit(EXIT_FAILURE);
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(BRIDGE_PORT);
    server_addr.sin_addr.s_addr = inet_addr(BRIDGE_HOST);

    if (connect(client_socket, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
        perror("Connection to bridge failed");
        close(client_socket);
        exit(EXIT_FAILURE);
    }

    printf("Connected to the socket bridge.\n");
    char buffer[BUFFER_SIZE];
    char recv_buffer[BUFFER_SIZE];
    int bytes_received;

    while (1) {
        printf("Enter text (type 'exit' to quit):\n");
        if (fgets(buffer, BUFFER_SIZE, stdin) == NULL) {
            break; // End of input
        }

        if (strcmp(buffer, "exit\n") == 0) {
            break;
        }

        // Send input to the bridge
        send(client_socket, buffer, strlen(buffer), 0);

        // Receive response from the backend through the bridge
        bytes_received = recv(client_socket, recv_buffer, BUFFER_SIZE, 0);
        if (bytes_received <= 0) break;
        recv_buffer[bytes_received] = '\0';

        printf("Response from Backend: %s\n", recv_buffer);
    }

    close(client_socket);
    return 0;
}
