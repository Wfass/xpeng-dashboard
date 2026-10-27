.class Lzipkin2/internal/Platform$Jre7;
.super Lzipkin2/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jre7"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lzipkin2/internal/Platform;-><init>()V

    return-void
.end method

.method static buildIfSupported()Lzipkin2/internal/Platform$Jre7;
    .locals 1

    :try_start_0
    const-string v0, "java.util.concurrent.ThreadLocalRandom"

    .line 79
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 80
    new-instance v0, Lzipkin2/internal/Platform$Jre7;

    invoke-direct {v0}, Lzipkin2/internal/Platform$Jre7;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public assertionError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
