.class Lcom/amap/api/services/a/ap$2;
.super Ljava/lang/Thread;
.source "PoiSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ap;->searchPOIIdAsyn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/services/a/ap;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ap;Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    iput-object p2, p0, Lcom/amap/api/services/a/ap$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 221
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 222
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 223
    const/16 v1, 0x25a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    nop

    .line 227
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    iget-object v4, p0, Lcom/amap/api/services/a/ap$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amap/api/services/a/ap;->searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    :try_start_1
    const-string v2, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    new-instance v2, Lcom/amap/api/services/a/q$g;

    invoke-direct {v2}, Lcom/amap/api/services/a/q$g;-><init>()V

    .line 234
    iget-object v4, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v4}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v2, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 235
    iput-object v3, v2, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    .line 236
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    iget-object v1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    goto :goto_2

    .line 233
    :catchall_0
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    .line 229
    :catch_0
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    .line 233
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 229
    :catch_1
    move-exception v3

    .line 230
    :goto_1
    :try_start_2
    const-string v4, "PoiSearch"

    const-string v5, "searchPOIIdAsyn"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v4, "errorCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    new-instance v3, Lcom/amap/api/services/a/q$g;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$g;-><init>()V

    .line 234
    iget-object v4, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v4}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 235
    iput-object v2, v3, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    .line 236
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 240
    :goto_2
    return-void

    .line 233
    :goto_3
    new-instance v4, Lcom/amap/api/services/a/q$g;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$g;-><init>()V

    .line 234
    iget-object v5, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v5}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 235
    iput-object v2, v4, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    .line 236
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    iget-object v1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    throw v3
.end method
