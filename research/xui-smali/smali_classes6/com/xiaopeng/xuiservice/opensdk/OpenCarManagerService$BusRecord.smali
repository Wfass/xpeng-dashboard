.class final Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;
.super Ljava/lang/Object;
.source "OpenCarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BusRecord"
.end annotation


# instance fields
.field public bus:Lcom/car/opensdk/pipebus/IPipeBus;

.field public final module:Ljava/lang/String;

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;Lcom/car/opensdk/pipebus/IPipeBus;IILjava/lang/String;)V
    .locals 0
    .param p2, "bus"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "module"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->bus:Lcom/car/opensdk/pipebus/IPipeBus;

    .line 200
    iput p3, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->pid:I

    .line 201
    iput p4, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->uid:I

    .line 202
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->module:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 207
    const-string v0, "OpenCarManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BusRecord,binder died,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->module:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$300(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$300(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->module:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
