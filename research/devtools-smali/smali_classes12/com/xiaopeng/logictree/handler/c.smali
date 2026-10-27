.class public Lcom/xiaopeng/logictree/handler/c;
.super Lcom/xiaopeng/logictree/handler/h;
.source "DidInfo.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 15
    const-string p1, "DidInfo"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/c;->CLASS_NAME:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static synthetic lambda$R8UTTcFTDsYb_gref_I5CdGMyzo(Lcom/xiaopeng/logictree/handler/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/logictree/handler/c;->qb()V

    return-void
.end method

.method private synthetic qb()V
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/c;->YB:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/c;->YB:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/c;->YB:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/c;->YB:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/commonfunc/b/b/b;->a(IIILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/logictree/d;->dT(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 30
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 31
    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 36
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/c;->YB:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/c;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$c$R8UTTcFTDsYb_gref_I5CdGMyzo;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$c$R8UTTcFTDsYb_gref_I5CdGMyzo;-><init>(Lcom/xiaopeng/logictree/handler/c;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 44
    return-void
.end method
