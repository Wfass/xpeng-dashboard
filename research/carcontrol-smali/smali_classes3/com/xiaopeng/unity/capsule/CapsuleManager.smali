.class public Lcom/xiaopeng/unity/capsule/CapsuleManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "CapsuleManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/capsule/ICapsuleManager;
.implements Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;
.implements Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;
.implements Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;,
        Lcom/xiaopeng/unity/capsule/CapsuleManager$SingleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/capsule/ICapsuleListener;",
        ">;",
        "Lcom/xiaopeng/unity/capsule/ICapsuleManager;",
        "Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;",
        "Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;",
        "Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;"
    }
.end annotation


# static fields
.field private static final ALARM_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_CAPSULE_ALARM.wav"

.field private static final TAG:Ljava/lang/String; = "CapsuleManager"

.field private static final TIMEOUT_TIME:I = 0x2710


# instance fields
.field private final CHANGE_TO_NIGHT_DELAY:J

.field private final mChangeToNightRunnable:Ljava/lang/Runnable;

.field private mEnduranceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;

.field private final mHandler:Landroid/os/Handler;

.field mIXpKeyListener:Lcom/xiaopeng/IXPKeyListener;

.field mInputEventListener:Lcom/xiaopeng/input/IInputEventListener;

.field private mIsBindService:Z

.field private mIsEnterCapsule:Z

.field private mIsRegisterKeyListener:Z

.field private mIsRegisterScreenBroadcaster:Z

.field private mIsRegisterTouchListener:Z

.field private mLastLampMode:I

.field private mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreDayNightRunnable:Ljava/lang/Runnable;

.field private mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

.field private final mTimeOutRunnable:Ljava/lang/Runnable;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

.field private mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mLastLampMode:I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    .line 71
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterScreenBroadcaster:Z

    .line 73
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterTouchListener:Z

    .line 74
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterKeyListener:Z

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsBindService:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager$1;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    .line 86
    iput-wide v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->CHANGE_TO_NIGHT_DELAY:J

    .line 87
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager$2;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mChangeToNightRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager$3;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mRestoreDayNightRunnable:Ljava/lang/Runnable;

    .line 1597
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager$5;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIXpKeyListener:Lcom/xiaopeng/IXPKeyListener;

    .line 1609
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;Lcom/xiaopeng/unity/capsule/CapsuleManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mInputEventListener:Lcom/xiaopeng/input/IInputEventListener;

    .line 1774
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager$6;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/unity/capsule/CapsuleManager;)Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->cancelTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->timeOut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->registerKeyListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private cancelTimeOut(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel timeOut from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapsuleManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreCapsuleBrightness()V

    return-void
.end method

.method private convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1525
    :cond_0
    sget-object v1, Lcom/xiaopeng/unity/capsule/CapsuleManager$7;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatStatus:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

    :pswitch_7
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get_instance()Lcom/xiaopeng/unity/capsule/CapsuleManager;
    .locals 1

    .line 101
    invoke-static {}, Lcom/xiaopeng/unity/capsule/CapsuleManager$SingleHolder;->access$100()Lcom/xiaopeng/unity/capsule/CapsuleManager;

    move-result-object v0

    return-object v0
.end method

.method private registerInputListener()V
    .locals 3

    .line 1642
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterTouchListener:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "CapsuleManager"

    const-string v1, "registerInputListener registerInputListener"

    .line 1644
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mInputEventListener:Lcom/xiaopeng/input/IInputEventListener;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputListener(Lcom/xiaopeng/input/IInputEventListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1647
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    .line 1649
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterTouchListener:Z

    :cond_0
    return-void
.end method

.method private registerKeyListener()V
    .locals 3

    .line 1654
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterKeyListener:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "CapsuleManager"

    const-string v1, "registerKeyListener registerGlobalKeyInterceptListener"

    .line 1656
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIXpKeyListener:Lcom/xiaopeng/IXPKeyListener;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerGlobalKeyInterceptListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1659
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    .line 1661
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterKeyListener:Z

    :cond_0
    return-void
.end method

.method private registerScreenStatus()V
    .locals 3

    .line 1759
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterScreenBroadcaster:Z

    if-nez v0, :cond_0

    .line 1760
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.broadcast.ACTION_SCREEN_STATUS_CHANGE"

    .line 1761
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1762
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1763
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterScreenBroadcaster:Z

    :cond_0
    return-void
.end method

.method private timeOut(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1636
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1637
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeOut start from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapsuleManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterScreenStatus()V
    .locals 2

    .line 1768
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterScreenBroadcaster:Z

    if-eqz v0, :cond_0

    .line 1769
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1770
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterScreenBroadcaster:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "abandonAudioFocus"

    .line 915
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->abandonAudioFocus()V

    return-void
.end method

.method public bindService()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, "bindService"

    .line 1049
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setMusicListener(Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;)V

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->bindService(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1052
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsBindService:Z

    return-void
.end method

.method public cancelAlarm()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "cancelAlarm"

    .line 996
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->cancelAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public changeAlarmVolume(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAlarmVolume bEnter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->changeAlarmVolume(Z)V

    return-void
.end method

.method public changeDay2NightTry()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, "changeDay2NightTry"

    .line 790
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 792
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mChangeToNightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mRestoreDayNightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mChangeToNightRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public changeMediaVolume(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMediaVolume bEnter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->changeMediaVolume(Z)V

    return-void
.end method

.method public changeSoundEffectStyleCinema(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSoundEffectStyleCinema isEnter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->changeSoundEffectStyleCinema(Z)V

    return-void
.end method

.method public controlWindow()V
    .locals 3

    .line 1446
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f11044a

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWinMoveStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 1450
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWinMoveStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1457
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowClose()V

    goto :goto_0

    .line 1459
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowVent()V

    :goto_0
    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    const-string v2, "controlWindow"

    .line 1462
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public enterCapsuleScene(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capsuleMode"
        }
    .end annotation

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " enterCapsuleScene, mIsEnterCapsule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capsuleMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1575
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    if-nez v0, :cond_2

    .line 1577
    invoke-direct {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->registerInputListener()V

    .line 1578
    invoke-direct {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->registerScreenStatus()V

    const-string v0, "enter"

    .line 1579
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->timeOut(Ljava/lang/String;)V

    .line 1581
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->getHeadLampMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mLastLampMode:I

    .line 1582
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setHeadLampMode(I)V

    .line 1583
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setAutoPowerOffConfigOff()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1586
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->bindService()V

    const-string p1, "isSupportSfs"

    .line 1588
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->isSwEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->reqSfsOpen()V

    .line 1591
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->requestMediaButton(Z)V

    .line 1593
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    :cond_2
    return-void
.end method

.method public exitCapsuleScene(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capsuleMode"
        }
    .end annotation

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " exitCapsuleScene, mIsEnterCapsule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capsuleMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1694
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    if-eqz v0, :cond_2

    .line 1695
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unregisterInputListener()V

    .line 1696
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unregisterKeyListener()V

    .line 1697
    invoke-direct {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unregisterScreenStatus()V

    const-string v0, "exit"

    .line 1698
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->cancelTimeOut(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->turnOnScreens(Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreAutoPowerOffConfig()V

    .line 1701
    iget v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mLastLampMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1702
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampManager;

    move-result-object v0

    iget v3, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mLastLampMode:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setHeadLampMode(I)V

    .line 1703
    iput v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mLastLampMode:I

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, ""

    .line 1706
    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->pauseMusic(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1707
    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->stopAlarm(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->cancelAlarm()V

    .line 1709
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->requestMediaButton(Z)V

    .line 1710
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unBindService()V

    .line 1712
    :cond_1
    iput-boolean v2, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    :cond_2
    return-void
.end method

.method public exitCinemaMode()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, "exitCinemaMode"

    const/4 v2, 0x0

    .line 1508
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1509
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)V

    .line 1510
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        -0x1
    .end array-data
.end method

.method public exitSleepMode()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, "exitSleepMode"

    const/4 v2, 0x0

    .line 1499
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1500
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)V

    .line 1501
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        -0x1
    .end array-data
.end method

.method public exitVipSeatMode()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, "exitVipSeatMode"

    const/4 v2, 0x0

    .line 1517
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1518
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)V

    return-void
.end method

.method public getAvailableMileage()I
    .locals 4

    .line 1397
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAvailableMileage()I

    move-result v0

    .line 1398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableMileage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCapsuleVipSeatAct()I
    .locals 4

    .line 1179
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getCapsuleVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapsuleVipSeatAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1181
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getConnectedBtDeviceName()Ljava/lang/String;
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "getConnectedBtDeviceName"

    .line 756
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getConnectedBtDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrvVipSeatAct()I
    .locals 4

    .line 1099
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getDrvVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrvVipSeatAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1101
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getElectricityPercent()I
    .locals 4

    .line 1388
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getElectricityPercent()I

    move-result v0

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getElectricityPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getEstimateEndurance(J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivalTime"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mEnduranceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;

    const-wide/32 v1, 0x1b77400

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->getEstimateEndurance(J)I

    move-result p1

    .line 1413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEstimateEndurance: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CapsuleManager"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1
.end method

.method public getMileageMode()I
    .locals 4

    .line 1403
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getMileageMode()I

    move-result v0

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getPsnVipSeatAct()I
    .locals 4

    .line 1139
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getPsnVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPsnVipSeatStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1141
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getRearSeatAct()I
    .locals 4

    .line 1293
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRearSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearSeatAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1295
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getRlSeatAct()I
    .locals 4

    .line 1219
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRlSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRlSeatAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1221
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getRrSeatAct()I
    .locals 4

    .line 1259
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getRrSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRrSeatAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1261
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getSleepSecSeatStatus()I
    .locals 4

    .line 1327
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getSleepSecSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    move-result-object v0

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSleepSecSeatStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1329
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    return v0
.end method

.method public getSpaceCapsuleSleepMusic()Ljava/lang/String;
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "getSpaceCapsuleSleepMusic"

    .line 932
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getSpaceCapsuleSleepMusic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowState()I
    .locals 4

    .line 1430
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWinMoveStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1431
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1438
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CapsuleManager"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public initInternal()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/sfs/ISfsViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    .line 113
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 114
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/endurance/IEnduranceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mEnduranceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;

    .line 115
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 116
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    .line 117
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 118
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 121
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->addTtsPlayListener(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;)V

    .line 123
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager$4;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isA2dpConnected()Z
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "isA2dpConnected"

    .line 820
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isA2dpConnected()Z

    move-result v0

    return v0
.end method

.method public isBtSource()Z
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "isBtSource"

    .line 829
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isBtSource()Z

    move-result v0

    return v0
.end method

.method public isDrvHeadrestNormal()Z
    .locals 4

    .line 1344
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvHeadrestNormal()Z

    move-result v0

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrvHeadrestNormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isDrvSeatOccupied()Z
    .locals 4

    .line 1372
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrvSeatOccupied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isFirstEnterSpaceCapsule()Z
    .locals 4

    .line 1059
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isFirstEnterSpaceCapsule()Z

    move-result v0

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstEnterSpaceCapsule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isInDcCharge()Z
    .locals 4

    .line 1419
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isInDcCharge()Z

    move-result v0

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInDcCharge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isProjectorConnected()Z
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "isProjectorConnected"

    .line 747
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isProjectorConnected()Z

    move-result v0

    return v0
.end method

.method public isPsnHeadrestNormal()Z
    .locals 4

    .line 1354
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnHeadrestNormal()Z

    move-result v0

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPsnHeadrestNormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isPsnSeatOccupied()Z
    .locals 4

    .line 1379
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatOccupied()Z

    move-result v0

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPsnSeatOccupied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapsuleManager"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isRearSeatOccupied()Z
    .locals 4

    .line 1364
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRlSeatOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRmSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 1365
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRrSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1366
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRearSeatOccupied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapsuleManager"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isSourceInBt(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSourceInBt status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isSourceInBt(I)Z

    move-result p1

    return p1
.end method

.method public isSwEnabled()Z
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->isSwEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$CapsuleManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "time"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onDatetimeChanged(Ljava/lang/String;)V

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDatetimeChanged, time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$1$CapsuleManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onA2dpConnectChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$10$CapsuleManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 398
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onRearSeatStatusChange(I)V

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearSeatStatusChange, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$11$CapsuleManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 408
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onSleepSecSeatStatusChange(I)V

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSleepSecSeatStatusChange, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$12$CapsuleManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v1, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onDvrVipSeatStatusChange(I)V

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDrvVipSeatStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$13$CapsuleManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 427
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v1, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onPsnVipSeatStatusChange(I)V

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDrvVipSeatStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$14$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onRlOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onRmOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onRrOnSeatChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onDrvSeatOccupiedChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$18$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "occupied"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onPsnSeatOccupiedChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$CapsuleManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onBtDeviceNameChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$CapsuleManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speech status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 335
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "tts"

    if-ne v0, v1, :cond_1

    .line 336
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onSpeechStart()V

    .line 339
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    if-eqz p1, :cond_3

    .line 340
    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->cancelTimeOut(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->turnOnScreens(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_2

    .line 345
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onSpeechEnd()V

    .line 347
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsEnterCapsule:Z

    if-eqz p1, :cond_3

    .line 348
    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->timeOut(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$4$CapsuleManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "percent"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onElectricityPercentChange(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$CapsuleManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onAvailableMileageChange(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isInDcCharge"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onInDcChargeChange(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$CapsuleManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getWindowState()I

    move-result p1

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onWindowStateChange(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$CapsuleManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onSfsEnableChange(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$CapsuleManager(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vipSeatStatus"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 388
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->convertVipSeatStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onCapsuleSeatStatusChange(I)V

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCapsuleSeatStatusChange, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getDatetimeModelMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$QDFukRMz0U_tmLyTyqshPtfBR6c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$QDFukRMz0U_tmLyTyqshPtfBR6c;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getA2dpConnectLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getA2dpConnectLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$yYdcfwA6BEU-BE1fYBqHWk8yjrg;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$yYdcfwA6BEU-BE1fYBqHWk8yjrg;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getBtDeviceNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$mUgAitPTgDwToiTjn57qsVY9tpY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$mUgAitPTgDwToiTjn57qsVY9tpY;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getSpeechStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getSpeechStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$rXrVV0W70wT9XwY0_IE35-BeS8w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$rXrVV0W70wT9XwY0_IE35-BeS8w;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getElectricityPercentData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$OeoixMtbbq6bKgKBe-82h_y_Nh8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$OeoixMtbbq6bKgKBe-82h_y_Nh8;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAvailableMileageData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$6SWpq0tBdCJEVgPn7WoxE-8uasg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$6SWpq0tBdCJEVgPn7WoxE-8uasg;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDCChargeStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$utprl8pnp2jCrLkIVkOgHnUuj64;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$utprl8pnp2jCrLkIVkOgHnUuj64;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mWinDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWinMoveStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$A8jHKCjzONuE0D9tGTrDe31NvGg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$A8jHKCjzONuE0D9tGTrDe31NvGg;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->getSfsSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$DecDpYVy4xk1z0GyMZJ1o65iYZ8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$DecDpYVy4xk1z0GyMZJ1o65iYZ8;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipCapsuleSeatStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$bvMLlRT4Qoj93NvirxVO8Oot7Ls;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$bvMLlRT4Qoj93NvirxVO8Oot7Ls;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipRearSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$w_0lTbU2Suh0n85wF3mEVxDiXn0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$w_0lTbU2Suh0n85wF3mEVxDiXn0;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipSleepSecSeatStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$16o8C9a5EyRo8soIDipIedyssVk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$16o8C9a5EyRo8soIDipIedyssVk;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipDrvSeatStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$Q9g_SyMmiPnxRX9km3Jsm2UxJKI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$Q9g_SyMmiPnxRX9km3Jsm2UxJKI;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getVipPsnSeatStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$bSsFHndECF4ZfZlAcNk7XgukHXk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$bSsFHndECF4ZfZlAcNk7XgukHXk;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "shouldCheckRearSeatOccupied"

    .line 435
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRlSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$k-iKIMFV-X90p5Ibp1COvXbfVYQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$k-iKIMFV-X90p5Ibp1COvXbfVYQ;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRmSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$TJRJp7hP5FjuVLR0Jp0Khr-lpqo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$TJRJp7hP5FjuVLR0Jp0Khr-lpqo;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRrSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$HgcG2PPzL53d21kjz7ibNXFZ-rc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$HgcG2PPzL53d21kjz7ibNXFZ-rc;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$K3QEP0rduPEwYJn8K2XskM5eXtQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$K3QEP0rduPEwYJn8K2XskM5eXtQ;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatOccupiedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$fHL3nry8cr_HD9CGkx_P4IQ3B2c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$fHL3nry8cr_HD9CGkx_P4IQ3B2c;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onPauseMusic()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onPauseMusic()V

    :cond_0
    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setRrSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x49

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setRearSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x48

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getElectricityPercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x47

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "stopAlarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x46

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setSleepMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x45

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "changeAlarmVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x44

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getConnectedBtDeviceName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x43

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "setAutoPowerOffConfigOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x42

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "bindService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x41

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "abandonAudioFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x40

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getAvailableMileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x3f

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "stopMusicTimer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x3e

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getWindowState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x3d

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "unregisterBtStatusListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x3c

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "setPsnVipSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x3b

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "isProjectorConnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x3a

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "changeMediaVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x39

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "startMusicTimer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x38

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "isSourceInBt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x37

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "controlWindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x36

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "exitCapsuleScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x35

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "getSleepSecSeatStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x34

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "getEstimateEndurance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0x33

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "setAlarmTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x32

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "enterCapsuleScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0x31

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "isSwEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0x30

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "restoreCapsuleBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x2f

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "changeSoundEffectStyleCinema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x2e

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "getDrvVipSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0x2d

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "isBtSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "setSpaceCapsuleSleepMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "getRrSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "isDrvHeadrestNormal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "restoreAutoPowerOffConfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "setRlSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "unBindService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "setCapsuleBrightnessLow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "isFirstEnterSpaceCapsule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "reqSfsOpen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "isDrvSeatOccupied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "pauseMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "resumeMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "isPsnHeadrestNormal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "exitVipSeatMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "getSpaceCapsuleSleepMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "exitSleepMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "getCapsuleVipSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "registerBtDeviceNameObserver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "setCurrentSubMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "switchBluetoothSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "setUserScenarioInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "unRegisterBtDeviceNameObserver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "restoreDayNightTry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "getRearSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "setSleepSecSeatStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "setBtVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "setCapsuleVipSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "changeDay2NightTry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "isA2dpConnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "getMileageMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "setDrvVipSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "openSfs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "getPsnVipSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "getRlSeatAct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "restoreSfs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "requestAudioFocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "registerBtStatusListener"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_0

    :cond_42
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_43
    const-string v0, "cancelAlarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_0

    :cond_43
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_44
    const-string v0, "isPsnSeatOccupied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_0

    :cond_44
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_45
    const-string v0, "setRearSeatFold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_0

    :cond_45
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_46
    const-string v0, "playMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_0

    :cond_46
    move v5, v1

    goto :goto_0

    :sswitch_47
    const-string v0, "isRearSeatOccupied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_0

    :cond_47
    move v5, v2

    goto :goto_0

    :sswitch_48
    const-string v0, "exitCinemaMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_0

    :cond_48
    move v5, v3

    goto :goto_0

    :sswitch_49
    const-string v0, "setSoundFieldToMiddle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_0

    :cond_49
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 607
    :pswitch_0
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setRrSeatAct(I)V

    goto/16 :goto_1

    .line 613
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setRearSeatAct(I)V

    goto/16 :goto_1

    .line 643
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getElectricityPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 556
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->stopAlarm(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 691
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setSleepMode(I)V

    goto/16 :goto_1

    .line 562
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->changeAlarmVolume(Z)V

    goto/16 :goto_1

    .line 478
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getConnectedBtDeviceName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 481
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setAutoPowerOffConfigOff()V

    goto/16 :goto_1

    .line 577
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->bindService()V

    goto/16 :goto_1

    .line 532
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->abandonAudioFocus()V

    goto/16 :goto_1

    .line 646
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getAvailableMileage()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 682
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->stopMusicTimer()V

    goto/16 :goto_1

    .line 655
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getWindowState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 523
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unregisterBtStatusListener()V

    goto/16 :goto_1

    .line 589
    :pswitch_e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setPsnVipSeatAct(I)V

    goto/16 :goto_1

    .line 475
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isProjectorConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 511
    :pswitch_10
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->changeMediaVolume(Z)V

    goto/16 :goto_1

    .line 679
    :pswitch_11
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->startMusicTimer(J)V

    goto/16 :goto_1

    .line 496
    :pswitch_12
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isSourceInBt(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 658
    :pswitch_13
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->controlWindow()V

    goto/16 :goto_1

    .line 688
    :pswitch_14
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->exitCapsuleScene(I)V

    goto/16 :goto_1

    .line 622
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getSleepSecSeatStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 652
    :pswitch_16
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getEstimateEndurance(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 553
    :pswitch_17
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setAlarmTime(J)V

    goto/16 :goto_1

    .line 685
    :pswitch_18
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->enterCapsuleScene(I)V

    goto/16 :goto_1

    .line 667
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isSwEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 571
    :pswitch_1a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->restoreCapsuleBrightness()V

    goto/16 :goto_1

    .line 514
    :pswitch_1b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->changeSoundEffectStyleCinema(Z)V

    goto/16 :goto_1

    .line 586
    :pswitch_1c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getDrvVipSeatAct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 502
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isBtSource()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 565
    :pswitch_1e
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setSpaceCapsuleSleepMusic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :pswitch_1f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getRrSeatAct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 628
    :pswitch_20
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isDrvHeadrestNormal()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 484
    :pswitch_21
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->restoreAutoPowerOffConfig()V

    goto/16 :goto_1

    .line 601
    :pswitch_22
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setRlSeatAct(I)V

    goto/16 :goto_1

    .line 574
    :pswitch_23
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unBindService()V

    goto/16 :goto_1

    .line 568
    :pswitch_24
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setCapsuleBrightnessLow()V

    goto/16 :goto_1

    .line 580
    :pswitch_25
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isFirstEnterSpaceCapsule()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 541
    :pswitch_26
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->reqSfsOpen()V

    goto/16 :goto_1

    .line 637
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isDrvSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 550
    :pswitch_28
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->pauseMusic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 547
    :pswitch_29
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->resumeMusic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 631
    :pswitch_2a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isPsnHeadrestNormal()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 676
    :pswitch_2b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->exitVipSeatMode()V

    goto/16 :goto_1

    .line 538
    :pswitch_2c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getSpaceCapsuleSleepMusic()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 670
    :pswitch_2d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->exitSleepMode()V

    goto/16 :goto_1

    .line 598
    :pswitch_2e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getCapsuleVipSeatAct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 526
    :pswitch_2f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->registerBtDeviceNameObserver()V

    goto/16 :goto_1

    .line 505
    :pswitch_30
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setCurrentSubMode(I)V

    goto/16 :goto_1

    .line 493
    :pswitch_31
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->switchBluetoothSource()V

    goto/16 :goto_1

    :pswitch_32
    const-string p1, ","

    .line 694
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4a

    .line 695
    array-length p2, p1

    if-lt p2, v1, :cond_4a

    .line 696
    aget-object p2, p1, v4

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setUserScenarioInfo(III)V

    goto/16 :goto_1

    .line 529
    :pswitch_33
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unRegisterBtDeviceNameObserver()V

    goto/16 :goto_1

    .line 487
    :pswitch_34
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->restoreDayNightTry()V

    goto/16 :goto_1

    .line 616
    :pswitch_35
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getRearSeatAct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 619
    :pswitch_36
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setSleepSecSeatStatus(I)V

    goto/16 :goto_1

    .line 520
    :pswitch_37
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setBtVolume(I)V

    goto/16 :goto_1

    .line 595
    :pswitch_38
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setCapsuleVipSeatAct(I)V

    goto/16 :goto_1

    .line 490
    :pswitch_39
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->changeDay2NightTry()V

    goto/16 :goto_1

    .line 499
    :pswitch_3a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isA2dpConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 649
    :pswitch_3b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getMileageMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 583
    :pswitch_3c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setDrvVipSeatAct(I)V

    goto :goto_1

    .line 661
    :pswitch_3d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->openSfs()V

    goto :goto_1

    .line 592
    :pswitch_3e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getPsnVipSeatAct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 604
    :pswitch_3f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->getRlSeatAct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 664
    :pswitch_40
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->restoreSfs()V

    goto :goto_1

    .line 535
    :pswitch_41
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->requestAudioFocus()V

    goto :goto_1

    .line 517
    :pswitch_42
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->registerBtStatusListener()V

    goto :goto_1

    .line 559
    :pswitch_43
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->cancelAlarm()V

    goto :goto_1

    .line 640
    :pswitch_44
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isPsnSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 625
    :pswitch_45
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setRearSeatFold(Z)V

    goto :goto_1

    .line 544
    :pswitch_46
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->playMusic(Ljava/lang/String;)V

    goto :goto_1

    .line 634
    :pswitch_47
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->isRearSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 673
    :pswitch_48
    invoke-virtual {p0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->exitCinemaMode()V

    goto :goto_1

    .line 508
    :pswitch_49
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->setSoundFieldToMiddle(Z)V

    :cond_4a
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4b

    .line 702
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4b
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x78ff0dc3 -> :sswitch_49
        -0x7639f80e -> :sswitch_48
        -0x756b2b2f -> :sswitch_47
        -0x70e5acaf -> :sswitch_46
        -0x6e3fd514 -> :sswitch_45
        -0x5f89a05c -> :sswitch_44
        -0x5f57a809 -> :sswitch_43
        -0x5b726b85 -> :sswitch_42
        -0x59af196f -> :sswitch_41
        -0x51f240ee -> :sswitch_40
        -0x4e8ee203 -> :sswitch_3f
        -0x4e6ed91b -> :sswitch_3e
        -0x4b4afe2a -> :sswitch_3d
        -0x4a48d00a -> :sswitch_3c
        -0x45411fa9 -> :sswitch_3b
        -0x400581be -> :sswitch_3a
        -0x37707377 -> :sswitch_39
        -0x35c4b4c5 -> :sswitch_38
        -0x33d78772 -> :sswitch_37
        -0x2f76ac0d -> :sswitch_36
        -0x2e99232d -> :sswitch_35
        -0x29cfd52f -> :sswitch_34
        -0x2172699b -> :sswitch_33
        -0x1e6717b5 -> :sswitch_32
        -0x1959f16b -> :sswitch_31
        -0x17980eb4 -> :sswitch_30
        -0x16901cd4 -> :sswitch_2f
        -0x115ac139 -> :sswitch_2e
        -0x11479e64 -> :sswitch_2d
        -0x111935d5 -> :sswitch_2c
        -0xe739f79 -> :sswitch_2b
        -0x86008a4 -> :sswitch_2a
        -0x5b2b608 -> :sswitch_29
        -0x3ccde31 -> :sswitch_28
        -0x39830ff -> :sswitch_27
        -0x2b95794 -> :sswitch_26
        -0x26501c7 -> :sswitch_25
        0x404cb98 -> :sswitch_24
        0x8261b5f -> :sswitch_23
        0xdc4de71 -> :sswitch_22
        0x125cccc9 -> :sswitch_21
        0x1cf30379 -> :sswitch_20
        0x20b82b37 -> :sswitch_1f
        0x212a6637 -> :sswitch_1e
        0x21330257 -> :sswitch_1d
        0x22e0c982 -> :sswitch_1c
        0x23cfe032 -> :sswitch_1b
        0x2c1b6170 -> :sswitch_1a
        0x2def1e33 -> :sswitch_19
        0x2f210157 -> :sswitch_18
        0x309ae27c -> :sswitch_17
        0x38154109 -> :sswitch_16
        0x395dd1e7 -> :sswitch_15
        0x39e67a9d -> :sswitch_14
        0x3aebf3ad -> :sswitch_13
        0x3f26b3dc -> :sswitch_12
        0x42264622 -> :sswitch_11
        0x42572e4e -> :sswitch_10
        0x43b48277 -> :sswitch_f
        0x44678d59 -> :sswitch_e
        0x49a1a814 -> :sswitch_d
        0x4b4e354b -> :sswitch_c
        0x4bc981c2 -> :sswitch_b
        0x4d01d137 -> :sswitch_a
        0x50e69af7 -> :sswitch_9
        0x54856bb8 -> :sswitch_8
        0x55ff8a92 -> :sswitch_7
        0x5638efe6 -> :sswitch_6
        0x5a88f2fb -> :sswitch_5
        0x5afbcad8 -> :sswitch_4
        0x5f7f336f -> :sswitch_3
        0x6771fa8a -> :sswitch_2
        0x67cc5047 -> :sswitch_1
        0x7d0bebab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartMusic()V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onStartMusic()V

    :cond_0
    return-void
.end method

.method public onTimeStop()V
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onTimeStop()V

    :cond_0
    return-void
.end method

.method public onTtsPlayEnd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tts"
        }
    .end annotation

    .line 1742
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onTtsPlayEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateTime(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainingTime"
        }
    .end annotation

    .line 1735
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onUpdateTime(J)V

    :cond_0
    return-void
.end method

.method public openSfs()V
    .locals 3

    const-string v0, "isSupportSfs"

    .line 1469
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->isSwEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->reqSfsOpen()V

    .line 1471
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setOpenSfs(Z)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "CapsuleManager"

    const-string v2, "openSfs"

    .line 1473
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public pauseByLossAudioFocus()V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onPauseByLossAudioFocus()V

    :cond_0
    return-void
.end method

.method public pauseMusic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicSource"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseMusic musicSource\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->pauseMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicSource"
        }
    .end annotation

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playMusic musicSource\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerBtDeviceNameObserver()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "registerBtDeviceNameObserver"

    .line 899
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->registerBtDeviceNameObserver()V

    return-void
.end method

.method public registerBtStatusListener()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "registerBtStatusListener"

    .line 873
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->registerBtStatusListener()V

    return-void
.end method

.method public reqSfsOpen()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "reqSfsOpen"

    .line 940
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->reqSfsOpen()V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "requestAudioFocus"

    .line 923
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->requestAudioFocus()V

    return-void
.end method

.method public restoreAutoPowerOffConfig()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "restoreAutoPowerOffConfig"

    .line 772
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreAutoPowerOffConfig()V

    return-void
.end method

.method public restoreCapsuleBrightness()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "restoreCapsuleBrightness"

    .line 1029
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreCapsuleBrightness()V

    return-void
.end method

.method public restoreDayNightTry()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, "restoreDayNightTry"

    .line 780
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 781
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mChangeToNightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mRestoreDayNightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mRestoreDayNightRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreSfs()V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isOpenSfs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CapsuleManager"

    const-string v1, "close sfs"

    .line 1481
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSfsViewModel:Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->setSwEnable(Z)V

    .line 1483
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setOpenSfs(Z)V

    :cond_0
    return-void
.end method

.method public resumeByGainAudioFocus()V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onResumeByGainAudioFocus()V

    :cond_0
    return-void
.end method

.method public resumeMusic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicSource"
        }
    .end annotation

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeMusic musicSource\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->resumeMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlarmTime(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    .line 976
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmTime, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", triggerTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", AlarmTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 979
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapsuleManager"

    .line 978
    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_CAPSULE_ALARM.wav"

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setAlarmTime(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoPowerOffConfigOff()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "setAutoPowerOffConfigOff"

    .line 764
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setAutoPowerOffConfigOff()V

    return-void
.end method

.method public setBtVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtVolume volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setBtVolume(I)V

    return-void
.end method

.method public setCapsuleBrightnessLow()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "setCapsuleBrightnessLow"

    .line 1022
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleBrightnessLow()V

    return-void
.end method

.method public setCapsuleVipSeatAct(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapsuleVipSeatAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1167
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1164
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1161
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1158
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1155
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1152
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setCurrentSubMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentSubMode mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCurrentSubMode(I)V

    return-void
.end method

.method public setDrvVipSeatAct(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDrvVipSeatAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1084
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1081
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1078
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1075
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1072
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setPsnVipSeatAct(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPsnVipSeatAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1127
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1124
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1121
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1118
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1115
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1112
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setRearSeatAct(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRearSeatAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1284
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1281
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1278
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1275
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1272
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1269
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setRearSeatFold(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRearSeatFold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1335
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatFold(Z)V

    .line 1336
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatFold(Z)V

    return-void
.end method

.method public setRlSeatAct(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRlSeatAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1204
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1201
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1198
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1195
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1192
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setRrSeatAct(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRrSeatAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1247
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1244
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1241
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1238
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1235
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1232
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setSleepMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1718
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setSleepMode(I)V

    return-void
.end method

.method public setSleepSecSeatStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSleepSecSeatStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Stop:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1315
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->RestorePause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1312
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Restore:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1309
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->Flat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1306
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    goto :goto_0

    .line 1303
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->LayFlat:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V

    :goto_0
    return-void
.end method

.method public setSoundFieldToMiddle(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSoundFieldToMiddle isEnter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setSoundFieldToMiddle(Z)V

    return-void
.end method

.method public setSpaceCapsuleSleepMusic(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpaceCapsuleSleepMusic uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setSpaceCapsuleSleepMusic(Ljava/lang/String;)V

    return-void
.end method

.method public setUserScenarioInfo(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scenarioName",
            "scenarioStatus",
            "subPage"
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    return-void
.end method

.method public showAlarmDialog()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/capsule/ICapsuleListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/capsule/ICapsuleListener;->onShowAlarmDialog()V

    :cond_0
    const-string v0, "alarm"

    .line 710
    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->turnOnScreens(Ljava/lang/String;)V

    .line 711
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->cancelTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method public startMusicTimer(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " startMusicTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1565
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0, p1, p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->startMusicTimer(JLcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;)V

    return-void
.end method

.method public stopAlarm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alarmSource"
        }
    .end annotation

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAlarm alarmSource\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapsuleManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->stopAlarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public stopMusicTimer()V
    .locals 3

    const-string v0, "CapsuleManager"

    const-string v1, " stopMusicTimer "

    const/4 v2, 0x0

    .line 1569
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1570
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->stopMusicTimer()V

    return-void
.end method

.method public switchBluetoothSource()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "switchBluetoothSource"

    .line 801
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->switchBluetoothSource()V

    return-void
.end method

.method public turnOnScreens(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnScreens from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapsuleManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1753
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "xp_mt_ivi"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/PowerManager;->setXpScreenOn(Ljava/lang/String;J)V

    .line 1754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "xp_mt_psg"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/PowerManager;->setXpScreenOn(Ljava/lang/String;J)V

    .line 1755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->setXpIcmScreenOn(J)V

    return-void
.end method

.method public unBindService()V
    .locals 2

    .line 1037
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsBindService:Z

    const-string v1, "CapsuleManager"

    if-eqz v0, :cond_0

    const-string v0, "unBindService"

    .line 1038
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->unBindService(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "unBindService: not bind"

    .line 1041
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unRegisterBtDeviceNameObserver()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "unRegisterBtDeviceNameObserver"

    .line 907
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->unRegisterBtDeviceNameObserver()V

    return-void
.end method

.method public unregisterBtStatusListener()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "unregisterBtStatusListener"

    .line 891
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->unregisterBtStatusListener()V

    return-void
.end method

.method public unregisterInputListener()V
    .locals 3

    .line 1666
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterTouchListener:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "CapsuleManager"

    const-string v1, "unregisterInputListener unregisterInputListener"

    .line 1668
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mInputEventListener:Lcom/xiaopeng/input/IInputEventListener;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->unregisterInputListener(Lcom/xiaopeng/input/IInputEventListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1671
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 1673
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterTouchListener:Z

    :cond_0
    return-void
.end method

.method public unregisterKeyListener()V
    .locals 3

    .line 1679
    iget-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterKeyListener:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "CapsuleManager"

    const-string v1, "unregisterKeyListener unregisterGlobalKeyInterceptListener"

    .line 1681
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIXpKeyListener:Lcom/xiaopeng/IXPKeyListener;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->unregisterGlobalKeyInterceptListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1684
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 1686
    iput-boolean v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager;->mIsRegisterKeyListener:Z

    :cond_0
    return-void
.end method
