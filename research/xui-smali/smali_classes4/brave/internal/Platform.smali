.class public abstract Lbrave/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/internal/Platform$Jre6;,
        Lbrave/internal/Platform$Jre7;,
        Lbrave/internal/Platform$Jre9;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PLATFORM:Lbrave/internal/Platform;


# instance fields
.field volatile linkLocalIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lbrave/internal/Platform;->findPlatform()Lbrave/internal/Platform;

    move-result-object v0

    sput-object v0, Lbrave/internal/Platform;->PLATFORM:Lbrave/internal/Platform;

    .line 24
    const-class v0, Lbrave/Tracer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbrave/internal/Platform;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findPlatform()Lbrave/internal/Platform;
    .locals 3

    .line 83
    invoke-static {}, Lbrave/internal/Platform$Jre9;->buildIfSupported()Lbrave/internal/Platform$Jre9;

    move-result-object v0

    .line 85
    .local v0, "jre9":Lbrave/internal/Platform;
    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lbrave/internal/Platform$Jre7;->buildIfSupported()Lbrave/internal/Platform$Jre7;

    move-result-object v1

    .line 89
    .local v1, "jre7":Lbrave/internal/Platform;
    if-eqz v1, :cond_1

    return-object v1

    .line 92
    :cond_1
    new-instance v2, Lbrave/internal/Platform$Jre6;

    invoke-direct {v2}, Lbrave/internal/Platform$Jre6;-><init>()V

    return-object v2
.end method

.method public static get()Lbrave/internal/Platform;
    .locals 1

    .line 62
    sget-object v0, Lbrave/internal/Platform;->PLATFORM:Lbrave/internal/Platform;

    return-object v0
.end method

.method static nextTraceIdHigh(I)J
    .locals 8
    .param p0, "random"    # I

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 192
    .local v0, "epochSeconds":J
    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, p0

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public clock()Lbrave/Clock;
    .locals 1

    .line 114
    new-instance v0, Lbrave/internal/Platform$1;

    invoke-direct {v0, p0}, Lbrave/internal/Platform$1;-><init>(Lbrave/internal/Platform;)V

    return-object v0
.end method

.method public abstract getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end method

.method public linkLocalIp()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lbrave/internal/Platform;->linkLocalIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrave/internal/Platform;->linkLocalIp:Ljava/lang/String;

    return-object v0

    .line 34
    :cond_0
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lbrave/internal/Platform;->linkLocalIp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lbrave/internal/Platform;->produceLinkLocalIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/internal/Platform;->linkLocalIp:Ljava/lang/String;

    .line 38
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lbrave/internal/Platform;->linkLocalIp:Ljava/lang/String;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "thrown"    # Ljava/lang/Throwable;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 73
    sget-object v0, Lbrave/internal/Platform;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 75
    .local v0, "lr":Ljava/util/logging/LogRecord;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 76
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 77
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 78
    :cond_1
    sget-object v2, Lbrave/internal/Platform;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 79
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 67
    sget-object v0, Lbrave/internal/Platform;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    sget-object v0, Lbrave/internal/Platform;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public abstract nextTraceIdHigh()J
.end method

.method produceLinkLocalIp()Ljava/lang/String;
    .locals 6

    .line 44
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 45
    .local v1, "nics":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v1, :cond_0

    return-object v0

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 48
    .local v2, "nic":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 49
    .local v3, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 51
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 52
    .end local v4    # "address":Ljava/net/InetAddress;
    :cond_1
    goto :goto_1

    .line 53
    .end local v2    # "nic":Ljava/net/NetworkInterface;
    .end local v3    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    goto :goto_0

    .line 57
    .end local v1    # "nics":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    goto :goto_2

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "error reading nics"

    invoke-virtual {p0, v2, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public abstract randomLong()J
.end method
