.class Lcom/amap/api/services/a/ap$1;
.super Ljava/lang/Thread;
.source "PoiSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ap;->searchPOIAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ap;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ap;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 177
    iget-object v0, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 178
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 179
    const/16 v1, 0x258

    iput v1, v0, Landroid/os/Message;->what:I

    .line 180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 181
    nop

    .line 183
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-virtual {v3}, Lcom/amap/api/services/a/ap;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    const-string v2, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    new-instance v2, Lcom/amap/api/services/a/q$h;

    invoke-direct {v2}, Lcom/amap/api/services/a/q$h;-><init>()V

    .line 190
    :goto_0
    iget-object v4, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v4}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v2, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 191
    iput-object v3, v2, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    .line 192
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object v1, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    goto :goto_2

    .line 186
    :catch_0
    move-exception v2

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    .line 186
    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 187
    :goto_1
    :try_start_2
    const-string v4, "errorCode"

    invoke-virtual {v2}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    new-instance v2, Lcom/amap/api/services/a/q$h;

    invoke-direct {v2}, Lcom/amap/api/services/a/q$h;-><init>()V

    goto :goto_0

    .line 196
    :goto_2
    return-void

    .line 189
    :catchall_1
    move-exception v2

    :goto_3
    new-instance v4, Lcom/amap/api/services/a/q$h;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$h;-><init>()V

    .line 190
    iget-object v5, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v5}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 191
    iput-object v3, v4, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    .line 192
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    iget-object v1, p0, Lcom/amap/api/services/a/ap$1;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    throw v2
.end method
