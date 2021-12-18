f = open("raw.csv", "r").read()

lines = f.splitlines()

print("value")


for i in range(len(lines)):
    if i == 0:
        continue
    
    elems = lines[i].split(',')
    value = float(elems[5])
    unit = elems[6]
    iterations = int(elems[7])
    
    output = value / iterations
    
    if unit == 'ns':
        output /= 1000
    elif unit == 'ms':
        output *= 1000
    
    if unit != 'ns' and unit != 'us' and unit != 'ms':
        print("PROBLEM")
        exit(0)
    print(output)
