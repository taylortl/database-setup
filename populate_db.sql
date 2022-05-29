use quiz_app;

use sql_intro;
describe question_choices;
describe questions;
describe users;
describe user_answers;

select * from questions;
delete from questions where id = 15;
insert into questions (id, question, topic)
values(15, "The ancient Olympic Games started in ______ and ended in ______. ", "History");

insert into questions (question, topic)
values("Which of the following is a description of fluoridation?", "Science"),
("Which of the following is a description of chlorination?", "Science"),
("Which of the following is not a vital function of living things?", "Science"),
("What is the function of mammary glands?", "Science"),
("Animals with backbones are called ________", "Science"),
("The existence of different kinds of living things is called __________", "Science"),
("State the formula for energy efficiency calculation.", "Science"),
("How many chromosomes does a human body cell contain?", "Science"),
("How many chromosomes does a human sex cell contain?", "Science"),
("How many time zones do we have?", "Geography"),
("Which of the following is not fossil fuels?", "Science"),
("She ______(stay) in London if she ______(get) a job.", "English"),
("I am sorry I can't hear what you ______(say) because everyone ______(talk) so loudly.", "English"),
("The discussion started between John and me, but then everyone ______.", "English"),
("The ancient Olympic Games started in ______ and ended in ______. ", "History"),
("The modern Olympic Games started in ______. ", "History");


insert into question_choices (choice, is_answer, question_id)
values("addition of flouride to prevent tooth decay", "1", 1),
("addition of fluorine to prevent tooth decay", "0", 1),
("addition of flouride to kill bacteria", "0", 1),
("addition of fluorine to kill bacteria", "0", 1);

insert into question_choices (choice, is_answer, question_id)
values("addition of chlorine to lower alkalinity", "0", 2),
("addition of chloride to prevent diarrhea", "0", 2),
("addition of chlorophyll to promote growth of aquatic plants", "0", 2),
("addition of chlorine to kill bacteria and viruses", "1", 2);

insert into question_choices (choice, is_answer, question_id)
values("Excretion", "0", 3),
("Make own food", "1", 3),
("Reproduction", "0", 3),
("Growth", "0", 3);

insert into question_choices (choice, is_answer, question_id)
values("Secrete sex hormone to trigger the reproduction of milk", "0", 4),
("Secrete sex hormone called estrogen", "0", 4),
("Produce milk to feed young offspring", "1", 4),
("Produce milk to for whole family", "0", 4);

insert into question_choices (choice, is_answer, question_id)
values("Amphibians", "0", 5),
("Invertebrates", "0", 5),
("Vertebrates", "1", 5),
("Mammals", "0", 5);

insert into question_choices (choice, is_answer, question_id)
values("Biodiversity", "1", 6),
("Biodensity", "0", 6),
("Biovariety", "0", 6),
("Biomulteity", "0", 6);

insert into question_choices (choice, is_answer, question_id)
values("energy efficiency = (energy input / energy output) × 100", "0", 7),
("energy efficiency = (energy output / energy input) × 100", "1", 7),
("energy efficiency = (energy output * energy input) / 100", "0", 7),
("energy efficiency = (energy input / energy output)", "0", 7);

insert into question_choices (choice, is_answer, question_id)
values("1", "0", 8),
("23", "0", 8),
("2", "0", 8),
("46", "1", 8);

insert into question_choices (choice, is_answer, question_id)
values("1", "0", 9),
("23", "1", 9),
("2", "0", 9),
("46", "0", 9);

insert into question_choices (choice, is_answer, question_id)
values("18", "0", 10),
("23", "0", 10),
("24", "1", 10),
("12", "0", 10);

insert into question_choices (choice, is_answer, question_id)
values("Coal", "0", 11),
("Charcoal", "1", 11),
("Crude oil", "0", 11),
("Natural gas", "0", 11);

insert into question_choices (choice, is_answer, question_id)
values("would stay / got", "0", 12),
("would stay / gets", "0", 12),
("stays / gets", "0", 12),
("will stay / gets", "1", 12);

insert into question_choices (choice, is_answer, question_id)
values("said / talk", "0", 13),
("are saying / is talking", "1", 13),
("say / talk", "0", 13),
("said / was talking", "0", 13);

insert into question_choices (choice, is_answer, question_id)
values("comes over", "0", 14),
("keeps on", "0", 14),
("gives up", "0", 14),
("joins in", "1", 14);

insert into question_choices (choice, is_answer, question_id)
values("776 BC / 393 AD", "1", 15),
("681 BC / 793 AD", "0", 15),
("576 BC / 698 AD", "0", 15),
("750 BC / 393 AD", "0", 15);

insert into question_choices (choice, is_answer, question_id)
values("1900", "0", 16),
("1899", "0", 16),
("1896", "1", 16),
("1869", "0", 16);

insert into questions (question, topic)
values("State the law of conservation of energy.", "Science");
insert into question_choices (choice, is_answer, question_id)
values("Energy can be created or destroyed", "0", 17),
("Energy can only be destroyed", "0", 17),
("Energy can neither be created nor destroyed", "1", 17),
("Energy can only be created", "0", 17);

insert into questions (question, topic)
values("What is the energy conversion when playing guitar?", "Science");
insert into question_choices (choice, is_answer, question_id)
values("Kinetic -> Sound", "1", 18),
("Kinetic -> Heat", "0", 18),
("Potential + Kinetic -> Sound", "0", 18),
("Kinetic + Heat -> Sound", "0", 18);

