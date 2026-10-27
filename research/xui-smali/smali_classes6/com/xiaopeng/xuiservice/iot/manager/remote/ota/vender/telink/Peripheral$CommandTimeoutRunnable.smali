.class final Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommandTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;

    .line 1024
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 1030
    .local v1, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    if-eqz v1, :cond_1

    .line 1032
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 1033
    .local v2, "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 1035
    .local v3, "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)Z

    move-result v4

    .line 1037
    .local v4, "retry":Z
    if-eqz v4, :cond_0

    .line 1038
    iput-object v2, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 1039
    iput-object v3, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 1040
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-static {v5, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V

    goto :goto_0

    .line 1042
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v5, v5, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 1043
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V

    .line 1046
    .end local v1    # "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    .end local v2    # "command":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .end local v3    # "callback":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    .end local v4    # "retry":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1047
    return-void

    .line 1046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
