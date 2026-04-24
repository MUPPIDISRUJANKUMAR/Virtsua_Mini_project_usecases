import os
import datetime

# Read Logs
with open('server.log','r') as fs:
    lines= fs.readlines()

# keywords to search for
keywords=['ERROR','CRITICAL','FAILED LOGIN']

# Fliter lines based on keywords
filtered_lines=[]
for line in lines:
    for key in keywords:
        if key in line:
            filtered_lines.append(line)

# Count errors,CRITICAL and FAILED LOGIN
counts={
    "ERROR":0,
    "CRITICAL":0,
    "FAILED LOGIN":0,
}

for line in filtered_lines:
    for key in keywords:
        if key in line:
            counts[key]+=1

# write report
current_date=datetime.date.today().strftime("%Y-%m-%d")
output_file=f"security_alert_{current_date}.txt"

with open(output_file,'w') as file:
    file.write("Security Alert Report\n")
    file.write("=====================\n")

    for line in filtered_lines:
        if "CRITICAL" in line:
            file.write(line)
    
    file.write("\n=== SUMMARY ===\n")
    for key,value in counts.items():
        file.write(f"{key}: {value}\n")

# Files size
size=os.path.getsize(output_file)
print(f"Report generated: {output_file} (Size: {size} bytes)")

