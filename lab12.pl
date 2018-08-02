writefile:-
write("enter country names"),write("1. "),read(S),write("2, "),read(T),open('test.txt',write,Stream),write(Stream,S),nl(Stream),write(Stream,T),nl(Stream),close(Stream).
readfromfile:-
open('test.txt',read,Stream),get_char(Stream,Char1),process_the_stream(Char1,Stream).
process_the_stream(end_of_file,_):-!.
process_the_stream(Char,Stream):-write(Char),get_char(Stream,Char2),process_the_stream(Char2,Stream).
