# sorts M, A
# operations m: M,M -> M
#            a: M,A -> A
# equations  a(m(x,y),t) = a(x,a(y,t))

module_pres = Presentation(
  2,
  [(arity=[1,1],ret=1), (arity=[1,2],ret=2)],
  [(context=Context([1,1,2]),
    lhs=Appl(2, [Appl(1, [Var(1), Var(2)]), Var(3)]),
    rhs=Appl(2, [Var(1), Appl(2, [Var(2), Var(3)])]))]
)
