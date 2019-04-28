package mythology.databse.tables

import org.jetbrains.exposed.dao.*

object Characters : IntIdTable() {
  val name = varchar("name", 50)
  val classification = varchar("classification", 50)
  val subclassification = varchar("subclassification", 50)

}