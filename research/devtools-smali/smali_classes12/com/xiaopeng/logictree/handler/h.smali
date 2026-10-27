.class public abstract Lcom/xiaopeng/logictree/handler/h;
.super Ljava/lang/Object;
.source "LogicActionHandler.java"


# instance fields
.field protected CLASS_NAME:Ljava/lang/String;

.field protected YB:[Ljava/lang/String;

.field protected Yc:Lcom/xiaopeng/logictree/a;

.field protected context:Landroid/content/Context;

.field protected mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "LogicActionHandler"

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/h;->CLASS_NAME:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/h;->YB:[Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/h;->context:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/h;->mApplication:Landroid/app/Application;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pG()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/h;->YB:[Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/h;->Yc:Lcom/xiaopeng/logictree/a;

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/h;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "argus : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/h;->YB:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 33
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    return v0

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/h;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    return-void
.end method
