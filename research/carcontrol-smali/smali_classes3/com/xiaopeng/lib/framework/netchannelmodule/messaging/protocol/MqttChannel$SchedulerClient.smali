.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SchedulerClient"
.end annotation


# static fields
.field private static final REINIT_INTERVAL:I = 0x4e20


# instance fields
.field private mConnectAction:Ljava/lang/Runnable;

.field private mReInitAction:Ljava/lang/Runnable;

.field private mRepeatPeriod:I

.field private mUnexpectedHandlingAction:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mReInitAction:Ljava/lang/Runnable;

    .line 782
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    .line 813
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mUnexpectedHandlingAction:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;)V
    .locals 0

    .line 745
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V
    .locals 0

    .line 745
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->requestToReInitInternal()V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)Ljava/lang/Runnable;
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)I
    .locals 0

    .line 745
    iget p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mRepeatPeriod:I

    return p0
.end method

.method static synthetic access$2802(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;I)I
    .locals 0

    .line 745
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mRepeatPeriod:I

    return p1
.end method

.method private requestToReInitInternal()V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->serverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    const-string v1, "No valid connection options!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$2600(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 774
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$4;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnectedDueToException(Ljava/lang/Throwable;)V
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectedDueToException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 864
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mUnexpectedHandlingAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 865
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mUnexpectedHandlingAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleReopen()V
    .locals 4

    .line 836
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->stopBackgroundReconnection()V

    .line 837
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->stopExtremePingSender()V

    .line 838
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mReInitAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startBackgroundReconnection(I)V
    .locals 4

    .line 870
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mRepeatPeriod:I

    .line 871
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$2900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->stopExtremePingSender()V

    .line 873
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startConnectImmediately(I)V
    .locals 1

    .line 890
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mRepeatPeriod:I

    .line 891
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 892
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startExtremePingSender()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$2900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mUnexpectedHandlingAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->startExtremePingSender(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopBackgroundReconnection()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mConnectAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mUnexpectedHandlingAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 880
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->stopReopenAction()V

    return-void
.end method

.method public stopExtremePingSender()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$2900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->stopExtremePingSender()V

    return-void
.end method

.method public stopReopenAction()V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->mReInitAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
