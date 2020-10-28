import pygame   # Imports
import random
import math

pygame.init()

screen = pygame.display.set_mode((699,519)) # Declares screen and background
background = pygame.image.load("map2.png")

pygame.display.set_caption("Tower Defense") # Declares caption and image
icon = pygame.image.load("slime.png")
pygame.display.set_icon(icon)

alien = pygame.image.load("monster.png")    # Declares monster image

running = True

class enemy():          # Class of all enemies
    def __init__(self, x, y, speedx, speedy, health): # Method declares x, y cords + speed + health
        self.x = x
        self.y = y
        self.speedx = speedx
        self.speedy = speedy
        self.health = health
        
    def green(self):             # Declares x, y cords + speed + health
        screen.blit(alien,(self.x, self.y))

def direction():
    if e1.x < 24 and e1.speedy == 0: 
        e1.speedx = 0.00001
        e1.speedy = 1
    if e1.y > 188 and e1.speedx == 0.00001:
        e1.speedx = 1
        e1.speedy = 0.001           # 0 sets bugs for whatever reason
    if e1.x > 652 and e1.speedy == 0.001:
        e1.speedx = 0               # 0 sets bugs for whatever reason
        e1.speedy = 1
    if e1.y > 328 and e1.speedx == 0:
        e1.speedx = -1
        e1.speedy = 0.0001
    if e1.x < 24 and e1.speedy == 0.0001:
        e1.speedx = 0
        e1.speedy = 1
    if e1.y > 430 and e1.speedx == 0:
        e1.speedx = 1
        e1.speedy = 0


e1 = enemy(699, 78, -1, 0, 1)

def wave1():
    e1.green() # Calls for monster (for now) (waves come later)
    direction()

while running:          
    screen.blit(background,(0,0))       # Sets background to level map
    
    for event in pygame.event.get():    # Checks if event is activated
        if event.type == pygame.QUIT:   # and quits if so 
            running = False
            
    wave1()
    e1.x += e1.speedx  # Changes monster's x by its x speed
    e1.y += e1.speedy  # Changes monster's y by its y speed
    
    pygame.display.update() 
    
pygame.quit()
