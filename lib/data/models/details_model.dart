/// adult : false
/// also_known_as : ["George Walton Lucas Jr. "]
/// biography : "George Walton Lucas Jr. (born May 14, 1944) is an American filmmaker and entrepreneur. Lucas is known for creating the Star Wars and Indiana Jones franchises and founding Lucasfilm, LucasArts and Industrial Light & Magic. He served as chairman of Lucasfilm before selling it to The Walt Disney Company in 2012.\n\nAfter graduating from the University of Southern California in 1967, Lucas co-founded American Zoetrope with filmmaker Francis Ford Coppola. Lucas wrote and directed THX 1138 (1971), based on his earlier student short Electronic Labyrinth: THX 1138 4EB, which was a critical success but a financial failure. His next work as a writer-director was the film American Graffiti (1973), inspired by his youth in early 1960s Modesto, California, and produced through the newly founded Lucasfilm. The film was critically and commercially successful, and received five Academy Award nominations including Best Picture.\n\nLucas's next film, the epic space opera Star Wars (1977), had a troubled production but was a surprise hit, becoming the highest-grossing film at the time, winning six Academy Awards and sparking a cultural phenomenon. Lucas produced and co-wrote the sequels The Empire Strikes Back (1980) and Return of the Jedi (1983). With director Steven Spielberg, he created, produced and co-wrote the Indiana Jones films Raiders of the Lost Ark (1981), Temple of Doom (1984), The Last Crusade (1989) and Kingdom of the Crystal Skull (2008). He also produced and wrote a variety of films and television series through Lucasfilm between the 1970s and the 2010s.\n\nIn 1997, Lucas rereleased the Star Wars trilogy as part of a special edition featuring several alterations; home media versions with further changes were released in 2004 and 2011. He returned to directing with a Star Wars prequel trilogy comprising The Phantom Menace (1999), Attack of the Clones (2002), and Revenge of the Sith (2005). He last collaborated on the CGI-animated television series Star Wars: The Clone Wars (2008–2014, 2020), the war film Red Tails (2012), and the CGI film Strange Magic (2015).\n\nLucas is one of history's most financially successful filmmakers and has been nominated for four Academy Awards. His films are among the 100 highest-grossing movies at the North American box office, adjusted for ticket-price inflation. Lucas is considered a significant figure of the 20th-century New Hollywood movement.\n\nDescription above from the Wikipedia article George Lucas, licensed under CC-BY-SA, full list of contributors on Wikipedia."
/// birthday : "1944-05-14"
/// deathday : null
/// gender : 2
/// homepage : null
/// id : 1
/// imdb_id : "nm0000184"
/// known_for_department : "Directing"
/// name : "George Lucas"
/// place_of_birth : "Modesto, California, USA"
/// popularity : 22.169
/// profile_path : "/WCSZzWdtPmdRxH9LUCVi2JPCSJ.jpg"

class DetailsModel {
  DetailsModel({
      this.adult, 
      this.alsoKnownAs, 
      this.biography, 
      this.birthday, 
      this.deathday, 
      this.gender, 
      this.homepage, 
      this.id, 
      this.imdbId, 
      this.knownForDepartment, 
      this.name, 
      this.placeOfBirth, 
      this.popularity, 
      this.profilePath,});

  DetailsModel.fromJson(dynamic json) {
    adult = json['adult'];
    alsoKnownAs = json['also_known_as'] != null ? json['also_known_as'].cast<String>() : [];
    biography = json['biography'];
    birthday = json['birthday'];
    deathday = json['deathday'];
    gender = json['gender'];
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    placeOfBirth = json['place_of_birth'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
  }
  bool? adult;
  List<String>? alsoKnownAs;
  String? biography;
  String? birthday;
  dynamic deathday;
  num? gender;
  dynamic homepage;
  num? id;
  String? imdbId;
  String? knownForDepartment;
  String? name;
  String? placeOfBirth;
  num? popularity;
  String? profilePath;
DetailsModel copyWith({  bool? adult,
  List<String>? alsoKnownAs,
  String? biography,
  String? birthday,
  dynamic deathday,
  num? gender,
  dynamic homepage,
  num? id,
  String? imdbId,
  String? knownForDepartment,
  String? name,
  String? placeOfBirth,
  num? popularity,
  String? profilePath,
}) => DetailsModel(  adult: adult ?? this.adult,
  alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
  biography: biography ?? this.biography,
  birthday: birthday ?? this.birthday,
  deathday: deathday ?? this.deathday,
  gender: gender ?? this.gender,
  homepage: homepage ?? this.homepage,
  id: id ?? this.id,
  imdbId: imdbId ?? this.imdbId,
  knownForDepartment: knownForDepartment ?? this.knownForDepartment,
  name: name ?? this.name,
  placeOfBirth: placeOfBirth ?? this.placeOfBirth,
  popularity: popularity ?? this.popularity,
  profilePath: profilePath ?? this.profilePath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['also_known_as'] = alsoKnownAs;
    map['biography'] = biography;
    map['birthday'] = birthday;
    map['deathday'] = deathday;
    map['gender'] = gender;
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['place_of_birth'] = placeOfBirth;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    return map;
  }

}