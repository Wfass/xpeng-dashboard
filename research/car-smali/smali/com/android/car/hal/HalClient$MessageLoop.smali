.class final Lcom/android/car/hal/HalClient$MessageLoop;
.super Ljava/lang/Object;
.source "HalClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/hal/HalClient;


# direct methods
.method private constructor <init>(Lcom/android/car/hal/HalClient;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/car/hal/HalClient$MessageLoop;->this$0:Lcom/android/car/hal/HalClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/HalClient;Lcom/android/car/hal/HalClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/HalClient;
    .param p2, "x1"    # Lcom/android/car/hal/HalClient$1;

    .line 602
    invoke-direct {p0, p1}, Lcom/android/car/hal/HalClient$MessageLoop;-><init>(Lcom/android/car/hal/HalClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 605
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 609
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient$MessageLoop;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {v0}, Lcom/android/car/hal/HalClient;->access$1000(Lcom/android/car/hal/HalClient;)Ljava/util/concurrent/LinkedTransferQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/hal/HalClient$HalCallBackValue;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .local v0, "item":Lcom/android/car/hal/HalClient$HalCallBackValue;
    nop

    .line 612
    nop

    .line 614
    invoke-interface {v0}, Lcom/android/car/hal/HalClient$HalCallBackValue;->run()V

    .line 615
    .end local v0    # "item":Lcom/android/car/hal/HalClient$HalCallBackValue;
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CAR.HAL"

    const-string v2, "MessageLoop : Shutting down (interrupted)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method
