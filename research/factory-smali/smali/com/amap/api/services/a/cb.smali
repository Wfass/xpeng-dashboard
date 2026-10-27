.class public Lcom/amap/api/services/a/cb;
.super Ljava/lang/Object;
.source "UpdateLogInfo.java"


# annotations
.annotation runtime Lcom/amap/api/services/a/bq;
    a = "e"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/amap/api/services/a/br;
        a = "c1"
        b = 0x2
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/amap/api/services/a/br;
        a = "c2"
        b = 0x2
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/services/a/br;
        a = "c3"
        b = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/amap/api/services/a/cb;->a:I

    .line 19
    return-void
.end method

.method public a()Z
    .locals 2

    .line 22
    iget v0, p0, Lcom/amap/api/services/a/cb;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(Z)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/amap/api/services/a/cb;->b:I

    .line 27
    return-void
.end method

.method public b()Z
    .locals 2

    .line 30
    iget v0, p0, Lcom/amap/api/services/a/cb;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(Z)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amap/api/services/a/cb;->c:I

    .line 35
    return-void
.end method

.method public c()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/amap/api/services/a/cb;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
