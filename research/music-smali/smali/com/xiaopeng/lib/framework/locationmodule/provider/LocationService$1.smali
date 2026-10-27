.class final Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$1;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->checkAndMakeUpdateLog(J)V
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

    .line 197
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 200
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$1;->val$now:J

    const-string v2, "location history"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$100(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 202
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
