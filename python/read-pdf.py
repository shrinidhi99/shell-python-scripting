import io
from PIL import Image
import pytesseract
from wand.image import Image as wi


# converting pdf to a series of characters

def pdfToText(filepath):
    pdf = wi(filename=filepath, resolution=300)
    pdfImg = pdf.convert('jpeg')
    imgBlobs = []

    for img in pdfImg.sequence:
        page = wi(image=img)
        imgBlobs.append(page.make_blob('jpeg'))

    extracted_text = []

    for imgBlob in imgBlobs:
        im = Image.open(io.BytesIO(imgBlob))
        text = pytesseract.image_to_string(im, lang='eng')
        extracted_text.append(text)

    print(extracted_text[0])


i = 1


# converted pdf to images (page by page)
def pdfToImages(filepath):
    pdf = wi(filename=filepath, resolution=300)
    pdfImage = pdf.convert('jpeg')
    global i
    for image in pdfImage.sequence:
        page_i = wi(image=image)
        page_i.save(filename=str(i) + ".jpg")
        i += 1


# extract text from images using tesseract

def imageToText(filepath):
    im = Image.open(filepath)
    text = pytesseract.image_to_string(im, lang='eng')
    print(text)


pdfToText('CV.pdf')
# or
pdfToImages('CV.pdf')
imageToText('1.jpg')
imageToText('2.jpg')
