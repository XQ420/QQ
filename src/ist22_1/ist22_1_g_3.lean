import Mathlib.Tactic


theorem ist22_1_g_2(x₁ x₂: ℝ)
            (h₁ : g₁ = (3-x₁)*(x₁-2))
            (h₂ : g₂ = (1-x₂)*x₂)
            (h₃ : I = (7369*x₁)/865 - (2621*x₂)/173 - (35214*x₁^2*x₂^2)/865 - (2291*x₁*x₂)/865
                     - (15126*x₁*x₂^2)/865 + (4259*x₁^2*x₂)/173 + (25786*x₁*x₂^3)/865 + (17799*x₁^3*x₂)/865
                      - (3316*x₁^2)/865 - (11312*x₁^3)/865 + (30118*x₂^2)/865 - (792*x₁^4)/865 - (18863*x₂^3)/865 - (877*x₂^4)/865 - 3336/865)
              :
              0 ≤ g₁ ∧ 0 ≤ g₂
              → I ≤ 0 := by
  let p₀: ℝ := (8034889*x₁^2)/2096760 - (10792903*x₂)/3564492 - (42332471*x₁*x₂)/356449200 - (29574707*x₁)/1397840 - (14998579*x₂^2)/22278075 + 11091969/349460
  let p₁: ℝ := (836700094996358443*x₂)/50409974325053700 - (1940829884565727*x₁)/494215434559350 - (2127791918718466837*x₁*x₂)/201639897300214800 + (5702768692606123*x₁^2)/2372234085884880 + (11628959365654874*x₂^2)/2520498716252685
  let p₂: ℝ := (2235430117537246413899923*x₁)/194388841128483604315200 - (1003815687431366531922033193*x₁*x₂)/62787595684500204193809600 + (128061421416691821135371*x₁^2)/73867759628823769639776 + (456580128842551965295727*x₂^2)/784844946056252552422620
  let p₃: ℝ := (445010915554689657167527510462412417*x₁^2)/215738277761844555788952159346190700 - (9397585698948177458421629215518242731*x₁*x₂)/1018764089430932624558940752468122750 + (5124494630326808605205919190654737848*x₂^2)/509382044715466312279470376234061375
  let p₄: ℝ := (44587931598153685618909847067929478735060698693*x₁*x₂)/2739933017076429998818148596160293173193982400 - (60675000221092653520524420764257688119375997*x₁^2)/10073283151016286760360840427059901372036700
  let p₅: ℝ := (2084884777385375385683723395245314958496744687314038021*x₁^2)/201938813548728599213939687626407917878255880477714908800

  let p₀': ℝ := 3755/808 - (1045*x₂)/808 - (711*x₁)/808
  let p₁': ℝ :=(4089331*x₂)/606808 - (1106875*x₁)/606808
  let p₂': ℝ :=(775388859*x₁)/359149940

  let p0: ℝ :=(35*x₁)/102 - (53*x₂)/51 + 290/51
  let p1: ℝ :=(11855*x₁)/5916 + (150601*x₂)/14790
  let p2: ℝ :=(335437747*x₁)/30722604

  let δ₀: ℝ := 349460/11091969*(p₀^2) +
      50409974325053700/836700094996358443*(p₁^2) +
      194388841128483604315200/2235430117537246413899923*(p₂^2) +
      509382044715466312279470376234061375/5124494630326808605205919190654737848*(p₃^2) +
      2739933017076429998818148596160293173193982400/44587931598153685618909847067929478735060698693*(p₄^2) +
      201938813548728599213939687626407917878255880477714908800/2084884777385375385683723395245314958496744687314038021*(p₅^2)
  let δ₁: ℝ := 808/3755*(p₀'^2) + 606808/4089331*(p₁'^2) + 359149940/775388859*(p₂'^2)
  let δ₂: ℝ := 51/290*(p0^2) + 14790/150601*(p1^2) + 30722604/335437747*(p2^2)
  have h1 :349460/11091969*(p₀^2) +
      50409974325053700/836700094996358443*(p₁^2) +
      194388841128483604315200/2235430117537246413899923*(p₂^2) +
      509382044715466312279470376234061375/5124494630326808605205919190654737848*(p₃^2) +
      2739933017076429998818148596160293173193982400/44587931598153685618909847067929478735060698693*(p₄^2) +
      201938813548728599213939687626407917878255880477714908800/2084884777385375385683723395245314958496744687314038021*(p₅^2)= δ₀ := by exact rfl
  have h2 : 808/3755*(p₀'^2) + 606808/4089331*(p₁'^2) + 359149940/775388859*(p₂'^2) = δ₁ := by  exact rfl
  have h3 : 51/290*(p0^2) + 14790/150601*(p1^2) + 30722604/335437747*(p2^2) = δ₂ := by  exact rfl
  have I₁: I = -δ₀ - δ₁*g₁- δ₂*g₂  := by
    rw [h₁,h₂,h₃]
    linear_combination
  have l₀ : δ₀ ≥ 0 := by
    rw [← h1]
    have : p₀ ^ 2 ≥ 0 := by
      exact sq_nonneg p₀
    have : p₁ ^ 2 ≥ 0 := by
      exact sq_nonneg p₁
    have : p₂ ^ 2  ≥ 0 := by
        exact sq_nonneg p₂
    have : p₃ ^ 2  ≥ 0 := by
      exact sq_nonneg p₃
    have : p₄ ^ 2 ≥ 0 := by
      exact sq_nonneg p₄
    have : p₅ ^ 2 ≥ 0 := by
      exact sq_nonneg p₅
    linarith
  have l₁: 0 ≤ δ₁ := by
    rw [← h2]
    have : p₀' ^ 2 ≥ 0 := by
      exact sq_nonneg p₀'
    have : p₁' ^ 2 ≥ 0 := by
      exact sq_nonneg p₁'
    have : p₂' ^ 2 ≥ 0 := by
      exact sq_nonneg p₂'
    linarith
  have l₂: 0 ≤ δ₂ := by
    rw [← h3]
    have : p0 ^ 2 ≥ 0 := by
        exact sq_nonneg p0
    have : p1 ^ 2  ≥ 0 := by
        exact sq_nonneg p1
    have : p2 ^ 2  ≥ 0 := by
        exact sq_nonneg p2
    linarith
  rw [I₁]
  intro g
  have s₁ : 0 ≤ δ₁*g₁ := by
    exact Right.mul_nonneg l₁ g.left
  have s₂ : 0 ≤ δ₂*g₂  := by
    exact Right.mul_nonneg l₂ g.right
  linarith
