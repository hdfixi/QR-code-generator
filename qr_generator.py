import qrcode

with open("text.txt", 'r') as f:
    lines = f.readlines()

for line in lines:
    words = list(line.strip())
    for word in words:
        img = qrcode.make(word)
        print(type(img))  # This will print the type of img for debugging
        img.save(word + ".png")