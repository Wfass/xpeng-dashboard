.class final Lzipkin2/internal/Platform$Jre8;
.super Lzipkin2/internal/Platform$Jre7;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Jre8"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lzipkin2/internal/Platform$Jre7;-><init>()V

    return-void
.end method

.method static buildIfSupported()Lzipkin2/internal/Platform$Jre8;
    .locals 1

    :try_start_0
    const-string v0, "java.io.UncheckedIOException"

    .line 62
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    new-instance v0, Lzipkin2/internal/Platform$Jre8;

    invoke-direct {v0}, Lzipkin2/internal/Platform$Jre8;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public uncheckedIOException(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 71
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method
