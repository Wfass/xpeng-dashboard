.class public Lcom/alibaba/sdk/android/httpdns/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/g/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/g/a;

.field private final a:Lcom/alibaba/sdk/android/httpdns/g/c$a;

.field private final a:Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;

.field private final a:Ljava/lang/String;

.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/g/c$a;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;Lcom/alibaba/sdk/android/httpdns/g/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Lcom/alibaba/sdk/android/httpdns/g/c$a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;

    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Lcom/alibaba/sdk/android/httpdns/g/a;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    :try_start_0
    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Lcom/alibaba/sdk/android/httpdns/g/c$a;

    invoke-interface {v4}, Lcom/alibaba/sdk/android/httpdns/g/c$a;->a()Ljava/net/Socket;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {v4, v5, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v4

    move-wide p1, v2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;->getPort()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/sdk/android/httpdns/g/c;->a(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->sortIpsWithSpeeds([Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Lcom/alibaba/sdk/android/httpdns/g/a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/g/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/sdk/android/httpdns/g/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
