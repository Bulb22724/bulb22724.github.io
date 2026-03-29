# распознавание и обрезание лиц с opencv2

import cv2
import sys
import glob

desired_square_size = 256
desired_square_center_offset = desired_square_size / 2

face_cascade = cv2.CascadeClassifier('_haarcascade_frontalface_default.xml')

def doOne(fname: str):
    img = cv2.imread(fname)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    faces = face_cascade.detectMultiScale(
        gray,
        scaleFactor=1.1,
        minNeighbors=5,
        minSize=(100, 100)
    )

    def crop(img: cv2.numpy.ndarray, x: int, y: int, w: int, h: int) -> cv2.numpy.ndarray:
        return img[y:y+h, x:x+w]

    assert len(faces) > 0
    (x, y, w, h) = faces[0]
    center = (x + (w // 2), y + (h // 2))

    newtopleft = tuple(int(i - desired_square_center_offset) for i in center)
    #newimg = img[y:y+h, x:x+w]
    newimg = crop(img, *newtopleft, desired_square_size, desired_square_size)
    #for (x, y, w, h) in faces:
    #    cv2.rectangle(img, (x, y), (x+w, y+h), (255, 0, 0), 2) 
    #newimg = img

    output_path = fname.replace('.jpg', '_face.jpeg')
    cv2.imwrite(output_path, newimg)

for file in glob.glob('Aleksei*.jpg'):
    print(file)
    doOne(file)