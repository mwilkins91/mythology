package mythology.databse.seeds

import mythology.databse.models.Character
import org.jetbrains.exposed.sql.SizedCollection
import mythology.databse.models.Character_Relationship
import org.jetbrains.exposed.sql.transactions.*
import mythology.databse.util.RelationshipBuilder


fun seedAesir() {
  val aesir = transaction<HashMap<String, Character>> {
    val odin = Character.new {
      name = "Odin"
      classification = "god"
      subclassification = "Aesir"
    }

    val baldr = Character.new {
      name = "Baldr"
      classification = "god"
      subclassification = "Aesir"
    }
    
    val thor = Character.new {
      name = "Thor"
      classification = "god"
      subclassification = "Aesir"
    }

    val loki = Character.new {
      name = "Loki"
      classification = "Jotunn"
      subclassification = "Aesir"
    }

    val result = HashMap<String, Character>();

    result.set("thor", thor);
    result.set("odin", odin);
    result.set("loki", loki);
    result.set("baldr", baldr);

    result;
  }

  transaction{
    val odin = aesir.get("odin");
    val thor = aesir.get("thor");
    val baldr = aesir.get("baldr");
    (RelationshipBuilder(odin!!)).parentOf(thor!!, baldr!!)
  }

}