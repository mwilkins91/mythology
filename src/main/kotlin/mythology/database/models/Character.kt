package mythology.databse.models

import org.jetbrains.exposed.dao.*
import org.jetbrains.exposed.sql.SizedIterable
import mythology.databse.tables.Characters
import mythology.databse.tables.Character_Relationships
import mythology.databse.models.Character
import mythology.databse.models.Character_Relationship


class Character(id: EntityID<Int>) : IntEntity(id) {
  companion object : IntEntityClass<Character>(Characters)

  var name by Characters.name
  var classification by Characters.classification
  var subclassification by Characters.subclassification

  val relationships by Character_Relationship referrersOn Character_Relationships.character
}