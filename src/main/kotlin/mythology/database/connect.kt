package mythology.databse

import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.transactions.*
import org.jetbrains.exposed.dao.*
import mythology.databse.tables.*
import mythology.databse.models.Character
import mythology.databse.seeds.seedAesir

const val DB_ADDRESS = "jdbc:postgresql://localhost:7001/mythology"

fun connect() {
    val db = Database.connect(DB_ADDRESS, driver = "org.postgresql.Driver", user = "mark", password = "password123")  
  
   transaction {
    // print sql to std-out
    addLogger(StdOutSqlLogger)
    SchemaUtils.drop(Characters, Character_Relationships)
    SchemaUtils.create(Characters, Character_Relationships)
   }

    seedAesir()

    // Character.new {
    //   name = "Slepnir"
    //   classification = "creature"
    //   subclassification = "horse"
    // }
}