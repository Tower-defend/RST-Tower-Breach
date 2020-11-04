#Just PLacing the tower using sprites instead of just blitting images thus easier for collisions
#Imports
import pygame
import random
from os import path

#Image Upload Path
img_dir = path.join(path.dirname(__file__), 'img')

#Defining Initialized Variables
WIDTH = 699
HEIGHT = 519
FPS = 60

# define colors
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
YELLOW = (255, 255, 0)

# initialize pygame and create window
pygame.init()
pygame.mixer.init()
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Tower Defence")
clock = pygame.time.Clock()

#Place Classes and Methods here:

#Loading Background Graphics and add game graphics here:
background = pygame.image.load(path.join(img_dir, "map2.png")).convert()
background_rect = background.get_rect()

# Game loop
running = True
while running:
    # keep loop running at the right speed
    clock.tick(FPS)
    # Process input (events)
    for event in pygame.event.get():
        # check for closing window
        if event.type == pygame.QUIT:
            running = False  

    # Update Section:

    # Draw / render Section:
    screen.fill(BLACK)
    screen.blit(background, background_rect)

    # *after* drawing everything, flip the display
    pygame.display.flip()

pygame.quit()
