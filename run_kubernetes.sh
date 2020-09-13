s tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kshanuanand/predictor-udacity:0.1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 predictor --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
cnt=1
status=$(kubectl get pod predictor | grep -v NAME | awk '{print $3}')
while [[ $status != "Running" ]]
do
        sleep 10
        echo "Try $cnt"
        status=$(kubectl get pod predictor | grep -v NAME | awk '{print $3}')
        cnt=$(( $cnt + 1))
done
# Step 4:
# Forward the container port to a host
kubectl port-forward predictor 8000:80

