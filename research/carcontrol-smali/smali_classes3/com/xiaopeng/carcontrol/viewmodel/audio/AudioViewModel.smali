.class public Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;
.super Ljava/lang/Object;
.source "AudioViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioViewModel"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mMicrophoneMuteData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMicrophoneMuteReceiver:Landroid/content/BroadcastReceiver;

.field private mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mMuteDialogDisplayId:I

.field private mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mUnmuteManualFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMicrophoneMuteReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMicrophoneMuteData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteManualFlag:Z

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteDialogDisplayId:I

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->registerMicrophoneMute()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->handleMicrophoneMuteChanged()V

    return-void
.end method

.method private handleMicrophoneMuteChanged()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->isMicrophoneMute()Z

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMicrophoneMuteData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteManualFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteManualFlag:Z

    .line 249
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->settings_microphone_unmuted_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$confirmMuteMicrophone$1(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog1",
            "i"
        }
    .end annotation

    const-string p0, "isBroadcastWhenCancelMuteOrUnmute"

    .line 104
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_CANCEL_MICROPHONE_MUTE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$confirmMuteMicrophone$2(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    const-string p0, "isBroadcastWhenCancelMuteOrUnmute"

    .line 111
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_CANCEL_MICROPHONE_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$confirmUnmuteMicrophone$4(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog1",
            "i"
        }
    .end annotation

    const-string p0, "isBroadcastWhenCancelMuteOrUnmute"

    .line 156
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 157
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_CANCEL_MICROPHONE_UNMUTE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$confirmUnmuteMicrophone$5(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    const-string p0, "isBroadcastWhenCancelMuteOrUnmute"

    .line 163
    invoke-static {p0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 164
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_CANCEL_MICROPHONE_UNMUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private registerMicrophoneMute()V
    .locals 3

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.action.MICROPHONE_MUTE_CHANGED"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMicrophoneMuteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/carcontrol/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public confirmMuteMicrophone()V
    .locals 1

    const/4 v0, -0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->confirmMuteMicrophone(I)V

    return-void
.end method

.method public confirmMuteMicrophone(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MICROPHONE_MUTE_DIALOG"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "microphoneDisplayId"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    const-string v0, "startService ACTION_SHOW_MICROPHONE_MUTE_DIALOG"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    const-string v1, "confirmMuteMicrophone"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteDialogDisplayId:I

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez p1, :cond_1

    .line 96
    new-instance p1, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView:I

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 97
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->settings_microphone_close:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->settings_microphone_feature_feedback:I

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$AuBJizKTmVFdpbFjCKZr_iycoQ8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$AuBJizKTmVFdpbFjCKZr_iycoQ8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;)V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$MH37WDnLNJcImkQNgyZDVmS971Q;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$MH37WDnLNJcImkQNgyZDVmS971Q;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    const/16 v0, 0x7d8

    .line 108
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 110
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$vmh8YvSBLvqSV36YG82_wFhjets;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz p1, :cond_3

    .line 124
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    const-string v2, "MichophoneMuteSettingDialog"

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_3
    return-void
.end method

.method public confirmUnmuteMicrophone(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shouldDismiss",
            "displayId"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmUnmuteMicrophone shouldDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    goto :goto_0

    .line 142
    :cond_0
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteDialogDisplayId:I

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez p1, :cond_1

    .line 148
    new-instance p1, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView:I

    invoke-direct {p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 149
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->settings_microphone_title:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->settings_microphone_unmute_feature_feedback:I

    .line 150
    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_open:I

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$mB7Qx7TI1tcQmkQvyM-qPJYjQjM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$mB7Qx7TI1tcQmkQvyM-qPJYjQjM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;)V

    .line 151
    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$-kws0Q63Jf8Z7dpTqnM9MjQaOco;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$-kws0Q63Jf8Z7dpTqnM9MjQaOco;

    .line 155
    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    const/16 p2, 0x7d8

    .line 160
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 162
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$QicrY65WJoOejuJsK6NzuVJUx8A;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$QicrY65WJoOejuJsK6NzuVJUx8A;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz p1, :cond_3

    .line 175
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "MichophoneUnmuteSettingDialog"

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dismissAllDialogs()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 190
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 194
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    :cond_1
    return-void
.end method

.method public getMicrophoneMuteData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMicrophoneMuteData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMuteDialogDisplayId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mMuteDialogDisplayId:I

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 5

    const/4 v0, 0x0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    .line 226
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMicrophoneMute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 229
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneMute failed"

    invoke-static {v2, v3, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$confirmMuteMicrophone$0$AudioViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "i"
        }
    .end annotation

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->setMicrophoneMute(Z)V

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "about_sap_inner_mic"

    const-string v0, "com.xiaopeng.carcontrol"

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic lambda$confirmUnmuteMicrophone$3$AudioViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->setMicrophoneMute(Z)V

    .line 153
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "about_sap_inner_mic"

    const-string v0, "com.xiaopeng.carcontrol"

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_OPERATOR_MICROPHONE"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_mute_microphone"

    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService ACTION_OPERATOR_MICROPHONE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicrophoneMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 213
    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mUnmuteManualFlag:Z

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->TAG:Ljava/lang/String;

    const-string v1, "setMicrophoneMute failed"

    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method
