.class Lcom/amap/api/services/a/cx$1;
.super Lcom/amap/api/services/a/dg;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/cy;

.field final synthetic b:Lcom/amap/api/services/a/cz;

.field final synthetic c:Lcom/amap/api/services/a/cx;


# virtual methods
.method public a()V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cx$1;->c:Lcom/amap/api/services/a/cx;

    iget-object v1, p0, Lcom/amap/api/services/a/cx$1;->a:Lcom/amap/api/services/a/cy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/cx;->b(Lcom/amap/api/services/a/cy;Z)Lcom/amap/api/services/a/da;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/services/a/cx$1;->c:Lcom/amap/api/services/a/cx;

    iget-object v2, p0, Lcom/amap/api/services/a/cx$1;->b:Lcom/amap/api/services/a/cz;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cx;->a(Lcom/amap/api/services/a/cx;Lcom/amap/api/services/a/da;Lcom/amap/api/services/a/cz;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/services/a/cx$1;->c:Lcom/amap/api/services/a/cx;

    iget-object v2, p0, Lcom/amap/api/services/a/cx$1;->b:Lcom/amap/api/services/a/cz;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cx;->a(Lcom/amap/api/services/a/cx;Lcom/amap/api/services/a/au;Lcom/amap/api/services/a/cz;)V

    .line 149
    :goto_0
    return-void
.end method
