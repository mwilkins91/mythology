package mythology.databse.models

import org.jetbrains.exposed.dao.*
import org.jetbrains.exposed.sql.*
import mythology.databse.tables.Characters
import mythology.databse.tables.Character_Relationships
import mythology.databse.models.Character

class Character_Relationship(id: EntityID<Int>) : IntEntity(id) {
  companion object : IntEntityClass<Character_Relationship>(Character_Relationships)

    var character by Character referencedOn Character_Relationships.character
    var related_character by Character referencedOn Character_Relationships.related_character
    var relationship by Character_Relationships.relationship
}