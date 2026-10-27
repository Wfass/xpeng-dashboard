.class final Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$2;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->checkAndOutputUpdateLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$now:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$2;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "<<<< logs of location updated in past time:\n"

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$2;->val$now:J

    const-string v2, "location last"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$100(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationService"

    .line 239
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 235
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
