
ATTRIBUTES_ROW = "WingId, Name\n"
START_YEAR = 2020
JUMPS = 10

def generate_years(start_year, count):
    year = start_year
    for i in range(count):
        yield str(year)
        year -= 10

def to_csv(wings):
    csv_rows = [','.join(w) for w in wings]
    return '\n'.join(csv_rows)

def main(args):
    wings = []
    for i, year in enumerate(generate_years(START_YEAR, args.count)):
        wings.append((str(i), year))
    with open(args.output, "w") as f:
        f.write(ATTRIBUTES_ROW)
        f.write(to_csv(wings))

def create_parser():
    import argparse
    parser = argparse.ArgumentParser(description="Worker CSV Generator")
    parser.add_argument('-o', '--output', required=True, help='CSV output path')
    parser.add_argument('-c', '--count', required=True, type=int, help='Number of wings to generate')
    return parser

if __name__ == "__main__":
    parser = create_parser()
    main(parser.parse_args())

