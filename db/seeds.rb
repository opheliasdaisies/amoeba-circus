# Acts

act1 = Act.create(
  :name => 'Fire Bats of Azkaban',
  :performance_date => DateTime.parse("01/12/2013 17:00"))

act2 = Act.create(
  :name => 'Rope Creatures of Zhar',
  :performance_date => DateTime.parse("09/12/2013 14:00"))

act3 = Act.create(
  :name => 'Fantastic Flying Gel Family',
  :performance_date => DateTime.parse("14/12/2013 14:00"))

act4 = Act.create(
  :name => 'Slime Twins',
  :performance_date => DateTime.parse("22/12/2013 16:00"))

act5 = Act.create(
  :name => 'Lead Bellies Freak Show',
  :performance_date => DateTime.parse("29/12/2013 17:00"))

# Amoebas

# talents: acrobat, contortionist, clown, juggler, or freak;

amoeba1 = Amoeba.create(
  :name => 'Jake',
  :talent => 'acrobat',
  :generation => 1,
  :act_id => 3)

amoeba2 = Amoeba.create(
  :name => 'Jasmine',
  :talent => 'contortionist',
  :generation => 1,
  :act_id => 2)

amoeba3 = Amoeba.create(
  :name => 'Wendel',
  :talent => 'clown',
  :generation => 1,
  :act_id => 4)

amoeba4 = Amoeba.create(
  :name => 'Ducky',
  :talent => 'juggler',
  :generation => 1,
  :act_id => 1)

amoeba4 = Amoeba.create(
  :name => 'Spike',
  :talent => 'freak',
  :generation => 1,
  :act_id => 5)
