# Machince-Intelligence
This repository contains Various supervised and Unsupervised Algorithms which are been used to for classification.

## Table of Contents

- [Introduction](#introduction)
- [K Nearest Neighbours](#k_nearest_neighbours)
- [K means Clustering](#k_means_clustering)
- [Principal Component Analysis](#principal_component_analaysis)

## Introduction
Machine intelligence refers to the ability of computer systems to exhibit intelligent behavior and perform tasks that typically require human intelligence. It involves the development and application of algorithms, models, and techniques that enable machines to learn from data, make decisions, solve problems, and improve their performance over time.

Machine intelligence encompasses various subfields, including machine learning, natural language processing, computer vision, and robotics. These technologies enable machines to analyze large amounts of data, recognize patterns, understand and generate human language, perceive and interpret visual information, and interact with the physical world.

## K Nearest Neighbours
K-Nearest Neighbors (KNN) is a simple and widely used classification and regression algorithm in machine learning. It is a non-parametric algorithm that makes predictions based on the similarity of new data points to the labeled data points in the training dataset.

## Algorithm Steps:
    1. Training: KNN does not explicitly learn a model from the training data. Instead, it stores the entire training dataset, which consists of labeled instances (data points) in a feature space.
    2. Distance calculation: When a new, unlabeled data point is given for prediction, KNN calculates the distance between the new data point and all the labeled data points in the training dataset. The distance metric commonly used is Euclidean distance, but other distance measures can also be used.
    3. Choosing K: K, the number of nearest neighbors to consider, is a parameter in the KNN algorithm. It determines how many neighboring data points will contribute to the final prediction. The choice of K depends on the specific problem and dataset and is often determined through experimentation.
    4. Finding nearest neighbors: KNN selects the K data points with the smallest distances to the new data point. These data points are the "nearest neighbors" of the new data point.
    5. Classification or regression: For classification tasks, KNN assigns the class label that is most prevalent among the K nearest neighbors to the new data point. For regression tasks, KNN takes the average (or weighted average) of the target values of the K nearest neighbors as the predicted value for the new data point.
    6. Output: The predicted class label or regression value is returned as the output of the KNN algorithm.

Key considerations for using KNN include:

- Choosing an appropriate distance metric based on the characteristics of the data.
- Scaling the features if they have different scales to avoid dominance by certain features during distance calculation.
- Handling ties when the K nearest neighbors have an equal number of instances from different classes (for classification tasks).
- Determining the optimal value of K through techniques such as cross-validation.

KNN is a simple yet effective algorithm that can be applied to both classification and regression problems. It is easy to understand and implement, making it a popular choice for baseline models and as a benchmark for more complex algorithms.
## K means Clustering
K-means clustering is a popular unsupervised machine learning algorithm used for clustering and partitioning data into groups or clusters. It aims to find natural groupings within the data based on their similarities.

## Algorithmic steps:
    1. Initialization: Select the number of clusters, K, that you want to identify. Randomly initialize K cluster centroids in the feature space. Each centroid represents the center of a cluster.
    2. Assigning data points: Assign each data point to the nearest centroid based on a distance metric, commonly the Euclidean distance. This step forms the initial clusters.
    3. Updating centroids: Calculate the mean of each cluster's data points, and update the centroid positions to the new means. This step repositions the centroids to the center of their respective clusters.
    4. Repeat: Iteratively repeat steps 2 and 3 until convergence. Convergence occurs when the centroids no longer move significantly or when a specified maximum number of iterations is reached.
    5. Output: The final output of the K-means algorithm is the set of K cluster centroids and the assignment of each data point to a specific cluster.
    
Key considerations for using K-means clustering include:

- Choosing the appropriate value of K: This can be determined through techniques such as the elbow method or silhouette analysis, which aim to find the optimal number of clusters based on the data's inherent structure.

- Handling initialization: K-means can be sensitive to the initial placement of centroids. Multiple initializations or techniques like K-means++ can be used to improve the algorithm's stability and convergence.

- Dealing with outliers: Outliers can significantly impact the clustering results. Preprocessing or outlier removal techniques might be necessary to obtain more meaningful clusters.

- Scaling features: Since K-means is distance-based, it's often beneficial to scale or normalize the features to ensure that they have similar ranges and prevent any single feature from dominating the distance calculation.
  
K-means clustering is widely used in various fields, including image segmentation, customer segmentation, anomaly detection, and pattern recognition. Its simplicity, efficiency, and effectiveness make it a popular choice for exploratory data analysis and as a baseline clustering algorithm.

## Principal Component Analysis
Principal Component Analysis (PCA) is a dimensionality reduction technique commonly used in data analysis and machine learning. It aims to transform high-dimensional data into a lower-dimensional space while preserving the most important information or patterns in the data.
## Algorithmic Steps:
        1. Standardize the data: If the data is not already standardized, normalize it by subtracting the mean and dividing by the standard deviation for each feature. This ensures that all features have zero mean and unit variance.
        2. Compute the covariance matrix: Calculate the covariance matrix of the standardized data. The covariance matrix represents the relationships and dependencies among the features.
        3. Perform eigenvalue decomposition: Decompose the covariance matrix into its eigenvectors and eigenvalues. The eigenvectors represent the principal components (PCs), and the eigenvalues represent the amount of variance captured by each PC.
        4. Select the top-k eigenvectors: Sort the eigenvectors based on their corresponding eigenvalues in descending order. Choose the top-k eigenvectors that capture the most variance or a desired percentage of the total variance.
        5. Form the projection matrix: Take the selected eigenvectors (PCs) and stack them horizontally to form a projection matrix, where each row represents a PC.
        6. Transform the data: Multiply the standardized data by the projection matrix to obtain the transformed or reduced-dimensional data. This projection maps the data onto the new PC space.
        7. Calculate the explained variance: Compute the proportion of total variance explained by each selected PC by dividing its eigenvalue by the sum of all eigenvalues. Optionally, calculate the cumulative sum of the explained variances to assess the amount of variance retained with the chosen number of PCs.
        8. Interpret and analyze: Analyze the transformed data in the reduced-dimensional space. The PCs can provide insights into the most important features or patterns in the data. Visualizations, clustering, or classification algorithms can be applied to the transformed data for further analysis.

These steps outline the core procedure of performing PCA. Various implementations and libraries exist in different programming languages that automate these steps and provide additional functionalities to facilitate PCA analysis.

PCA is widely applied in various fields, including image processing, finance, genetics, and social sciences. It helps in addressing the curse of dimensionality, reducing noise, identifying key features, and improving computational efficiency. PCA is a valuable tool for gaining insights and simplifying complex datasets while retaining the most relevant information.

## Linear Discriminant Analysis

