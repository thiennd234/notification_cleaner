import org.jetbrains.kotlin.gradle.dsl.JvmTarget

group = "com.example.notification_cleaner"
version = "2.0.0"

plugins {
    id("com.android.library")
}

android {
    namespace = "com.example.notification_cleaner"
    compileSdk = 36

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_21
        targetCompatibility = JavaVersion.VERSION_21
    }

    defaultConfig {
        minSdk = 21
    }

    lint {
        disable += "InvalidPackage"
    }
}

kotlin {
    compilerOptions {
        jvmTarget = JvmTarget.fromTarget(JavaVersion.VERSION_21.toString())
    }
}

dependencies {
    implementation("androidx.annotation:annotation:1.9.1")
}
