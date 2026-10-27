.class Lcom/amap/api/services/a/ar$2;
.super Ljava/lang/Thread;
.source "RouteSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ar;->calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

.field final synthetic b:Lcom/amap/api/services/a/ar;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    iput-object p2, p0, Lcom/amap/api/services/a/ar$2;->a:Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 155
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 156
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    nop

    .line 161
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    iget-object v4, p0, Lcom/amap/api/services/a/ar$2;->a:Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-virtual {v3, v4}, Lcom/amap/api/services/a/ar;->calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    const-string v2, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iget-object v2, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v2}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    .line 163
    :catch_0
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    .line 166
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 163
    :catch_1
    move-exception v3

    .line 164
    :goto_0
    :try_start_2
    const-string v4, "errorCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    iget-object v3, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v3}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    iget-object v1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v1}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    nop

    .line 171
    return-void

    .line 166
    :goto_2
    iget-object v4, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v4}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    const-string v4, "result"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    iget-object v1, p0, Lcom/amap/api/services/a/ar$2;->b:Lcom/amap/api/services/a/ar;

    invoke-static {v1}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v3
.end method
