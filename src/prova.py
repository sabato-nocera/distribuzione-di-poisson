from lxml import etree

parser = etree.XMLParser() # Noncompliant
tree = etree.parse('xxe.xml', parser)
root = tree1.getroot()
