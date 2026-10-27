.class public Lcom/alibaba/sdk/android/httpdns/j/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/e/a;

.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/g/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/e;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/k;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/m;

.field private a:Z

.field private final b:Lcom/alibaba/sdk/android/httpdns/e/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/j/k;Lcom/alibaba/sdk/android/httpdns/j/m;Lcom/alibaba/sdk/android/httpdns/j/e;Lcom/alibaba/sdk/android/httpdns/e/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    iput-object p6, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/a;

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/e/a;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/httpdns/e/a;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->b:Lcom/alibaba/sdk/android/httpdns/e/a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/n;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 11

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    const-string v1, " via local dns"

    const-string v2, "request host "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v0, v7

    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object v8, v3

    goto :goto_1

    :cond_1
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object v8, v4

    :goto_1
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " via local dns return "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed request host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/e/a;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/a;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/e/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/g/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/j/m;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/n;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async start request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v6, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/a;

    move-object/from16 v9, p4

    invoke-virtual {v0, p1, p2, v9}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v10, v6, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    new-instance v11, Lcom/alibaba/sdk/android/httpdns/j/n$a;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/j/n$a;-><init>(Lcom/alibaba/sdk/android/httpdns/j/n;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/j/k;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v12, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync start request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->b:Lcom/alibaba/sdk/android/httpdns/e/a;

    invoke-virtual {v0, v15, v14, v12}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/k;

    new-instance v8, Lcom/alibaba/sdk/android/httpdns/j/n$b;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/j/n$b;-><init>(Lcom/alibaba/sdk/android/httpdns/j/n;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/j/k;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    :cond_1
    if-eqz p5, :cond_2

    iget-boolean v0, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()I

    move-result v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the httpDnsConfig timeout is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final timeout is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "wait for request finish"

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_5
    :try_start_0
    iget-object v8, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->b:Lcom/alibaba/sdk/android/httpdns/e/a;

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object v3, v12

    move-wide v12, v0

    move-object v1, v14

    move-object v14, v2

    :try_start_1
    invoke-virtual/range {v8 .. v14}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "lock await timeout finished"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v12

    move-object v1, v14

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    iget-object v0, v7, Lcom/alibaba/sdk/android/httpdns/j/n;->b:Lcom/alibaba/sdk/android/httpdns/e/a;

    invoke-virtual {v0, v15, v1, v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync resolve time is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/alibaba/sdk/android/httpdns/j/n$d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/httpdns/j/n$d;-><init>(Lcom/alibaba/sdk/android/httpdns/j/n;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/e/a;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->b:Lcom/alibaba/sdk/android/httpdns/e/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/j/e;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "request host "

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", which is filtered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync request host "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " extras : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cacheKey "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v7

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result in cache is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    const-string v0, " and return "

    const-string v8, " for "

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    if-eqz v2, :cond_a

    :cond_4
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " immediately"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_9

    :cond_7
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v7

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_b
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v2, :cond_12

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v2, p1, v4, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v5, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v3, p1, v5, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_0

    :cond_c
    move v2, v6

    goto :goto_1

    :cond_d
    :goto_0
    move v2, v9

    :goto_1
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move v6, v9

    :cond_f
    if-eqz v2, :cond_10

    if-eqz v6, :cond_10

    goto :goto_2

    :cond_10
    if-eqz v2, :cond_11

    move-object v2, p0

    move-object v3, p1

    goto :goto_3

    :cond_11
    if-eqz v6, :cond_13

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    goto :goto_3

    :cond_12
    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    :goto_3
    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_13
    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {p3, p1, p2, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result p4

    if-eqz p4, :cond_14

    iget-boolean p4, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    if-eqz p4, :cond_19

    :cond_14
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p4

    if-eqz p4, :cond_15

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " after request"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_18

    :cond_16
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_18

    :cond_17
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1

    :cond_18
    return-object p3

    :cond_19
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_1a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and return empty after request"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_1a
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/j/e;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "request host "

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", which is filtered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync non blocking request host "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " extras : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cacheKey "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v2, :cond_b

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v2, p1, v3, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v5, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v4, p1, v5, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v7

    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v6, v7

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    invoke-direct {p0, p1, v3, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_c

    invoke-direct {p0, p1, v5, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result p3

    if-eqz p3, :cond_d

    iget-boolean p3, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    if-eqz p3, :cond_f

    :cond_d
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p3

    if-eqz p3, :cond_e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and return "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " immediately"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and return empty immediately"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_10
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/j/e;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "request host "

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", which is filtered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_2

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/j/n$c;

    invoke-direct {p3, p0, p5, p1}, Lcom/alibaba/sdk/android/httpdns/j/n$c;-><init>(Lcom/alibaba/sdk/android/httpdns/j/n;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-interface {p5, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "async request host "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " extras : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cacheKey "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result in cache is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Z

    if-eqz v2, :cond_d

    :cond_6
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and return "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " immediately"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIps()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_b

    :cond_9
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->getIpv6s()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    return-void

    :cond_b
    if-eqz p5, :cond_c

    invoke-interface {p5, v0}, Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;->onHttpDnsCompleted(Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    :cond_c
    return-void

    :cond_d
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, p1, v3, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v1, p1, v6, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1

    :cond_e
    move v0, v2

    goto :goto_2

    :cond_f
    :goto_1
    move v0, v4

    :goto_2
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    move v2, v4

    :cond_11
    if-eqz v0, :cond_12

    if-eqz v2, :cond_12

    goto :goto_3

    :cond_12
    if-eqz v0, :cond_13

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V

    goto :goto_4

    :cond_13
    if-eqz v2, :cond_15

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V

    goto :goto_4

    :cond_14
    :goto_3
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HttpDnsCallback;)V

    :cond_15
    :goto_4
    return-void
.end method
