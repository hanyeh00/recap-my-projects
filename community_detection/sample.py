import networkx as nx
import numpy as np
import random

class GalaxyBasedSearch:
    def __init__(self, G, num_galaxies=10, num_iterations=100):
        self.G = G
        self.num_galaxies = num_galaxies
        self.num_iterations = num_iterations
        self.best_partition = None

    def initialize_galaxies(self):
        galaxies = []
        for _ in range(self.num_galaxies):
            partition = {node: random.randint(0, 1) for node in self.G.nodes()}
            galaxies.append(partition)
        return galaxies

    def fitness(self, partition):
        modularity = nx.algorithms.community.modularity(self.G, self.convert_partition(partition))
        return modularity

    def convert_partition(self, partition):
        communities = {}
        for node, comm in partition.items():
            if comm not in communities:
                communities[comm] = []
            communities[comm].append(node)
        return list(communities.values())

    def update_galaxies(self, galaxies):
        best_partition = max(galaxies, key=self.fitness)
        for galaxy in galaxies:
            for node in galaxy:
                if random.random() < 0.3:  # Small mutation probability
                    galaxy[node] = best_partition[node]
        return galaxies

    def detect_communities(self):
        galaxies = self.initialize_galaxies()
        
        for _ in range(self.num_iterations):
            galaxies = self.update_galaxies(galaxies)
        
        self.best_partition = max(galaxies, key=self.fitness)
        return self.convert_partition(self.best_partition)

# Example usage
if __name__ == "__main__":
    G = nx.karate_club_graph()  # Load a sample graph
    gbsa = GalaxyBasedSearch(G, num_galaxies=10, num_iterations=50)
    communities = gbsa.detect_communities()
    
    print("Detected Communities:", communities)

