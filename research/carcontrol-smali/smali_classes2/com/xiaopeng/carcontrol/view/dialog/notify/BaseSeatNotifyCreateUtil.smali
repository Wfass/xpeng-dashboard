.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;
.super Ljava/lang/Object;
.source "BaseSeatNotifyCreateUtil.java"


# static fields
.field protected static final DISABLE_READY_NOTIFY_CANCEL_TIME:J = 0x7530L

.field public static final KeyConnected:Ljava/lang/String; = "show_key_connected"

.field public static final NotifySeatSpeechDismiss:Ljava/lang/String; = "show_seat_speech_notify_dismiss"

.field protected static final P_GEAR_NOTIFY_CANCEL_TIME:J = 0x4e20L

.field public static final PhoneLocationOutside:Ljava/lang/String; = "show_phone_location_outside"

.field protected static final SEAT_NOTIFY_CANCEL_TIME:J = 0x1388L

.field public static final SeatDismissNotifyAction:Ljava/lang/String; = "Notify_Dismiss"

.field public static final SeatNotifyAc:Ljava/lang/String; = "seat_ac"

.field public static final SeatNotifyAction:Ljava/lang/String; = "xpCarControl_SeatNotify"

.field public static final SeatNotifyAllZeroReset:Ljava/lang/String; = "all_seat_zero_reset"

.field public static final SeatNotifyDc:Ljava/lang/String; = "seat_dc"

.field public static final SeatNotifyDrvMirror:Ljava/lang/String; = "seat_mirror"

.field public static final SeatNotifyDrvRecover:Ljava/lang/String; = "seat_restore"

.field public static final SeatNotifyDrvSave:Ljava/lang/String; = "seat_save"

.field public static final SeatNotifyDrvSaveAs:Ljava/lang/String; = "seat_save_as"

.field public static final SeatNotifyDrvSteer:Ljava/lang/String; = "seat_steer"

.field public static final SeatNotifyEasyLoad:Ljava/lang/String; = "seat_easy_load"

.field public static final SeatNotifyPsnRecover:Ljava/lang/String; = "psn_seat_restore"

.field public static final SeatNotifyPsnSave:Ljava/lang/String; = "psn_seat_save"

.field public static final SeatNotifyRLZeroReset:Ljava/lang/String; = "rl_seat_zero_reset"

.field public static final SeatNotifyRRZeroReset:Ljava/lang/String; = "rr_seat_zero_reset"

.field public static final SeatNotifyRetest:Ljava/lang/String; = "show_dialog_ready_disable"

.field public static final SeatNotifySeatSpeech:Ljava/lang/String; = "show_seat_speech_notify"

.field public static final SeatTrdFold:Ljava/lang/String; = "show_seat_fold"

.field public static final SeatTrdLeft:Ljava/lang/String; = "show_seat_trd_left"

.field public static final SeatTrdTarget:Ljava/lang/String; = "show_seat_trd_left_target"

.field protected static final TRD_SEAT_NOTIFY_CANCEL_TIME:J = 0x1770L

.field protected static handler:Landroid/os/Handler;

.field protected static manager:Landroid/app/NotificationManager;


# instance fields
.field protected intentNull:Landroid/content/Intent;

.field protected mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field protected mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->intentNull:Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->initViewModel()V

    return-void
.end method


# virtual methods
.method protected getNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected initViewModel()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 65
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 66
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 68
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/BaseSeatNotifyCreateUtil;->manager:Landroid/app/NotificationManager;

    :cond_2
    return-void
.end method
