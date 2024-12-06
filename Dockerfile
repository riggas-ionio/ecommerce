# Use the official WordPress image as the base image
FROM wordpress

# Install zrok
RUN apt update && apt install -y gnupg && \
    curl -sSLfo ./zrok-install.bash https://get.openziti.io/install.bash && \
    yes "Y" | bash ./zrok-install.bash zrok

# Clean up
RUN rm ./zrok-install.bash