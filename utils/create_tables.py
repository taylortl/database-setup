from manipulate_mysql import execute_query

def create_tables(connection):
    create_user_table = """
    create table users (
        id int auto_increment,
        username varchar(40) not null, 
        score int,
        primary key(id)
    );"""
    execute_query(connection, create_user_table)

    create_question_table = """
    create table questions (
        id int auto_increment,
        question varchar(10000) not null,
        topic varchar(20),
        primary key(id)
    );"""
    execute_query(connection, create_question_table)

    create_question_choices_table = """
    create table question_choices (
        id int auto_increment,
        choice varchar(10000) not null, 
        is_answer enum('0','1') not null, 
        question_id int not null,
        primary key(id),
        foreign key(question_id) 
            references questions(id) 
            on delete cascade
    );"""
    execute_query(connection, create_question_choices_table)

    create_user_answers_table = """
    create table user_answers (
        user_id int not null,
        question_id int,
        choice_id int,
        is_correct enum('0','1') not null,
        foreign key(user_id) references users(id) on delete cascade,
        foreign key(question_id) references questions(id) on delete set null,
        foreign key(choice_id) references question_choices(id) on delete set null
    );"""
    execute_query(connection, create_user_answers_table)