.class Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;
.super Ljava/lang/Object;
.source "DeviceService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/device/DeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListenerRecord"
.end annotation


# instance fields
.field public listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

.field final pid:I

.field final pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/device/DeviceService;IILjava/lang/String;Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    .line 378
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput p2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->pid:I

    .line 380
    iput p3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->uid:I

    .line 381
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->pkg:Ljava/lang/String;

    .line 382
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    .line 383
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->access$000(Lcom/xiaopeng/xuiservice/device/DeviceService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/device/DeviceService;->access$000(Lcom/xiaopeng/xuiservice/device/DeviceService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "DeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceListenerRecord binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    .line 392
    return-void

    .line 390
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceListenerRecord{pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$DeviceListenerRecord;->listener:Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
