.class public Lcom/amap/api/services/a/al;
.super Ljava/lang/Object;
.source "DexDownloadItem.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amap/api/services/a/al;->h:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/amap/api/services/a/al;->i:Ljava/lang/String;

    .line 55
    :try_start_0
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 56
    array-length p2, p1

    .line 58
    const/4 p3, 0x1

    if-gt p2, p3, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    sub-int/2addr p2, p3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/amap/api/services/a/al;->a:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/amap/api/services/a/al;->a:Ljava/lang/String;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 65
    const/4 p2, 0x0

    aget-object v0, p1, p2

    iput-object v0, p0, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/amap/api/services/a/al;->c:Ljava/lang/String;

    .line 69
    aget-object p3, p1, p3

    iput-object p3, p0, Lcom/amap/api/services/a/al;->d:Ljava/lang/String;

    .line 71
    const/4 p3, 0x3

    aget-object p3, p1, p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/amap/api/services/a/al;->f:I

    .line 73
    const/4 p3, 0x4

    aget-object p1, p1, p3

    const-string p3, "\\."

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/services/a/al;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    const-string p2, "DexDownloadItem"

    const-string p3, "DexDownloadItem"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amap/api/services/a/al;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amap/api/services/a/al;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amap/api/services/a/al;->c:Ljava/lang/String;

    return-object v0
.end method
