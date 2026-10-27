.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;
.super Ljava/lang/Object;
.source "PassengerBtCommandListener.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PassengerBtController"


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 2
    .param p1, "halService"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mActions:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 28
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mActions:Ljava/util/List;

    const-string/jumbo v1, "xiaopeng.bluetooth.avrcp.action.KEY_PRESSED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method private downVolume()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xd

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 82
    return-void
.end method

.method private getTargetScreenId()I
    .locals 1

    .line 105
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x3

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private mute()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xd

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 87
    return-void
.end method

.method private next()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->getTargetScreenId()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    .line 92
    return-void
.end method

.method private pauseOrPlay()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->getTargetScreenId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    .line 102
    return-void
.end method

.method private previous()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->getTargetScreenId()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    .line 97
    return-void
.end method

.method private upVolume()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 77
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 40
    const-string v0, "PassengerBtController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiver action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "xiaopeng.bluetooth.avrcp.action.KEY_PRESSED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "keycode"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "keycode":I
    sparse-switch v0, :sswitch_data_0

    .line 43
    .end local v0    # "keycode":I
    goto :goto_0

    .line 65
    .restart local v0    # "keycode":I
    :sswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mute()V

    .line 66
    goto :goto_0

    .line 57
    :sswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->previous()V

    .line 58
    goto :goto_0

    .line 53
    :sswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->next()V

    .line 54
    goto :goto_0

    .line 61
    :sswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->pauseOrPlay()V

    .line 62
    goto :goto_0

    .line 49
    :sswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->downVolume()V

    .line 50
    goto :goto_0

    .line 45
    :sswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->upVolume()V

    .line 46
    nop

    .line 72
    .end local v0    # "keycode":I
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x55 -> :sswitch_3
        0x57 -> :sswitch_2
        0x58 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public register()V
    .locals 2

    .line 34
    const-string v0, "PassengerBtController"

    const-string v1, "register receiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->mActions:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 36
    return-void
.end method
