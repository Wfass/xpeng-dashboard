.class Lcom/amap/api/services/a/aq$1;
.super Ljava/lang/Thread;
.source "RoutePOISearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/aq;->searchRoutePOIAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/aq;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/aq;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 44
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    nop

    .line 48
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-virtual {v3}, Lcom/amap/api/services/a/aq;->searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    const-string v2, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    new-instance v2, Lcom/amap/api/services/a/q$j;

    invoke-direct {v2}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 54
    :goto_0
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v4

    iput-object v4, v2, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 55
    iput-object v3, v2, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    .line 56
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v1}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    goto :goto_2

    .line 50
    :catch_0
    move-exception v2

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    .line 50
    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 51
    :goto_1
    :try_start_2
    const-string v4, "errorCode"

    invoke-virtual {v2}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    new-instance v2, Lcom/amap/api/services/a/q$j;

    invoke-direct {v2}, Lcom/amap/api/services/a/q$j;-><init>()V

    goto :goto_0

    .line 60
    :goto_2
    return-void

    .line 53
    :catchall_1
    move-exception v2

    :goto_3
    new-instance v4, Lcom/amap/api/services/a/q$j;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 54
    iget-object v5, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v5}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 55
    iput-object v3, v4, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    .line 56
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v1}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    throw v2
.end method
