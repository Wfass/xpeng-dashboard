.class Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;
.super Landroid/os/Handler;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredRebinder"
.end annotation


# static fields
.field private static final NEXT_REBIND_ATTEMPT_DELAY_MS:J = 0x3e8L

.field private static final NUMBER_OF_ATTEMPTS:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method private constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p2, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$1;

    .line 537
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 553
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$1500(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$702(Lcom/android/car/cluster/InstrumentClusterService;Z)Z

    .line 555
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$700(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const-string v0, "CAR.CLUSTER"

    const-string v1, "Failed to bound to render service, next attempt in 1000ms."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 560
    .local v0, "attempts":I
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 561
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 563
    :cond_0
    const-string v1, "CAR.CLUSTER"

    const-string v2, "Failed to rebind with cluster rendering service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v0    # "attempts":I
    :cond_1
    :goto_0
    return-void
.end method

.method public rebind()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$1500(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$702(Lcom/android/car/cluster/InstrumentClusterService;Z)Z

    .line 544
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$700(Lcom/android/car/cluster/InstrumentClusterService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->removeMessages(I)V

    .line 546
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 549
    :cond_0
    return-void
.end method
