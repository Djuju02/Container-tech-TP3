FROM python:3.9-alpine

# work path in the container
WORKDIR /app # work path in the container

# Copy of the dependencies files
COPY requirements.txt ./

#  Installation of the depedencies
RUN pip install --no-cache-dir -r requirements.txt

#Bonus for run the container without sudo rights
RUN adduser -D newusertd3
USER newusertd3

# Copy of the script into the container
COPY . .

#Execution
CMD [ "python", "./app.py" ]

