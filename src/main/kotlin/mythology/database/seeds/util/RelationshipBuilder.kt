package mythology.databse.util

import mythology.databse.models.Character
import mythology.databse.models.Character_Relationship
import org.jetbrains.exposed.sql.transactions.*

class RelationshipBuilder{

  var character: Character

  constructor(character: Character) {
      this.character = character
  }

  fun parentOf(vararg childCharacters: Character) {
    val that = this;

    transaction {
      for (child in childCharacters) {
        Character_Relationship.new {
          character = that.character
          related_character = child
          relationship = "parent"
        }

        Character_Relationship.new {
          character = child
          related_character = that.character
          relationship = "child"
        }
        val otherChildren = childCharacters.filter({!it.equals(child)}).toTypedArray()
        (RelationshipBuilder(child)).siblingOf(*otherChildren)
      }
    }
  }

  fun siblingOf(vararg siblingCharacters: Character) {
    val that = this;
    transaction {
      for (sibling in siblingCharacters) {
        Character_Relationship.new {
          character = that.character
          related_character = sibling
          relationship = "sibling"
        }

        Character_Relationship.new {
          character = sibling
          related_character = that.character
          relationship = "sibling"
        }
      }
    }
  }

}