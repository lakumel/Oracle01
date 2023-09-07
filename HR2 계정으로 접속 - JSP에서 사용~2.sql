select * from board
order by seq desc

update board
set cnt=0;

commit;

alter table board
modify cnt default 0;


select *
from users