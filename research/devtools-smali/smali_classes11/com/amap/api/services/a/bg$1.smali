.class Lcom/amap/api/services/a/bg$1;
.super Lcom/amap/api/services/a/bp;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fP:Lcom/amap/api/services/a/bh;

.field final synthetic fQ:Lcom/amap/api/services/a/bi;

.field final synthetic fR:Lcom/amap/api/services/a/bg;


# virtual methods
.method public a()V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bg$1;->fR:Lcom/amap/api/services/a/bg;

    iget-object v1, p0, Lcom/amap/api/services/a/bg$1;->fP:Lcom/amap/api/services/a/bh;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/bg;->b(Lcom/amap/api/services/a/bh;Z)Lcom/amap/api/services/a/bj;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/services/a/bg$1;->fR:Lcom/amap/api/services/a/bg;

    iget-object v2, p0, Lcom/amap/api/services/a/bg$1;->fQ:Lcom/amap/api/services/a/bi;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/bg;->a(Lcom/amap/api/services/a/bg;Lcom/amap/api/services/a/bj;Lcom/amap/api/services/a/bi;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/services/a/bg$1;->fR:Lcom/amap/api/services/a/bg;

    iget-object v2, p0, Lcom/amap/api/services/a/bg$1;->fQ:Lcom/amap/api/services/a/bi;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/bg;->a(Lcom/amap/api/services/a/bg;Lcom/amap/api/services/a/au;Lcom/amap/api/services/a/bi;)V

    .line 149
    :goto_0
    return-void
.end method
