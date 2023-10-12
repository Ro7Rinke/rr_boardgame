insert into Attribute( name ) values ('Fogo');
insert into Attribute( name ) values ('Água');
insert into Attribute( name ) values ('Vento');
insert into Attribute( name ) values ('Terra');
insert into Attribute( name ) values ('Luz');
insert into Attribute( name ) values ('Trevas');

insert into Class( name ) values ('Personagem');
insert into Class( name ) values ('Auxílio');

insert into SubClass( class_id, name ) values (2, 'Normal');
insert into SubClass( class_id, name ) values (2, 'Equipe');
insert into SubClass( class_id, name ) values (2, 'Campo');
insert into SubClass( class_id, name ) values (2, 'Instantânea');

insert into Operator( name, symbol, type ) values ('Sum', '+', 'arithmetic');
insert into Operator( name, symbol, type ) values ('Minus', '-', 'arithmetic');
insert into Operator( name, symbol, type ) values ('Multiply', '*', 'arithmetic');
insert into Operator( name, symbol, type ) values ('Division', '÷', 'arithmetic');
insert into Operator( name, symbol, type ) values ('Greater', '>', 'conditional');
insert into Operator( name, symbol, type ) values ('Less', '<', 'conditional');
insert into Operator( name, symbol, type ) values ('Equal', '=', 'conditional');
insert into Operator( name, symbol, type ) values ('Greater Equal', '≥', 'conditional');
insert into Operator( name, symbol, type ) values ('Less Equal', '≤', 'conditional');

insert into skill( name ) values ('Voar');
insert into skill( name ) values ('Nadar');
insert into skill( name ) values ('Alcance Real');
insert into skill( name ) values ('Visão Noturna');
insert into skill( name ) values ('Perfurante');
insert into skill( name ) values ('Suicída');
insert into skill( name ) values ('Revidor');