import pygame
import random
import math

pygame.init()

screen = pygame.display.set_mode((699,519))
background = pygame.image.load("map2.png")

pygame.display.set_caption("Tower Defense")
icon = pygame.image.load("slime.png")
pygame.display.set_icon(icon)

alien = pygame.image.load("monster.png")

running = True

class enemy():
    def init(self, x, y, speed):
        self.x = x
        self.y = y
        self.speed = speed
        
    def monster(self):
        self.x = 100
        self.y = 400
        screen.blit(alien,(self.x, self.y))

while running:
    screen.fill((0,0,0))
    screen.blit(background,(0,0))
    
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
            
    enemy().monster()

    pygame.display.update()
