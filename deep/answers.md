## Random Partitioning
Random partitioning ensures an even storage and processing load across all boats because data is distributed arbitrarily. However, it requires queries for specific time ranges to be broadcast to all boats, as related data is scattered randomly across the entire network.

## Partitioning by Hour
Partitioning by hour allows time-sensitive queries to target only the specific boat responsible for that time window, significantly reducing network overhead. The major drawback is severe load imbalance, as high-traffic hours overload a single boat while others remain underutilized.

## Partitioning by Hash Value
Hash partitioning achieves an ideal balance by evenly distributing the storage load across all boats while allowing exact point queries to target only a single boat. However, range queries still require scanning all boats because chronologically adjacent timestamps are mapped to completely different hash values.
wget https://cdn.cs50.net/sql/2024/x/psets/6/dont-panic-python.zip
