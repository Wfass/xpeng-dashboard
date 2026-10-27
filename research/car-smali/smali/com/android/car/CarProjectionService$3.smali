.class Lcom/android/car/CarProjectionService$3;
.super Ljava/lang/Object;
.source "CarProjectionService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarProjectionService;


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarProjectionService;

    .line 62
    iput-object p1, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 65
    iget-object v0, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/car/CarProjectionService;->access$102(Lcom/android/car/CarProjectionService;Z)Z

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 73
    const-string v0, "CAR.PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarProjectionService;->access$202(Lcom/android/car/CarProjectionService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/android/car/CarProjectionService$3;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$300(Lcom/android/car/CarProjectionService;)V

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
