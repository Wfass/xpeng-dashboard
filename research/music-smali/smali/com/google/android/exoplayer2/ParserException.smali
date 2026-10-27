.class public Lcom/google/android/exoplayer2/ParserException;
.super Ljava/io/IOException;
.source "ParserException.java"


# instance fields
.field private shouldLoadError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;
    .locals 1

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public isShouldLoadError()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ParserException;->shouldLoadError:Z

    return v0
.end method

.method public setShouldLoadError(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ParserException;->shouldLoadError:Z

    return-void
.end method
