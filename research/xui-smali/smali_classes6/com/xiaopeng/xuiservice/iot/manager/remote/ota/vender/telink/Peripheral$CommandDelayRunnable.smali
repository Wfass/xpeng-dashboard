.class final Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;
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
    name = "CommandDelayRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;

    .line 1050
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1053
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;

    .line 1055
    .local v1, "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandDelayRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;)V

    .line 1056
    .end local v1    # "commandContext":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
    monitor-exit v0

    .line 1057
    return-void

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
