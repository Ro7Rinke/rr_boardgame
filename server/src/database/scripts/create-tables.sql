create table Attribute (
    id integer primary key autoincrement not null,
    name text not null,
    symbol text null,
    is_group integer not null default 0 check(is_group = 0 or is_group = 1),
    color text null
);

create table Class (
    id integer primary key autoincrement not null,
    name text not null,
    symbol text null
);

create table SubClass (
    id integer primary key autoincrement not null,
    class_id integer not null,
    name text not null,
    symbol text null,
    foreign key(class_id) references Class(id)
);

create table Operator (
    id integer primary key autoincrement not null,
    name text not null,
    symbol text not null,
    text text null,
    type text not null
);

create table Card (
    id integer primary key autoincrement not null,
    class_id integer not null,
    name text not null,
    attribute_id integer not null,
    text text null,
    pic blob null,
    foreign key(attribute_id) references Attribute(id),
    foreign key(class_id) references Class(id)
);

create table CardCharacter (
    id integer primary key autoincrement not null,
    card_id integer not null,
    life integer not null,
    damage integer not null,
    critical_chance decimal null,
    critical_value intnull,
    critical_operator_id integer null,
    damage_text text null,
    movement_value integer null,
    movement_min integer null,
    movement_max integer null,
    movement_operator_id integer null,
    movement_text text null,
    range integer not null,
    range_text text null,
    doubled_damage integer null,
    doubled_damage_operator_id integer null,
    doubled_critical_chance decimal null,
    doubled_critical_operator_id integer null,
    doubled_damage_text text null,
    doubled_movement_value integer null,
    doubled_movement_min integer null,
    doubled_movement_max integer null,
    doubled_movement_operator_id integer null,
    doubled_movement_text text null,
    doubled_range integer null,
    doubled_range_operator_id integer null,
    doubled_range_text text null,
    deffense integer not null,
    deffense_operator_id integer null,
    weakness_attribute_id integer null,
    weakness_value integer null,
    weakness_operator_id integer null,
    resistance_attribute_id integer null,
    resistance_value integer null,
    resistance_operator_id integer null,
    foreign key(card_id) references Card(id),
    foreign key(critical_operator_id) references Operator(id),
    foreign key(movement_operator_id) references Operator(id),
    foreign key(doubled_damage_operator_id) references Operator(id),
    foreign key(doubled_critical_operator_id) references Operator(id),
    foreign key(doubled_movement_operator_id) references Operator(id),
    foreign key(doubled_range_operator_id) references Operator(id),
    foreign key(deffense_operator_id) references Operator(id),
    foreign key(weakness_attribute_id) references Attribute(id),
    foreign key(weakness_operator_id) references Operator(id),
    foreign key(resistance_attribute_id) references Attribute(id),
    foreign key(resistance_operator_id) references Operator(id)
);

create table Skill (
    id integer primary key autoincrement not null,
    name text not null,
    text text null,
    symbol text null
);

create table CardCharacterSkill (
    id integer primary key autoincrement not null,
    card_id integer not null,
    skill_id integer not null,
    foreign key(card_id) references Card(id),
    foreign key(skill_id) references Skill(id)
);

create table CardAssistance (
    id integer primary key autoincrement not null,
    sub_class_id integer not null,
    foreign key(sub_class_id) references SubClass(id)
);