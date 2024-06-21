ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "3.3.0"

lazy val root = (project in file("."))
  .settings(
    name := "olympusDiscordBot",
    libraryDependencies += "net.katsstuff" %% "ackcord" % "0.18.1"
  )