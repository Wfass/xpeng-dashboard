.class public abstract Lzipkin2/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/Platform$Jre6;,
        Lzipkin2/internal/Platform$Jre7;,
        Lzipkin2/internal/Platform$Jre8;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lzipkin2/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lzipkin2/internal/Platform;->findPlatform()Lzipkin2/internal/Platform;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/Platform;->PLATFORM:Lzipkin2/internal/Platform;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findPlatform()Lzipkin2/internal/Platform;
    .locals 1

    .line 46
    invoke-static {}, Lzipkin2/internal/Platform$Jre8;->buildIfSupported()Lzipkin2/internal/Platform$Jre8;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-static {}, Lzipkin2/internal/Platform$Jre7;->buildIfSupported()Lzipkin2/internal/Platform$Jre7;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 55
    :cond_1
    invoke-static {}, Lzipkin2/internal/Platform$Jre6;->build()Lzipkin2/internal/Platform$Jre6;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lzipkin2/internal/Platform;
    .locals 1

    .line 41
    sget-object v0, Lzipkin2/internal/Platform;->PLATFORM:Lzipkin2/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public assertionError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 37
    throw v0
.end method

.method public uncheckedIOException(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
