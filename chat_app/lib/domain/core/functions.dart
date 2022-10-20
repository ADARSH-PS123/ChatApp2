 class HelperFunctions{
 static String idCreator(String id1, String id2) {
    List<String> ls = [id1.trim(), id2.trim()];
    ls.sort();
    return ls[0] + ls[1];
  }
 }