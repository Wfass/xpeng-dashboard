.class public Lcom/amap/api/services/a/ai;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private b:Landroid/content/Context;

.field private eW:Lcom/amap/api/services/a/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/services/a/ai;->b:Landroid/content/Context;

    .line 17
    iget-object p1, p0, Lcom/amap/api/services/a/ai;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ai;->K(Landroid/content/Context;)Lcom/amap/api/services/a/x;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    .line 18
    return-void
.end method

.method private K(Landroid/content/Context;)Lcom/amap/api/services/a/x;
    .locals 2

    .line 22
    nop

    .line 24
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/x;

    const-class v1, Lcom/amap/api/services/a/ae;

    invoke-static {v1}, Lcom/amap/api/services/a/x;->b(Ljava/lang/Class;)Lcom/amap/api/services/a/w;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/w;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 27
    const-string v0, "UpdateLogDB"

    const-string v1, "getDB"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/aj;)V
    .locals 3

    .line 55
    if-nez p1, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ai;->K(Landroid/content/Context;)Lcom/amap/api/services/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    .line 64
    :cond_1
    const-string v0, "1=1"

    .line 65
    iget-object v1, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    const-class v2, Lcom/amap/api/services/a/aj;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/services/a/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/x;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    goto :goto_2

    .line 72
    :catch_0
    move-exception p1

    .line 74
    const-string v0, "UpdateLogDB"

    const-string v1, "updateLog"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_2
    return-void
.end method

.method public bp()Lcom/amap/api/services/a/aj;
    .locals 4

    .line 33
    nop

    .line 36
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/amap/api/services/a/ai;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/services/a/ai;->K(Landroid/content/Context;)Lcom/amap/api/services/a/x;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    .line 40
    :cond_0
    const-string v1, "1=1"

    .line 41
    iget-object v2, p0, Lcom/amap/api/services/a/ai;->eW:Lcom/amap/api/services/a/x;

    const-class v3, Lcom/amap/api/services/a/aj;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/aj;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    move-object v0, v1

    :cond_1
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 48
    const-string v2, "UpdateLogDB"

    const-string v3, "getUpdateLog"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-object v0
.end method
