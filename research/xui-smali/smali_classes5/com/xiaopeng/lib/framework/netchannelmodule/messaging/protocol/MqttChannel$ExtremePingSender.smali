.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
.super Ljava/lang/Object;
.source "MqttChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtremePingSender"
.end annotation


# static fields
.field private static final EXTREME_PING_MAX_INTERVAL:I = 0x13880

.field private static final EXTREME_PING_MIN_INTERVAL:I = 0x2710

.field private static final EXTREME_PING_STABLE_THRESHOLD:I = 0x14

.field private static final EXTREME_PING_TIMEOUT:I = 0x1f40


# instance fields
.field private mActiveInterval:I

.field private mActiveRecoverDelay:I

.field private mExceptionHandlingRunnable:Ljava/lang/Runnable;

.field private mExtremePingRunnable:Ljava/lang/Runnable;

.field private mPingActionListener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private mSucceedCount:I

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const/16 p1, 0x2710

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveInterval:I

    .line 654
    const/16 p1, 0x1f40

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveRecoverDelay:I

    .line 679
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mPingActionListener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 702
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExtremePingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;

    .line 634
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mSucceedCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
    .param p1, "x1"    # I

    .line 634
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mSucceedCount:I

    return p1
.end method

.method static synthetic access$1808(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mSucceedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mSucceedCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExceptionHandlingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveInterval:I

    return v0
.end method

.method static synthetic access$2002(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
    .param p1, "x1"    # I

    .line 634
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveInterval:I

    return p1
.end method

.method static synthetic access$2100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveRecoverDelay:I

    return v0
.end method

.method static synthetic access$2102(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
    .param p1, "x1"    # I

    .line 634
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveRecoverDelay:I

    return p1
.end method

.method static synthetic access$2200(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mPingActionListener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
    .param p1, "x1"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 634
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->sendExtremePing(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExtremePingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendExtremePing(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Z
    .locals 3
    .param p1, "listener"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 724
    const/4 v0, 0x0

    .line 726
    .local v0, "published":Z
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    return v0

    .line 730
    :cond_0
    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1200(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lorg/eclipse/paho/android/service/MqttAndroidClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->checkPing(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    const/4 v0, 0x1

    .line 736
    goto :goto_0

    .line 737
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    .line 737
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 738
    return v0

    .line 737
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public startExtremePingSender(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "exceptionHandlingRunnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->enableExtremePing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mSucceedCount:I

    .line 662
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExceptionHandlingRunnable:Ljava/lang/Runnable;

    .line 663
    const/16 v0, 0x2710

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveInterval:I

    .line 664
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mActiveRecoverDelay:I

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExtremePingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExtremePingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    const-string v1, "start ExtremePingSender"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 668
    return-void

    .line 659
    :cond_1
    :goto_0
    return-void
.end method

.method public stopExtremePingSender()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExtremePingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->mExceptionHandlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    const-string v1, "stop ExtremePingSender"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 674
    return-void
.end method
