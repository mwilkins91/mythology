package mythology.api.router

import io.javalin.Javalin

fun attachRoutes(app: Javalin) {
    app.get("/") { ctx -> 
     ctx.result("Home!")
    }
    app.get("*") { ctx -> 
      ctx.status(404)
      ctx.result("404: Page not found :(")
     }
}