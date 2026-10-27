.class public Lcom/alibaba/sdk/android/httpdns/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/l/a;

.field private final a:Ljava/lang/String;

.field private final a:[I

.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[ILcom/alibaba/sdk/android/httpdns/l/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[I

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:Lcom/alibaba/sdk/android/httpdns/l/a;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:Ljava/lang/String;

    invoke-static {p2, v6}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getPort(ILjava/lang/String;)I

    move-result p2

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

    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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

    if-nez v2, :cond_0

    const p1, 0x7fffffff

    return p1

    :cond_0
    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private a([Ljava/lang/String;[I[I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I[I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    aget-object v5, p1, v2

    if-eqz p2, :cond_0

    array-length v6, p2

    if-ge v2, v6, :cond_0

    aget v6, p2, v2

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aget v5, p3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/httpdns/l/c$a;

    invoke-direct {p1, p0}, Lcom/alibaba/sdk/android/httpdns/l/c$a;-><init>(Lcom/alibaba/sdk/android/httpdns/l/c;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/util/Pair;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[I

    if-eqz v4, :cond_0

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget v4, v4, v2

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/alibaba/sdk/android/httpdns/l/c;->a(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[I

    invoke-direct {p0, v3, v2, v0}, Lcom/alibaba/sdk/android/httpdns/l/c;->a([Ljava/lang/String;[I[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:Lcom/alibaba/sdk/android/httpdns/l/a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/l/c;->a:[I

    if-nez v1, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-interface {v0, v2, v3}, Lcom/alibaba/sdk/android/httpdns/l/a;->a([Ljava/lang/String;[I)V

    :cond_4
    return-void
.end method
