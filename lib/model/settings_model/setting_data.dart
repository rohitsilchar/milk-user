
import 'setting_model.dart';

class SettingData {
  SettingData({
    this.setting,
    this.languages,
    this.timeslots,
    this.terms,
    this.aboutUs,
  });

  Map<String,dynamic>? setting;
  List<LanguageItem>? languages;
  List<Timeslot>? timeslots;
  Terms? terms;
  List<Terms>? aboutUs;

  factory SettingData.fromJson(Map<String, dynamic> json) { 
   Map<String,dynamic> data = {};
    json["setting"].forEach((e) { 
       data["${e['key'].toString()}"] = e['value'];
    });
   return SettingData(
    setting: data,
    languages: List<LanguageItem>.from(json["languages"].map((x) => LanguageItem.fromJson(x))),
    timeslots: List<Timeslot>.from(json["timeslots"].map((x) => Timeslot.fromJson(x))),
    terms: Terms.fromJson(json["terms"] ?? {}),
    aboutUs: List<Terms>.from(json["about_us"].map((x) => Terms.fromJson(x))),
   );
  }

  Map<String, dynamic> toJson() => {
    "setting": setting,
    "languages": List<dynamic>.from(languages!.map((x) => x.toJson())),
    "timeslots": List<dynamic>.from(timeslots!.map((x) => x.toJson())),
    "terms": terms!.toJson(),
    "about_us": List<dynamic>.from(aboutUs!.map((x) => x.toJson())),
  };
}