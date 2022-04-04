import random
import datetime
from faker import Faker
from faker.providers import date_time

ATTRIBUTES_ROW = 'WorkerId, Name, Role, SallaryPerHour, JoinDate, LeftDate, BirthDate, Email\n'
YOUNGEST_AGE = 21
OLDEST_AGE = 70
MIN_SALLARY_PER_HOUR = 30
MAX_SALLARY_PER_HOUR = 120


def gen_role():
    return random.choice(["Guard", "Manager", "Cleaner", "Guide"])

def gen_sallary_per_hour():
    return f"{random.uniform(MIN_SALLARY_PER_HOUR, MAX_SALLARY_PER_HOUR):.2f}"

def gen_email(name):
    name = name.replace(' ', random.choice(['-', '_', '']))\
            + str(random.randint(1, 1000))
    domain = random.choices(
            ["gmail.com", "outlook.com", "hotmail.com", "walla.com"],
            weights=[60, 20, 15, 5], k=1)[0]
    return f"{name}@{domain}"

def gen_birth_date(fake):
    today = datetime.date.today()
    youngest_date = datetime.date(today.year - YOUNGEST_AGE, today.month, today.day)
    oldest_date = datetime.date(today.year - OLDEST_AGE, today.month, today.day)
    return fake.date_between(start_date=oldest_date, end_date=youngest_date)

def gen_join_date(fake, birth_date):
    start_date = datetime.date(birth_date.year + YOUNGEST_AGE, birth_date.month, birth_date.day)
    return fake.date_between(start_date=start_date)

def gen_worker(left):
    fake = Faker()
    fake.add_provider(date_time)

    name = fake.name()
    role = gen_role()
    sallary = gen_sallary_per_hour()
    #TODO: Sometimes, the date crashes because the month number is incorrect (29 feb when 28 is the max)
    email = gen_email(name)
    birth_date = gen_birth_date(fake)
    join_date = gen_join_date(fake, birth_date)
    left_date = "NULL"
    if left:
        left_date = fake.date_between(start_date=join_date)
    return (name, role, str(sallary), str(join_date), str(left_date), str(birth_date), email)
            
def to_csv(workers):
    csv_rows = [','.join(w) for w in workers]
    return '\n'.join(csv_rows)

def main(args):
    workers = []
    for i in range(args.count + args.left):
        # TODO: fix all lefts at the beginning..
        left = i < args.left
        workers.append((str(i),) + gen_worker(left))
    with open(args.output, "w") as f:
        f.write(ATTRIBUTES_ROW)
        f.write(to_csv(workers))

def create_parser():
    import argparse
    parser = argparse.ArgumentParser(description="Worker CSV Generator")
    parser.add_argument('-o', '--output', required=True, help='CSV output path')
    parser.add_argument('-c', '--count', required=True, type=int, help='Number of workers that are currently working')
    parser.add_argument('-l', '--left', default=0, type=int, help='Number of workers that left the job')
    return parser

if __name__ == "__main__":
    parser = create_parser()
    main(parser.parse_args())

