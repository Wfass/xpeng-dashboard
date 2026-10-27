.class public Lcom/amap/api/services/a/al;
.super Ljava/lang/Object;
.source "CloudSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/ICloudSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

.field private c:Lcom/amap/api/services/cloud/CloudSearch$Query;

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/cloud/CloudResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/al;->f:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/al;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 130
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 138
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/y;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/services/a/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p1, Lcom/amap/api/services/a/f;

    iget-object p2, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lcom/amap/api/services/a/f;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/y;)V

    .line 142
    invoke-virtual {p1}, Lcom/amap/api/services/a/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/cloud/CloudItemDetail;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    const-string p2, "CloudSearch"

    const-string v1, "searchCloudDetail"

    invoke-static {p1, p2, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    instance-of p2, p1, Lcom/amap/api/services/core/AMapException;

    if-nez p2, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    move-object p1, v0

    :goto_0
    return-object p1

    .line 146
    :cond_0
    check-cast p1, Lcom/amap/api/services/core/AMapException;

    throw p1

    .line 134
    :cond_1
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string p2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string p2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 63
    nop

    .line 64
    nop

    .line 66
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/al;->c:Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {p1, v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/services/a/al;->d:I

    .line 71
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->clone()Lcom/amap/api/services/cloud/CloudSearch$Query;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/al;->c:Lcom/amap/api/services/cloud/CloudSearch$Query;

    .line 72
    iget-object v1, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 77
    :cond_0
    iget v1, p0, Lcom/amap/api/services/a/al;->d:I

    if-nez v1, :cond_1

    .line 78
    new-instance v1, Lcom/amap/api/services/a/g;

    iget-object v2, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/amap/api/services/a/g;-><init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    .line 79
    invoke-virtual {v1}, Lcom/amap/api/services/a/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/cloud/CloudResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/cloud/CloudResult;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 82
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/al;->a(I)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    if-nez v1, :cond_2

    .line 84
    :try_start_3
    new-instance v0, Lcom/amap/api/services/a/g;

    iget-object v2, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/amap/api/services/a/g;-><init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    .line 85
    invoke-virtual {v0}, Lcom/amap/api/services/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/cloud/CloudResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 86
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-object v1, v0

    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    goto :goto_2

    .line 67
    :cond_3
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 89
    :catch_1
    move-exception p1

    move-object v1, v0

    .line 90
    :goto_1
    const-string v0, "CloudSearch"

    const-string v2, "searchCloud"

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    instance-of v0, p1, Lcom/amap/api/services/core/AMapException;

    if-nez v0, :cond_4

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :goto_2
    return-object v1

    .line 92
    :cond_4
    check-cast p1, Lcom/amap/api/services/core/AMapException;

    throw p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/services/a/al;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    return-object p0
.end method

.method private a(Lcom/amap/api/services/cloud/CloudResult;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 1

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    .line 196
    iget v0, p0, Lcom/amap/api/services/a/al;->d:I

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/services/a/al;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    .line 208
    iget v0, p0, Lcom/amap/api/services/a/al;->d:I

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected a(I)Lcom/amap/api/services/cloud/CloudResult;
    .locals 1

    .line 201
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/al;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/cloud/CloudResult;

    return-object p1

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "page out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/amap/api/services/a/al$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/al$1;-><init>(Lcom/amap/api/services/a/al;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    .line 125
    invoke-virtual {v0}, Lcom/amap/api/services/a/al$1;->start()V

    .line 126
    return-void
.end method

.method public searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 161
    new-instance v0, Lcom/amap/api/services/a/al$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/services/a/al$2;-><init>(Lcom/amap/api/services/a/al;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/amap/api/services/a/al$2;->start()V

    .line 182
    return-void
.end method

.method public setOnCloudSearchListener(Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amap/api/services/a/al;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 59
    return-void
.end method
