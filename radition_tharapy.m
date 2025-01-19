% RADITION THERAPY
prob = optimproblem("Description","Radiation Therapy Optimization")
I = optimvar("I",8,"LowerBound",0)
d = [10 7 3 8 8 5 9 10];
D = d*I;
prob.Objective = D
prob.Constraints.spinal = 2*I(3)+2*I(7) <= 5;
prob.Constraints.A = 3*I(2)+3*I(6) >= 7;
prob.Constraints.B = 3*I(3)+2*I(6) >= 7;
prob.Constraints.C = 4*I(3)+2*I(5) >= 7;
prob.Constraints.D = 2*I(4)+I(7) >= 7;
sol = solve(prob)
bar(sol.I)
spinalCordDose = 2*I(3) + 2*I(7)
check = evaluate(spinalCordDose,sol)