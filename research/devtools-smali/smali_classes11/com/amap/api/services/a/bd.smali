.class public Lcom/amap/api/services/a/bd;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/bd$a;
    }
.end annotation


# instance fields
.field private fG:Lcom/amap/api/services/a/be;

.field private fH:Lcom/amap/api/services/a/bh;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/a/bh;)V
    .locals 6

    .line 36
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/bd;-><init>(Lcom/amap/api/services/a/bh;JJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/a/bh;JJ)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amap/api/services/a/bd;->fH:Lcom/amap/api/services/a/bh;

    .line 49
    iget-object v0, p1, Lcom/amap/api/services/a/bh;->fS:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 50
    const/4 p1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p1, Lcom/amap/api/services/a/bh;->fS:Ljava/net/Proxy;

    .line 54
    :goto_0
    new-instance v0, Lcom/amap/api/services/a/be;

    iget-object v1, p0, Lcom/amap/api/services/a/bd;->fH:Lcom/amap/api/services/a/bh;

    iget v1, v1, Lcom/amap/api/services/a/bh;->e:I

    iget-object v2, p0, Lcom/amap/api/services/a/bd;->fH:Lcom/amap/api/services/a/bh;

    iget v2, v2, Lcom/amap/api/services/a/bh;->f:I

    invoke-direct {v0, v1, v2, p1}, Lcom/amap/api/services/a/be;-><init>(IILjava/net/Proxy;)V

    iput-object v0, p0, Lcom/amap/api/services/a/bd;->fG:Lcom/amap/api/services/a/be;

    .line 56
    iget-object p1, p0, Lcom/amap/api/services/a/bd;->fG:Lcom/amap/api/services/a/be;

    invoke-virtual {p1, p4, p5}, Lcom/amap/api/services/a/be;->b(J)V

    .line 57
    iget-object p1, p0, Lcom/amap/api/services/a/bd;->fG:Lcom/amap/api/services/a/be;

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/services/a/be;->a(J)V

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/bd$a;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/amap/api/services/a/bd;->fG:Lcom/amap/api/services/a/be;

    iget-object v1, p0, Lcom/amap/api/services/a/bd;->fH:Lcom/amap/api/services/a/bh;

    invoke-virtual {v1}, Lcom/amap/api/services/a/bh;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/bd;->fH:Lcom/amap/api/services/a/bh;

    .line 68
    invoke-virtual {v2}, Lcom/amap/api/services/a/bh;->c()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/bd;->fH:Lcom/amap/api/services/a/bh;

    invoke-virtual {v3}, Lcom/amap/api/services/a/bh;->b()Ljava/util/Map;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/services/a/bd$a;)V

    .line 70
    return-void
.end method
