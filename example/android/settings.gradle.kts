pluginManagement {
    val flutterSdkPath: String = run {
        val properties = java.util.Properties()
        file("local.properties").reader(Charsets.UTF_8).use { properties.load(it) }
        properties.getProperty("flutter.sdk") ?: throw GradleException("flutter.sdk not set in local.properties")
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0" apply true
    id("com.android.application") version "9.0.1" apply false
}

include(":app")
