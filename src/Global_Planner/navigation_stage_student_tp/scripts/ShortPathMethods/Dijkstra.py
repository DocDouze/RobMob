__author__ = 'Jacques saraydaryan'

from AbstractShortPath import AbstractShortPath
from visualization_msgs.msg import MarkerArray
import math
import rospy
import numpy as np

# import sys
# sys.path.append('../')



class Dijsktra(AbstractShortPath):
    def __init__(self):
        print ''

    def goto(self, source, target, matrix,pub_marker,marker_array):

        prev = {}
        # Dictionary that holds node score
        fscore = {}
        # List that holds the nodes to process
        unvisit = []
        INF = 9999

        # Condition to stop the path finding algo
        isEnd = False
        print
        'start processing'

        # Intialisation
        for i in range(len(matrix)):
            for j in range(len(matrix[0])):

                fscore[str(i) + '_' + str(j)] = INF
                unvisit.append({'x': i, 'y': j})

        fscore[str(source['x']) + '_' + str(source['y'])] = 0

        while len(unvisit) !=0 :

            u = self.minScore(fscore, unvisit)

            unvisit.remove(u)

            self.createClosedMarker(u, marker_array)

            currentNeighbors=self.getNeighbors(u,matrix)

            for v in currentNeighbors:

                if self.inU(v,unvisit):

                    self.createFontierUnitMarker(v, marker_array)

                    current_score = fscore[str(u['x']) + '_' + str(u['y'])] + self.hn(matrix,v,target)

                    print current_score

                    if current_score < fscore[str(v['x']) + '_' + str(v['y'])]:
                        fscore[str(v['x']) + '_' + str(v['y'])] = current_score
                        prev[str(v['x']) + '_' + str(v['y'])]=str(u['x']) + '_' + str(u['y'])

                    if str(v['x']) + '_' + str(v['y']) == str(target['x']) + '_' + str(target['y']):
                        return prev

            pub_marker.publish(marker_array)
            marker_array=MarkerArray()
            rospy.sleep(0.2)

        return prev

    def minScore(self, fscore,frontier):
        """ Return the node that has the lowest score, information return like u={'x':5,'y':3}"""
        min=9999
        min_coord=''
        for n in frontier:
            if fscore[str(n['x'])+'_'+str(n['y'])] < min :
                min=fscore[str(n['x'])+'_'+str(n['y'])]
                min_coord=n
        return min_coord

    def getNeighbors(self, currentNode, matrix):
        """ Compute Neighbors of the current point, Return the list of the point neighbors in Cfree"""
        x_c = currentNode['x']
        y_c = currentNode['y']
        neighbors = []
        self.checkAndAdd(neighbors, x_c + 1, y_c, matrix)
        self.checkAndAdd(neighbors, x_c, y_c + 1, matrix)
        self.checkAndAdd(neighbors, x_c - 1, y_c, matrix)
        self.checkAndAdd(neighbors, x_c, y_c - 1, matrix)
        return neighbors

    def checkAndAdd(self, neighbors, x, y, matrix):
        """ Check that the candidate neighbor is valid == not an obstacle, in current bound, add the nieghbor node to the node list"""
        if (x > 0 and x < self.map_width and y > 0 and y < self.map_height):
            if (matrix[y][x] != self.MAP_OBSTACLE_VALUE):
                neighbors.append({'x': x, 'y': y})
        return neighbors

    def hn(self,matrix,source,destination):
        """Compute the distance between the given node and the target, the result is an estimation of the distance without taking into account obstacles """
        return math.sqrt(math.pow(source['x']-destination['x'],2)+math.pow(source['y']-destination['y'],2))

    def inU(self,v,frontier):
        """ Check if the node is into the list, return boolean """
        return v in frontier

