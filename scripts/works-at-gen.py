import random

ATTRIBUTES_ROW = "WorkerId,DepartmentId\n"
MAX_DEPARTMENTS_PER_WORKER = 2

def generate_departments(worker_id, departments_count):
    count = random.randint(1, MAX_DEPARTMENTS_PER_WORKER)
    departments = [0] * count
    department = -1
    for i in range(count):
        while department == -1 or str(department) in departments:
            department = random.randint(0, departments_count)
        departments[i] = str(department)
    return departments

def add_ids(departments, worker_id):
    return [(str(worker_id), d) for d in departments]

def to_csv(works_at):
    csv_rows = [','.join(w) for w in works_at]
    return '\n'.join(csv_rows)

def main(args):
    works_at = []
    for worker_id in range(args.workers_count):
        works_at += add_ids(generate_departments(worker_id, args.departments_count), worker_id)
    with open(args.output, "w") as f:
        f.write(ATTRIBUTES_ROW)
        f.write(to_csv(works_at))

def create_parser():
    import argparse
    parser = argparse.ArgumentParser(description="Worker CSV Generator")
    parser.add_argument('-o', '--output', required=True, help='CSV output path')
    parser.add_argument('-w', '--workers-count', required=True, type=int, help='Number of workers')
    parser.add_argument('-d', '--departments-count', required=True, type=int, help='Number of departments')
    return parser

if __name__ == "__main__":
    parser = create_parser()
    main(parser.parse_args())

