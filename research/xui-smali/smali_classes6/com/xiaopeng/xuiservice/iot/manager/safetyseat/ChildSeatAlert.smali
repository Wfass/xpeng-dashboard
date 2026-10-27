.class public Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;
.super Ljava/lang/Object;
.source "ChildSeatAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$ChildSeatAlertHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildSeatAlert"

.field private static final seatAppPackage:Ljava/lang/String; = "package:com.xp.childseat"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamID:I

.field private soundDuration:J

.field private soundFilePath:Ljava/lang/String;

.field private soundPlayEndTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundDuration:J

    .line 31
    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_action_dialog.wav"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundFilePath:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$ZbZ5Ed-CY8GRpYt59kMGst_bD60;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$ZbZ5Ed-CY8GRpYt59kMGst_bD60;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundPlayEndTask:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$uyR845PmyCMpoTIXBZXVQK3W1ak;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$uyR845PmyCMpoTIXBZXVQK3W1ak;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$1;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;-><init>()V

    return-void
.end method

.method private appUninstallMonitor()V
    .locals 4

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "ChildSeatAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appUninstallMonitor,action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$PDEmicO2sLYqc6w22alwxblvwKQ;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$PDEmicO2sLYqc6w22alwxblvwKQ;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerPackageListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 103
    return-void
.end method

.method private doIsoFixAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "ChildSeatAlert"

    const-string v1, "doIsoFixAlert, boot not complete..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "resId":I
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const v0, 0x7f0e0037

    goto :goto_0

    .line 113
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const v0, 0x7f0e0036

    .line 120
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;I)V

    .line 123
    const v1, 0x7f0e0037

    if-ne v1, v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->playAlertSound()V

    .line 126
    :cond_2
    return-void

    .line 116
    :cond_3
    const-string v1, "ChildSeatAlert"

    const-string v2, "doIsoFixAlert, status error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert$ChildSeatAlertHolder;->access$100()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$appUninstallMonitor$3()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->removeDeviceWhenPackageUninstall()V

    .line 96
    return-void
.end method

.method static synthetic lambda$appUninstallMonitor$4(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5e33a4ad

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 90
    :cond_2
    const-string v0, "ChildSeatAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg remove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "package:com.xp.childseat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "package:com.xp.childseat"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "ChildSeatAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seat package removed,name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$W_HHP-vgVM2HiCwhJzzRpwG0pAs;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$W_HHP-vgVM2HiCwhJzzRpwG0pAs;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;)V
    .locals 6

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getDevice()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v2

    .line 72
    .local v2, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "isofix_stat"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "value":Ljava/lang/String;
    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "isofix_stat"

    invoke-interface {v4, v1, v5, v3}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v2    # "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;)V
    .locals 3

    .line 36
    const-string v0, "ChildSeatAlert"

    const-string v1, "playAlertSound end"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    monitor-enter v0

    .line 38
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    if-lez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 51
    const-string v0, "ChildSeatAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prop update,device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "isofix_stat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->doIsoFixAlert(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic lambda$soundPlayInit$5(Landroid/media/SoundPool;II)V
    .locals 3
    .param p0, "sound"    # Landroid/media/SoundPool;
    .param p1, "sampleId"    # I
    .param p2, "status"    # I

    .line 141
    const-string v0, "ChildSeatAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound load complete,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private playAlertSound()V
    .locals 10

    .line 156
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    monitor-enter v0

    .line 158
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 159
    const-string v1, "ChildSeatAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop former play,streamId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundPlayEndTask:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    invoke-virtual {v1, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    .line 165
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    const/4 v0, 0x3

    .line 167
    .local v0, "loopCount":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 168
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v8, v0

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    .line 169
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    if-lez v1, :cond_1

    .line 170
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundPlayEndTask:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundDuration:J

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 174
    :goto_0
    const-string v1, "ChildSeatAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAlertSound,streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mStreamID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "loopCount":I
    goto :goto_1

    .line 165
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 176
    :cond_2
    const-string v0, "ChildSeatAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAlertSound,mSoundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSoundPool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_1
    return-void
.end method

.method private soundPlayInit()V
    .locals 7

    .line 129
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 131
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 135
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 136
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$aUvaKskEc1-J_R8DGinE_P6EwIE;->INSTANCE:Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$aUvaKskEc1-J_R8DGinE_P6EwIE;

    invoke-virtual {v1, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    .line 146
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 147
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 148
    .local v1, "mmr":Landroid/media/MediaMetadataRetriever;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 149
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "durationstr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundDuration:J

    .line 151
    const-string v3, "ChildSeatAlert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "soundPlayInit,soundId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mSoundId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v1    # "mmr":Landroid/media/MediaMetadataRetriever;
    .end local v2    # "durationstr":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->soundPlayInit()V

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$a8NdZ90wgoHDYIMlEYMI92uZgew;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/-$$Lambda$ChildSeatAlert$a8NdZ90wgoHDYIMlEYMI92uZgew;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->mEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSaftySeatManager;->addInnerDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/safetyseat/ChildSeatAlert;->appUninstallMonitor()V

    .line 81
    return-void
.end method
