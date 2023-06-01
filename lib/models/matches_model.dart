// To parse this JSON data, do
//
//     final matches = matchesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Matches> matchesFromJson(String str) =>
    List<Matches>.from(json.decode(str).map((x) => Matches.fromJson(x)));



class Matches {
  CountryName countryName;
  String leagueId;
  LeagueName leagueName;
  String teamId;
  String teamName;
  OverallPromotion overallPromotion;
  String overallLeaguePosition;
  String overallLeaguePayed;
  String overallLeagueW;
  String overallLeagueD;
  String overallLeagueL;
  String overallLeagueGf;
  String overallLeagueGa;
  String overallLeaguePts;
  String homeLeaguePosition;
  String homePromotion;
  String homeLeaguePayed;
  String homeLeagueW;
  String homeLeagueD;
  String homeLeagueL;
  String homeLeagueGf;
  String homeLeagueGa;
  String homeLeaguePts;
  String awayLeaguePosition;
  String awayPromotion;
  String awayLeaguePayed;
  String awayLeagueW;
  String awayLeagueD;
  String awayLeagueL;
  String awayLeagueGf;
  String awayLeagueGa;
  String awayLeaguePts;
  String leagueRound;
  String teamBadge;
  String fkStageKey;
  StageName stageName;

  Matches({
    required this.countryName,
    required this.leagueId,
    required this.leagueName,
    required this.teamId,
    required this.teamName,
    required this.overallPromotion,
    required this.overallLeaguePosition,
    required this.overallLeaguePayed,
    required this.overallLeagueW,
    required this.overallLeagueD,
    required this.overallLeagueL,
    required this.overallLeagueGf,
    required this.overallLeagueGa,
    required this.overallLeaguePts,
    required this.homeLeaguePosition,
    required this.homePromotion,
    required this.homeLeaguePayed,
    required this.homeLeagueW,
    required this.homeLeagueD,
    required this.homeLeagueL,
    required this.homeLeagueGf,
    required this.homeLeagueGa,
    required this.homeLeaguePts,
    required this.awayLeaguePosition,
    required this.awayPromotion,
    required this.awayLeaguePayed,
    required this.awayLeagueW,
    required this.awayLeagueD,
    required this.awayLeagueL,
    required this.awayLeagueGf,
    required this.awayLeagueGa,
    required this.awayLeaguePts,
    required this.leagueRound,
    required this.teamBadge,
    required this.fkStageKey,
    required this.stageName,
  });

  factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        countryName: countryNameValues.map[json["country_name"]]!,
        leagueId: json["league_id"],
        leagueName: leagueNameValues.map[json["league_name"]]!,
        teamId: json["team_id"],
        teamName: json["team_name"],
        overallPromotion:
            overallPromotionValues.map[json["overall_promotion"]]!,
        overallLeaguePosition: json["overall_league_position"],
        overallLeaguePayed: json["overall_league_payed"],
        overallLeagueW: json["overall_league_W"],
        overallLeagueD: json["overall_league_D"],
        overallLeagueL: json["overall_league_L"],
        overallLeagueGf: json["overall_league_GF"],
        overallLeagueGa: json["overall_league_GA"],
        overallLeaguePts: json["overall_league_PTS"],
        homeLeaguePosition: json["home_league_position"],
        homePromotion: json["home_promotion"],
        homeLeaguePayed: json["home_league_payed"],
        homeLeagueW: json["home_league_W"],
        homeLeagueD: json["home_league_D"],
        homeLeagueL: json["home_league_L"],
        homeLeagueGf: json["home_league_GF"],
        homeLeagueGa: json["home_league_GA"],
        homeLeaguePts: json["home_league_PTS"],
        awayLeaguePosition: json["away_league_position"],
        awayPromotion: json["away_promotion"],
        awayLeaguePayed: json["away_league_payed"],
        awayLeagueW: json["away_league_W"],
        awayLeagueD: json["away_league_D"],
        awayLeagueL: json["away_league_L"],
        awayLeagueGf: json["away_league_GF"],
        awayLeagueGa: json["away_league_GA"],
        awayLeaguePts: json["away_league_PTS"],
        leagueRound: json["league_round"],
        teamBadge: json["team_badge"],
        fkStageKey: json["fk_stage_key"],
        stageName: stageNameValues.map[json["stage_name"]]!,
      );

  
}

enum CountryName { EUROCUPS }

final countryNameValues = EnumValues({"eurocups": CountryName.EUROCUPS});

enum LeagueName { UEFA_CHAMPIONS_LEAGUE }

final leagueNameValues =
    EnumValues({"UEFA Champions League": LeagueName.UEFA_CHAMPIONS_LEAGUE});

enum OverallPromotion {
  PROMOTION_CHAMPIONS_LEAGUE_PLAY_OFFS_18_FINALS,
  PROMOTION_EUROPA_LEAGUE_PLAY_OFFS_116_FINALS,
  EMPTY
}

final overallPromotionValues = EnumValues({
  "": OverallPromotion.EMPTY,
  "Promotion - Champions League (Play Offs: 1/8-finals)":
      OverallPromotion.PROMOTION_CHAMPIONS_LEAGUE_PLAY_OFFS_18_FINALS,
  "Promotion - Europa League (Play Offs: 1/16-finals)":
      OverallPromotion.PROMOTION_EUROPA_LEAGUE_PLAY_OFFS_116_FINALS
});

enum StageName { GROUP_STAGE }

final stageNameValues = EnumValues({"Group Stage": StageName.GROUP_STAGE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
