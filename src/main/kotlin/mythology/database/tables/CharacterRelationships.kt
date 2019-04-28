package mythology.databse.tables

import org.jetbrains.exposed.dao.*
import org.jetbrains.exposed.sql.*
import mythology.databse.tables.Characters


object Character_Relationships : IntIdTable() {
    val character = reference("character", Characters, ReferenceOption.CASCADE)
    val related_character = reference("related_character", Characters, ReferenceOption.CASCADE)
    val relationship = varchar("relationship", 50)
}