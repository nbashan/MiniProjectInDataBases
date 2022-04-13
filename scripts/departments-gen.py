import random

ATTRIBUTES_ROW = "DepartmentId, Name, WingId\n"

START_YEAR = 2020
JUMPS = 10

DEPARTMENTS = {"Art", "Nature", "Military", "Tech", "Philosophy", "Science", "Music"}
MAX_DEPARTMENTS = 5

def generate_departments(year):
    count = random.randint(1, MAX_DEPARTMENTS)
    departs = set()
    for i in range(count):
        departs.add(random.choice(list(DEPARTMENTS.difference(departs))))
    return list(map(lambda d: str(year) + "-" + d, departs))

def add_ids(departments, current_id, wing_id):
    return [(str(current_id + i), d, str(wing_id)) for i, d in enumerate(departments)]

def to_csv(departments):
    csv_rows = [','.join(w) for w in departments]
    return '\n'.join(csv_rows)

def main(args):
    departments = []
    year = START_YEAR
    wing_id = 0
    current_id = 0
    while len(departments) < args.count:
        generated = add_ids(generate_departments(year), current_id, wing_id)
        departments += generated
        current_id += len(generated)
        year -= JUMPS
        wing_id += 1
    with open(args.output, "w") as f:
        f.write(ATTRIBUTES_ROW)
        f.write(to_csv(departments))

def create_parser():
    import argparse
    parser = argparse.ArgumentParser(description="Worker CSV Generator")
    parser.add_argument('-o', '--output', required=True, help='CSV output path')
    parser.add_argument('-c', '--count', required=True, type=int, help='Number of departments to generate')
    return parser

if __name__ == "__main__":
    parser = create_parser()
    main(parser.parse_args())

