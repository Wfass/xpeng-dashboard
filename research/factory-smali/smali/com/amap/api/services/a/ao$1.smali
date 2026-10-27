.class Lcom/amap/api/services/a/ao$1;
.super Ljava/lang/Thread;
.source "NearbySearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ao;->clearUserInfoAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ao;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ao;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 132
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 133
    iget-object v1, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->c(Lcom/amap/api/services/a/ao;)I

    .line 137
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v1, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 140
    const-string v2, "NearbySearch"

    const-string v3, "clearUserInfoAsyn"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    iget-object v1, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    :goto_1
    return-void

    .line 142
    :goto_2
    iget-object v2, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v2}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/a/ao;

    invoke-static {v2}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    throw v1
.end method
