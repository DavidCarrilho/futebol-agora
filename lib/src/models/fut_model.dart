class FutMatch {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;
  FutMatch(
    this.fixture,
    this.home,
    this.away,
    this.goal,
  );

  factory FutMatch.fromJson(Map<String, dynamic> json) {
    return FutMatch(
      Fixture.fromJson(json['fixture']),
      Team.fromJson(json['teams']['home']),
      Team.fromJson(json['teams']['away']),
      Goal.fromJson(json['goals']),
    );
  }
}

// Store o fixture
class Fixture {
  int id;
  String date;
  Status status;
  Fixture(
    this.id,
    this.date,
    this.status,
  );
  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
      json['id'],
      json['date'],
      Status.fromJson(
        json['status'],
      ),
    );
  }
}

// Dados do Fix status
class Status {
  int elapsedTime;
  String long;
  Status(
    this.elapsedTime,
    this.long,
  );

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['long']);
  }
}

// o store dos datos do time
class Team {
  int id;
  String name;
  String logoUrl;
  bool winner;
  Team(
    this.id,
    this.name,
    this.logoUrl,
    this.winner,
  );

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo'], json['winner']);
  }
  // static Team fromJson(json) {}
}

class Goal {
  int home;
  int away;
  Goal(this.home, this.away);

// criar um factory que a copia dos dados para um arquivo json
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
