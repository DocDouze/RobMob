__author__ = 'Jacques saraydaryan'

from AbstractShortPath import AbstractShortPath
import math
import rospy
from visualization_msgs.msg import MarkerArray
import itertools
import numpy as np
# sys.path.append('../')



class AStar(AbstractShortPath):
    def __init__(self):
        print ''

    def goto(self, source, target, matrix,pub_marker,marker_array):
        start = {'x': source['x'], 'y': source['y'], 'cost': 1}

        closedList = []
        openList = [start]

        unvisit = [str(x) + '_' + str(y) for x in range(len(matrix)) for y in range(len(matrix[0]))]
        unvisit.remove(str(source['x']) + '_' + str(source['y']))

        gscore = { str(source['x']) + '_' + str(source['y']): 0 }
        fscore = { str(source['x']) + '_' + str(source['y']): 0 }

        prev = {}

        for c in unvisit:
            gscore[c] = np.inf
            fscore[c] = np.inf
            prev[c] = None

        while len(openList):

            u = None
            umin = np.inf

            for a in openList:

                score = fscore[str(a['x']) + '_' + str(a['y'])]

                if score < umin:
                    umin = score
                    u = a

            if str(u['x']) + '_' + str(u['y']) == str(target['x']) + '_' + str(target['y']):
                return prev

            self.createClosedMarker(u, marker_array)

            openList.remove(u)
            closedList.append(u)

            for v in self.getNeighbors(u, matrix):
                if self.isInList(v, closedList):
                    continue
                v_score = gscore[str(u['x']) + '_' + str(u['y'])] + self.hn(matrix, u, v)
                if not self.isInList(v, openList):
                    self.createFontierUnitMarker(v, marker_array)
                    openList.append(v)
                elif v_score >= gscore[str(v['x']) + '_' + str(v['y'])]:
                    continue
                prev[str(v['x']) + '_' + str(v['y'])] = str(u['x']) + '_' + str(u['y'])
                gscore[str(v['x']) + '_' + str(v['y'])] = v_score
                fscore[str(v['x']) + '_' + str(v['y'])] = gscore[str(v['x']) + '_' + str(v['y'])] + self.hn(matrix, v, target)
            pub_marker.publish(marker_array)
            marker_array = MarkerArray()

            rospy.sleep(0.01)


        return None

    def isInList(self, v, list):
        return next((a for a in list if (str(a['x']) + '_' + str(a['y']) == str(v['x']) + '_' + str(v['y']))), False) != False



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
        if (x > 0 and x < len(matrix) and y > 0 and y < len(matrix[0])):
            if (matrix[y][x] != self.MAP_OBSTACLE_VALUE):
                neighbors.append({'x': x, 'y': y})
        return neighbors

    def hn(self,matrix,source,target):
        """Compute the distance between the given node and the target, the result is an estimation of the distance without taking into account obstacles """
        return math.sqrt((target['x']-source['x'])**2 + (target['y']-source['y'])**2)