from lxml import etree

def parse_file(file_path):
    parser = etree.XMLParser()  # Sensitive
    tree = etree.parse(file_path, parser)
    root = tree.getroot()
    return root
