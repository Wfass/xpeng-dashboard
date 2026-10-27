.class Lbrave/internal/Platform$Jre7;
.super Lbrave/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jre7"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lbrave/internal/Platform;-><init>()V

    return-void
.end method

.method static c()Lbrave/internal/Platform$Jre7;
    .locals 1

    :try_start_0
    const-string v0, "java.util.concurrent.ThreadLocalRandom"

    .line 165
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 166
    new-instance v0, Lbrave/internal/Platform$Jre7;

    invoke-direct {v0}, Lbrave/internal/Platform$Jre7;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jvnet/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 174
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextTraceIdHigh()J
    .locals 2
    .annotation build Lorg/jvnet/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 182
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Lbrave/internal/Platform$Jre7;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public randomLong()J
    .locals 2
    .annotation build Lorg/jvnet/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 178
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Jre7{}"

    return-object v0
.end method
