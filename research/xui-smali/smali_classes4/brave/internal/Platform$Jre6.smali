.class Lbrave/internal/Platform$Jre6;
.super Lbrave/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jre6"
.end annotation


# instance fields
.field final prng:Ljava/util/Random;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 212
    invoke-direct {p0}, Lbrave/internal/Platform;-><init>()V

    .line 213
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lbrave/internal/Platform$Jre6;->prng:Ljava/util/Random;

    .line 214
    return-void
.end method


# virtual methods
.method public getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljava/net/InetSocketAddress;

    .line 199
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTraceIdHigh()J
    .locals 2

    .line 207
    iget-object v0, p0, Lbrave/internal/Platform$Jre6;->prng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Lbrave/internal/Platform$Jre6;->nextTraceIdHigh(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public randomLong()J
    .locals 2

    .line 203
    iget-object v0, p0, Lbrave/internal/Platform$Jre6;->prng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 217
    const-string v0, "Jre6{}"

    return-object v0
.end method
