.class Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "BleScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleScanHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$1;

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string v1, "BleScanManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle check scan,size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->mDeviceScanListener:Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;

    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager$BleScanHandler;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/IDeviceScanListener;->onScan(Ljava/util/List;I)V

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/BleScanManager;->access$100()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 58
    :cond_1
    monitor-exit v0

    .line 59
    nop

    .line 63
    :goto_0
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
