select * from dbo.finace
select * from dbo.finace2
 
select year(issue_d),sum(loan_amnt) as Total_Loan_amnt from dbo.finace
group by (issue_d),(loan_amnt)
order by (loan_amnt)

select (grade), (sub_grade),sum(revol_bal) as total_revol_bal
from dbo.finace f1 inner join dbo.finace2 f2
on(f1.id = f2.id) 
group by grade,sub_grade
order by grade;


select verification_status, round(sum(total_pymnt),2) as Total_payment
from dbo.finace f1 inner join dbo.finace2 f2 
on(f1.id = f2.id) 
where verification_status in('Verified', 'Not Verified')
group by verification_status;


select (addr_state),(last_credit_pull_d)
from dbo.finace f1 inner join dbo.finace2 f2 
on(f1.id = f2.id) 
group by addr_state, last_credit_pull_d
order by addr_state;


select home_ownership, last_pymnt_d
from dbo.finace f1 inner join dbo.finace2 f2 
on(f1.id = f2.id) 
group by home_ownership, last_pymnt_d
order by last_pymnt_d;