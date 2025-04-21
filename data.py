import pandas as pd
import matplotlib.pyplot as plt

# Step 1: Create a new dataset
data = {
    'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Eva'],
    'Age': [20, 21, 19, 22, 20],
    'Grade': [88, 92, 85, 90, 95]
}

# Convert to DataFrame
df = pd.DataFrame(data)

# Save to CSV
df.to_csv('students.csv', index=False)

print("Dataset created:")
print(df)

# Step 2: Perform Data Analysis
# Load the dataset
df = pd.read_csv('students.csv')

# Calculate average age
average_age = df['Age'].mean()
print(f"Average Age: {average_age}")

# Calculate average grade
average_grade = df['Grade'].mean()
print(f"Average Grade: {average_grade}")

# Find the student with the highest grade
top_student = df.loc[df['Grade'].idxmax()]
print(f"Top Student: {top_student['Name']} with a grade of {top_student['Grade']}")

# Step 3: Visualize the Data
# Bar chart of students' grades
plt.bar(df['Name'], df['Grade'], color='blue')
plt.xlabel('Students')
plt.ylabel('Grades')
plt.title('Students Grades')
plt.show()