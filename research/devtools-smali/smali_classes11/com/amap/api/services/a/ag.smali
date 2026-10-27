.class public abstract Lcom/amap/api/services/a/ag;
.super Ljava/lang/Object;
.source "LogInfo.java"


# instance fields
.field protected a:I
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "b2"
        b = 0x2
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "b1"
        b = 0x6
    .end annotation
.end field

.field protected c:I
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "b3"
        b = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a1"
        b = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/a/ag;->a:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/ag;->c:I

    return-void
.end method

.method public static I(I)Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    :try_start_0
    const-string v1, "b2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-string v1, "b1"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Lcom/amap/api/services/a/x;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amap/api/services/a/ag;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/amap/api/services/a/ag;->a:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amap/api/services/a/ag;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amap/api/services/a/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/amap/api/services/a/ag;->c:I

    .line 52
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ag;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public v()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/amap/api/services/a/ag;->c:I

    return v0
.end method
