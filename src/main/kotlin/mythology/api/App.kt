/*
 * This Kotlin source file was generated by the Gradle 'init' task.
 */
package mythology.api

import io.javalin.Javalin
import mythology.api.router.attachRoutes

const val PORT = 7000;
const val APP_NAME = "Mythology API"

fun main(args: Array<String>) {
  val app = Javalin
              .create()
              .start(PORT)
  println("$APP_NAME starting on port $PORT...")
  attachRoutes(app);
  println("$APP_NAME started!")
}