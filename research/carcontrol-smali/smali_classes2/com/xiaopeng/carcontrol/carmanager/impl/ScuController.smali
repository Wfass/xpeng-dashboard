.class public Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "ScuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$ScuControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/scu/CarScuManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;"
    }
.end annotation


# static fields
.field private static final REMOTE_CAMERA_SW:Ljava/lang/String; = "remote_camera_sw"

.field protected static final TAG:Ljava/lang/String; = "ScuController"


# instance fields
.field private mApaSafeExamResult:Ljava/lang/Boolean;

.field private final mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mFreeNgpUidResult:Ljava/lang/Boolean;

.field private mIsLccVideoWatched:Ljava/lang/Boolean;

.field private mIsMemParkVideoWatched:Ljava/lang/Boolean;

.field private mIslaMode:Ljava/lang/Integer;

.field private mLccSafeExamResult:Ljava/lang/Boolean;

.field private mMemParkSafeExamResult:Ljava/lang/Boolean;

.field private mNgpSafeExamResult:Ljava/lang/Boolean;

.field private mSuperLccSafeExamResult:Ljava/lang/Boolean;

.field private mSuperVpaSafeExamResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 50
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsLccVideoWatched:Ljava/lang/Boolean;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMemParkVideoWatched:Ljava/lang/Boolean;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mFreeNgpUidResult:Ljava/lang/Boolean;

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIslaMode:Ljava/lang/Integer;

    .line 85
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 87
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Q5FR8L0sPaIrWiPKFjpcXiO8Y-g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Q5FR8L0sPaIrWiPKFjpcXiO8Y-g;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const-wide/16 v1, 0x7d0

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleLossEventsUpdate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$602(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method private buildXpilotIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x21402602

    .line 2380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private convertAccState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private convertAccStateForMirror(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static convertApaState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static convertDomainRcwState([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p0, :cond_8

    .line 1903
    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 1907
    aget v2, p0, v1

    if-eq v2, v0, :cond_8

    const/4 v2, 0x1

    aget v3, p0, v2

    if-ne v3, v0, :cond_1

    goto :goto_3

    .line 1909
    :cond_1
    aget v0, p0, v1

    if-eqz v0, :cond_7

    aget v0, p0, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 1911
    :cond_2
    aget v0, p0, v1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    aget v0, p0, v2

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 1913
    :cond_3
    aget v0, p0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    aget p0, p0, v2

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const/16 p0, 0x9

    return p0

    :cond_6
    :goto_1
    const/16 p0, 0xa

    return p0

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method private static convertDsmState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static convertElkState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static convertIhbState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static convertKeyParkState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static convertLcaState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x6

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    const-string v1, "isSupportGeoFence"

    .line 2312
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static convertLccState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-string v1, "isSupportGeoFence"

    .line 2185
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    const/16 p0, 0x9

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private convertLccWorkSt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static convertLkaState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertMemoryParkState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    return v0
.end method

.method protected static convertNewLdwState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static convertNgpState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x16

    if-eq p0, v1, :cond_0

    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 p0, 0x9

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static convertRcwState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method private static convertRemindModeValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static convertRemindModeValueFromSave(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static convertVpaState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    return v0

    :cond_3
    const/16 p0, 0x8

    return p0
.end method

.method private handleLossEventsUpdate(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x2

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    move v0, v4

    goto :goto_0

    :sswitch_5
    move v0, v3

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x3

    :goto_0
    :sswitch_7
    if-eq v0, v1, :cond_0

    .line 516
    new-instance v1, Landroid/car/hardware/CarPropertyValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21402601 -> :sswitch_6
        0x21402602 -> :sswitch_5
        0x21402603 -> :sswitch_5
        0x21402605 -> :sswitch_4
        0x21402606 -> :sswitch_4
        0x21402607 -> :sswitch_4
        0x21402608 -> :sswitch_4
        0x21402609 -> :sswitch_3
        0x2140260d -> :sswitch_7
        0x2140260e -> :sswitch_5
        0x2140260f -> :sswitch_2
        0x21402616 -> :sswitch_4
        0x21402617 -> :sswitch_4
        0x21402618 -> :sswitch_4
        0x2140261a -> :sswitch_4
        0x21402634 -> :sswitch_1
        0x2140268e -> :sswitch_1
        0x214026ad -> :sswitch_5
        0x214026d3 -> :sswitch_1
        0x214026d4 -> :sswitch_1
        0x214026da -> :sswitch_7
        0x214026e1 -> :sswitch_7
        0x214026eb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected addExtPropertyIds(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isSupportSdc"

    .line 156
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x21402601

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isSupportFcwSen"

    .line 163
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x214026fd

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v1, 0x21402602

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isSupportXpuDomainCtrl"

    .line 169
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x214126ef

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x214126f1

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const v2, 0x21402605

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x21402608

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, "isSupportIslc"

    .line 177
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x2140260d

    if-eqz v2, :cond_2

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "isSupportIsla"

    .line 180
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const v4, 0x214026dc

    const v5, 0x214026e1

    if-eqz v2, :cond_3

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x214026dd

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "isSupportRcw"

    .line 187
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x214126f0

    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const v2, 0x21402607

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    const-string v2, "isNewScuArch"

    .line 194
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x214126f2

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const v2, 0x21402606

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const v2, 0x2140262a

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const v2, 0x214026fc

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x214026d3

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v2, "isSupportAutoPark"

    .line 208
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x21402618

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "isSupportKeyPark"

    .line 210
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x2140261a

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v2, "isSupportEnhancedParkFunc"

    .line 213
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x21402617

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v2, "isSupportMemPark"

    .line 217
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x214026d1

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const v2, 0x2140260e

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x21402609

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_c

    const v2, 0x214026f4

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x214026f5

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_c
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v2, :cond_d

    const v2, 0x21402634

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x21402650

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x2140261b

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_d

    const v0, 0x214026a9

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x214026aa

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x2141269b

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x214026af

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x214026ae

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v0, "isSupportXpu"

    .line 241
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x2140269e

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x2140260f

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v2, :cond_f

    const v2, 0x21402603

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x214026a0

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    const v1, 0x2140269f

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    const v1, 0x2140269a

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x214026a2

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string v1, "isSupportDsmCamera"

    .line 262
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x214026ff

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402704

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402702

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x214026eb

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v1, "isSupportSpecialSas"

    .line 269
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_11
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x21402703

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method protected buildPropIdList(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2369
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_xpilot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2371
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->buildXpilotIdList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method protected convertBsdState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method protected convertDomainBsdState([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_8

    .line 2000
    array-length v1, p1

    if-ge v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 2004
    aget v2, p1, v1

    if-eq v2, v0, :cond_8

    const/4 v2, 0x1

    aget v3, p1, v2

    if-ne v3, v0, :cond_1

    goto :goto_3

    .line 2006
    :cond_1
    aget v0, p1, v1

    if-eqz v0, :cond_7

    aget v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 2008
    :cond_2
    aget v0, p1, v1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    aget v0, p1, v2

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 2010
    :cond_3
    aget v0, p1, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    aget p1, p1, v2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const/16 p1, 0x9

    return p1

    :cond_6
    :goto_1
    const/16 p1, 0xa

    return p1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method protected convertDomainDowState([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_8

    .line 2030
    array-length v1, p1

    if-ge v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 2034
    aget v2, p1, v1

    if-eq v2, v0, :cond_8

    const/4 v2, 0x1

    aget v3, p1, v2

    if-ne v3, v0, :cond_1

    goto :goto_3

    .line 2036
    :cond_1
    aget v0, p1, v1

    if-eqz v0, :cond_7

    aget v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 2038
    :cond_2
    aget v0, p1, v1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    aget v0, p1, v2

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 2040
    :cond_3
    aget v0, p1, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    aget p1, p1, v2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const/16 p1, 0x9

    return p1

    :cond_6
    :goto_1
    const/16 p1, 0xa

    return p1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method protected convertDomainRctaState([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_8

    .line 1933
    array-length v1, p1

    if-ge v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 1937
    aget v2, p1, v1

    if-eq v2, v0, :cond_8

    const/4 v2, 0x1

    aget v3, p1, v2

    if-ne v3, v0, :cond_1

    goto :goto_3

    .line 1939
    :cond_1
    aget v0, p1, v1

    if-eqz v0, :cond_7

    aget v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 1941
    :cond_2
    aget v0, p1, v1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    aget v0, p1, v2

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 1943
    :cond_3
    aget v0, p1, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    aget p1, p1, v2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const/16 p1, 0x9

    return p1

    :cond_6
    :goto_1
    const/16 p1, 0xa

    return p1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method protected convertDowState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method protected convertFcwState(I)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isNewFcwSignal"

    .line 1842
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0x8

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v9, :cond_1

    if-eq p1, v5, :cond_0

    return v3

    :cond_0
    return v1

    :cond_1
    return v9

    :cond_2
    return v2

    :cond_3
    return v8

    :cond_4
    return v4

    :cond_5
    if-eqz p1, :cond_a

    if-eq p1, v8, :cond_9

    if-eq p1, v7, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    if-eq p1, v6, :cond_8

    if-eq p1, v9, :cond_7

    if-eq p1, v5, :cond_6

    return v3

    :cond_6
    return v1

    :cond_7
    return v9

    :cond_8
    return v2

    :cond_9
    return v8

    :cond_a
    return v4
.end method

.method protected convertIslaState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportSpecialSas"

    .line 2290
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected convertLdwState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 p1, 0x9

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected convertRctaState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method protected convertSlaState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportSpecialSas"

    .line 2268
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected disconnect()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/scu/CarScuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ScuController"

    .line 286
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAccState()I
    .locals 4

    .line 804
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$8oBHaD1FtO7yG9Ke0lLSSAblCFk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$8oBHaD1FtO7yG9Ke0lLSSAblCFk;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21402634

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 806
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertAccState(I)I

    move-result v0

    return v0
.end method

.method public getAccStateForMirror()I
    .locals 4

    .line 811
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$xzcV-Axwcq9Gp6nz-ZI_iwiMKms;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$xzcV-Axwcq9Gp6nz-ZI_iwiMKms;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21402634

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccStateForMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 813
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertAccStateForMirror(I)I

    move-result v0

    return v0
.end method

.method public getAlcState()I
    .locals 4

    .line 875
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$-YCd5MJTGN-u75D491kSolHV5HI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$-YCd5MJTGN-u75D491kSolHV5HI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21402609

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlcState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 877
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLcaState(I)I

    move-result v0

    return v0
.end method

.method public getApaSafeExamResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1556
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1558
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getApaSafeExamResult()Z

    move-result p1

    return p1

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getApaSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1562
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApaSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 1564
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "apa_safe_exam"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1567
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getAutoParkSw()I
    .locals 4

    .line 1198
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ThROshrqMSO4pD5yQxUYKc2ROlo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ThROshrqMSO4pD5yQxUYKc2ROlo;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoParkSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1200
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertApaState(I)I

    move-result v0

    return v0
.end method

.method public getBsdState()I
    .locals 5

    const-string v0, "isSupportXpuDomainCtrl"

    .line 725
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "getBsdState: "

    const-string v2, "ScuController"

    if-eqz v0, :cond_0

    .line 726
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$cVJDQYVP7oqLu_7-zkjjxaL5FxA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$cVJDQYVP7oqLu_7-zkjjxaL5FxA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainBsdState([I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x21402605

    .line 730
    new-instance v3, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$eLkguPb0u9Rx5NgErvRPHvli1Es;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$eLkguPb0u9Rx5NgErvRPHvli1Es;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertBsdState(I)I

    move-result v0

    return v0
.end method

.method protected getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    return-object v0
.end method

.method public getDDAWStatus()I
    .locals 4

    .line 1467
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$xJYrB2kMsnjJEtaGbEK_SJuwMAc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$xJYrB2kMsnjJEtaGbEK_SJuwMAc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21402703

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDDAWStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getDowState()I
    .locals 5

    const-string v0, "isSupportXpuDomainCtrl"

    .line 745
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "getDowState: "

    const-string v2, "ScuController"

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$u-8WqGhzuF56NMtJa3Da3yAy1HU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$u-8WqGhzuF56NMtJa3Da3yAy1HU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainDowState([I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x21402608

    .line 750
    new-instance v3, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$VkyLRCFrlaaKg0OMW9vE2vP6iPk;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$VkyLRCFrlaaKg0OMW9vE2vP6iPk;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDowState(I)I

    move-result v0

    return v0
.end method

.method public getDrivingSafeExamResult(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1662
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrivingSafeExamResult()Z

    move-result p1

    return p1

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrivingSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDrivingWithLidarSafeExamResult(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1696
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrivingWithLidarSafeExamResult()Z

    move-result p1

    return p1

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrivingWithLidarSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDsmSwStatus()I
    .locals 4

    const-string v0, "isSupportDsmCamera"

    .line 1407
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026eb

    .line 1408
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$02nUDid_mAlFzByX1PZV-dDdgNA;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$02nUDid_mAlFzByX1PZV-dDdgNA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1410
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDsmSwStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getDsmTiredDistractionManualSw()Z
    .locals 4

    .line 1442
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$MJtEUVRE31WMc_BDvOpC_Pg9Jw4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$MJtEUVRE31WMc_BDvOpC_Pg9Jw4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21402704

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDsmTiredDistractionManualSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getDsmTiredDistractionSensitivity()I
    .locals 3

    const-string v0, "isSupportDsmCamera"

    .line 1450
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x21402702

    .line 1451
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$gW5vt-KQ4bczje9v3xQVV6d3i5w;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$gW5vt-KQ4bczje9v3xQVV6d3i5w;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1453
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDsmTiredDistractionSensitivity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScuController"

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDsmTiredDistractionStatus()I
    .locals 3

    const-string v0, "isSupportDsmCamera"

    .line 1425
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026ff

    .line 1426
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$rdTS1ao5XUJm0n_UM_HH9D-qLNc;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$rdTS1ao5XUJm0n_UM_HH9D-qLNc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1428
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDsmTiredDistractionStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScuController"

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getElkState()I
    .locals 4

    const-string v0, "isSupportElk"

    .line 638
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026ad

    .line 639
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$d5EomGCubMRbENcj9bM4De89XWA;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$d5EomGCubMRbENcj9bM4De89XWA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getElkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 641
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertElkState(I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getFcwSensitivity()I
    .locals 5

    const-string v0, "ScuController"

    const v1, 0x214026fd

    const/4 v2, 0x0

    .line 537
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntProperty(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v1}, Landroid/car/hardware/scu/CarScuManager;->getFcwAebSensitivitySwitchStatus()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFcwSensitivity failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 545
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFcwSensitivity:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getFcwState()I
    .locals 4

    .line 522
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$DwJCos18TXputSiRMmMWrUa_lns;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$DwJCos18TXputSiRMmMWrUa_lns;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21402601

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFcwState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertFcwState(I)I

    move-result v0

    return v0
.end method

.method public getFreeNgpSafeExamResult(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1645
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getFreeNgpSafeExamResult()Z

    move-result p1

    return p1

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getFreeNgpSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getFreeNgpUidResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1045
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getFreeNgpUidResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1048
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFreeNgpUidResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mFreeNgpUidResult:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ScuController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1049
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mFreeNgpUidResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getIhbState()I
    .locals 3

    .line 765
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$D_dDDROi_j2uvTF5djocvooFU3E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$D_dDDROi_j2uvTF5djocvooFU3E;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x21402603

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIhbState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertIhbState(I)I

    move-result v0

    return v0
.end method

.method public getImageRetentionState()Z
    .locals 5

    const-string v0, "ScuController"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "persist.sys.auto_park_hold"

    const/4 v3, 0x1

    .line 1387
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 1389
    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    .line 1392
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageRetentionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public getIslaConfirmMode()I
    .locals 4

    .line 857
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$7q5UiTsKzyRJJQdi4hPfQ26tCSU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$7q5UiTsKzyRJJQdi4hPfQ26tCSU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x214026dc

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIslaConfirmMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getIslaSpdRange()I
    .locals 4

    .line 839
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$VSnbKtZlGX5PCvE0Q-4tTvdw6gw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$VSnbKtZlGX5PCvE0Q-4tTvdw6gw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x214026dd

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIslaSpdRange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getIslaState()I
    .locals 4

    .line 832
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$36-T_h3erPOhPIpwdOaFoJ_CXsw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$36-T_h3erPOhPIpwdOaFoJ_CXsw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x2140260d

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIslaState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 834
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertIslaState(I)I

    move-result v0

    return v0
.end method

.method public getKeyParkSw()I
    .locals 4

    .line 1269
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$y9RPcz7trujyfM00-TBqhUt61o8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$y9RPcz7trujyfM00-TBqhUt61o8;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140261a

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyParkSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getLccSafeExamResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1519
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1521
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSafeExamResult()Z

    move-result p1

    return p1

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1525
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLccSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 1527
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "lcc_safe_exam"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1530
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getLccState()I
    .locals 4

    .line 778
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$lBJIaydQZ4v_nMHlr-47BSCB30o;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$lBJIaydQZ4v_nMHlr-47BSCB30o;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x2140260e

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLccState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 780
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLccState(I)I

    move-result v0

    return v0
.end method

.method public getLccWorkSt()I
    .locals 4

    .line 818
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$IYsKOeLrcUOScLpx8KPFJnN4Thg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$IYsKOeLrcUOScLpx8KPFJnN4Thg;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLccWorkSt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 820
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLccWorkSt(I)I

    move-result v0

    return v0
.end method

.method public getLdwState()I
    .locals 6

    const-string v0, "isSupportOldLka"

    .line 606
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getLdwState: "

    const-string v3, "ScuController"

    if-eqz v0, :cond_0

    const v0, 0x214026d3

    .line 607
    new-instance v4, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$g0tS6t2RuWbdQ2-5TLMtSj_qkb8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$g0tS6t2RuWbdQ2-5TLMtSj_qkb8;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 609
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertNewLdwState(I)I

    move-result v0

    return v0

    .line 611
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$jScqrTyUGYmdlzVMCvIdECEQETQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$jScqrTyUGYmdlzVMCvIdECEQETQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLdwState(I)I

    move-result v0

    return v0
.end method

.method public getLkaState()I
    .locals 4

    const-string v0, "isSupportOldLka"

    .line 627
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const v0, 0x214026d4

    .line 628
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$8E8tuaMvxis5o9QKdb0oGq3KZG4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$8E8tuaMvxis5o9QKdb0oGq3KZG4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x2140268e

    .line 630
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$BR3JfHGI6emhmHexSdUoiFtAiwg;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$BR3JfHGI6emhmHexSdUoiFtAiwg;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 632
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLkaState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ScuController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 633
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLkaState(I)I

    move-result v0

    return v0
.end method

.method public getLssMode()I
    .locals 5

    const-string v0, "ScuController"

    const v1, 0x214026fc

    const/4 v2, 0x0

    .line 695
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v1}, Landroid/car/hardware/scu/CarScuManager;->getLaneSupportSystemStateAndWarning()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLssMode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v2

    .line 703
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLssMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public getMemParkExamResult(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 930
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 932
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult()Z

    move-result p1

    return p1

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 936
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMemParkSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    .line 938
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mem_park_safe_exam"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 941
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getMemParkSafeExamResultV2(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1628
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResultV2()Z

    move-result p1

    return p1

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResultV2(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getMemoryParkSw()I
    .locals 4

    const-string v0, "isSupportMemPark"

    .line 1243
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026d1

    .line 1244
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$czD7YRMdyRWHm_dN3A6T2FhM9kY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$czD7YRMdyRWHm_dN3A6T2FhM9kY;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMemoryParkSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1246
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertVpaState(I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getNgpModeStatus()I
    .locals 3

    .line 1169
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$AfT2g21QT6r8osWuudIfBEjRLPY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$AfT2g21QT6r8osWuudIfBEjRLPY;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNgpModeStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpRemindMode()I
    .locals 4

    .line 1148
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ngp_broadcast_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertRemindModeValueFromSave(I)I

    move-result v0

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNgpRemindMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpSafeExamResult(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 913
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 915
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResult()Z

    move-result p1

    return p1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 919
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNgpSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    .line 921
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ngp_safe_exam"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 924
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getNgpSafeExamResultV2(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1594
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResultV2()Z

    move-result p1

    return p1

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResultV2(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getNgpState()I
    .locals 3

    .line 1056
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$KCUyKqA9bbTaxq5DStlBjAc6aPc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$KCUyKqA9bbTaxq5DStlBjAc6aPc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNgpState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertNgpState(I)I

    move-result v0

    return v0
.end method

.method public getNgpTipsMode()I
    .locals 4

    .line 1081
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$HEHF1cTFN0s-Y2QPPTXe1l_0mKc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$HEHF1cTFN0s-Y2QPPTXe1l_0mKc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140269a

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpTipsMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpTruckOffsetSw()I
    .locals 4

    const-string v0, "isSupportXpuDomainCtrl"

    .line 1123
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x214026a0

    .line 1124
    new-instance v3, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$3dAPNDZ9yd8psaqVfC9rElTEC-Q;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$3dAPNDZ9yd8psaqVfC9rElTEC-Q;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x2140269f

    .line 1126
    new-instance v3, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$cLNfICMmoVFNSOYMisbFMIuT1xA;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$cLNfICMmoVFNSOYMisbFMIuT1xA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1128
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpTruckOffsetSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpVoiceChangeLane()I
    .locals 4

    .line 1101
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ngp_voice_lc"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1105
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpVoiceChangeLane: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getNgpWithLidarSafeExamResultV2(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1611
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpWithLidarSafeExamResultV2()Z

    move-result p1

    return p1

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpWithLidarSafeExamResultV2(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getOverseasElkMode()I
    .locals 1

    .line 676
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getLssMode()I

    move-result v0

    return v0
.end method

.method public getOverseasLkaMode()I
    .locals 5

    const-string v0, "ScuController"

    const v1, 0x214026d3

    const/4 v2, 0x0

    .line 650
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v1}, Landroid/car/hardware/scu/CarScuManager;->getScuLdwLkaSwitchStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverseasLkaMode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v2

    .line 658
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverseasLkaMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public getParkSoundEffect()I
    .locals 5

    const-string v0, "ScuController"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "persist.sys.auto_park_warning"

    .line 1354
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 1356
    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParkSoundEffect found invalid effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v1

    .line 1365
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParkSoundEffect return effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public getParkingSafeExamResult(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1679
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkingSafeExamResult()Z

    move-result p1

    return p1

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkingSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getParkingWithLidarSafeExamResult(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1713
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkingWithLidarSafeExamResult()Z

    move-result p1

    return p1

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkingWithLidarSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getPhoneParkSw()I
    .locals 4

    .line 1283
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$3cvSvZLo_yUz0GNfVRgDl6uOO7g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$3cvSvZLo_yUz0GNfVRgDl6uOO7g;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21402617

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneParkSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getRctaState()I
    .locals 6

    const-string v0, "isSupportXpuDomainCtrl"

    .line 585
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getRctaState: "

    const-string v3, "ScuController"

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$9RlPcGrppU-nkMnAJ45YBTk3H0A;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$9RlPcGrppU-nkMnAJ45YBTk3H0A;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 588
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainRctaState([I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x21402606

    .line 590
    new-instance v4, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$p3ilg7PHcBq9G0hc1n-HXtbTmgE;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$p3ilg7PHcBq9G0hc1n-HXtbTmgE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertRctaState(I)I

    move-result v0

    return v0
.end method

.method public getRcwState()I
    .locals 6

    const-string v0, "isSupportXpuDomainCtrl"

    .line 562
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getRcwState: "

    const-string v3, "ScuController"

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$8YBVr2NO1lZnAI_D9Sa35VjVWYQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$8YBVr2NO1lZnAI_D9Sa35VjVWYQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 565
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainRcwState([I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x21402607

    .line 567
    new-instance v4, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$A15lqEGzwsda6YOZydUqrGaMGR8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$A15lqEGzwsda6YOZydUqrGaMGR8;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 569
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertRcwState(I)I

    move-result v0

    return v0
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->addExtPropertyIds(Ljava/util/List;)V

    return-object v0
.end method

.method public getRemoteCameraSw()Z
    .locals 3

    .line 1486
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_camera_sw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public getScuRearMirrorControlState()I
    .locals 4

    .line 1297
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$oGAN2Mnj2dOp32Rn2gYTTd3mZb0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$oGAN2Mnj2dOp32Rn2gYTTd3mZb0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x21402650

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScuRearMirrorControlState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getSdcLeftRadarDisLevel()I
    .locals 4

    const-string v0, "isSupportSdc"

    .line 1494
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026f4

    .line 1495
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$4-OcWx5mznR-GyCbz1stSdmkErs;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$4-OcWx5mznR-GyCbz1stSdmkErs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdcLeftRadarDisLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    :cond_0
    return v1
.end method

.method public getSdcRightRadarDisLevel()I
    .locals 4

    const-string v0, "isSupportSdc"

    .line 1504
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x214026f5

    .line 1505
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$5pf8nqTtAo-oPCaLDfECR9LH62s;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$5pf8nqTtAo-oPCaLDfECR9LH62s;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdcRightRadarDisLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    :cond_0
    return v1
.end method

.method public getSlaState()I
    .locals 4

    .line 825
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$cuq-43uV2vHJj8rUfyVjnpRJq6c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$cuq-43uV2vHJj8rUfyVjnpRJq6c;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x214026e1

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlaState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 827
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertSlaState(I)I

    move-result v0

    return v0
.end method

.method public getSuperLccExamResult(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 963
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 965
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult()Z

    move-result p1

    return p1

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 969
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSuperLccSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    .line 971
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "super_lcc_safe_exam"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 974
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getSuperVpaExamResult(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 947
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 949
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperVpaSafeExamResult()Z

    move-result p1

    return p1

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperVpaSafeExamResult(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 953
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSuperVpaSafeExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    .line 955
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "super_vpa_safe_exam"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 958
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getTtsBroadcastType()I
    .locals 4

    .line 1328
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_broadcast_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTtsBroadcastType value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScuController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public getWogState()Z
    .locals 4

    const-string v0, "ScuController"

    .line 1233
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "persist.sys.welcome_out_of_garage"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 1235
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 1237
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWogState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    move v3, v0

    :cond_0
    return v3
.end method

.method public getXpuXpilotState()I
    .locals 4

    .line 906
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$4Bl6y1Qon6eJBwHcKfFFbiu-Frs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$4Bl6y1Qon6eJBwHcKfFFbiu-Frs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x2140269e

    invoke-virtual {p0, v3, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(ILcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpuXpilotState st: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScuController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method protected handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Landroid/car/hardware/CarPropertyValue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainRctaState([I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$sYIaL9_uF6nTX3VlcePzkVnxIDk;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$sYIaL9_uF6nTX3VlcePzkVnxIDk;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 338
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainDowState([I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$32IUIb065A8inUzi36nnZBxSdT4;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$32IUIb065A8inUzi36nnZBxSdT4;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 317
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainRcwState([I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ZiZ4byys5kHJKBIWTPV5ZEth_38;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ZiZ4byys5kHJKBIWTPV5ZEth_38;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 332
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDomainBsdState([I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SJaqDoDJajUHJ9o0oDquC1S1jTI;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SJaqDoDJajUHJ9o0oDquC1S1jTI;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 424
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$nfFGpC9oBkdqpTnVoXGaKHmTp6w;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$nfFGpC9oBkdqpTnVoXGaKHmTp6w;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 430
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$a9lR8VHEwy-6rZK1qzUMGndkwxI;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$a9lR8VHEwy-6rZK1qzUMGndkwxI;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 427
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$WJuk7FncbnfveFLBhYWgT6UoYe0;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$WJuk7FncbnfveFLBhYWgT6UoYe0;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 421
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$zUzgAGD1I6-LZpBBMuoozb_nsbw;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$zUzgAGD1I6-LZpBBMuoozb_nsbw;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 308
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$yVoahyTm-lMiWgewH6wzREbbuWs;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$yVoahyTm-lMiWgewH6wzREbbuWs;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 341
    :sswitch_9
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$hQN8CRe07qevNqTVIh3TT2d5zkI;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$hQN8CRe07qevNqTVIh3TT2d5zkI;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$plRiDkd-egqVl9wyY045Q60bKs4;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$plRiDkd-egqVl9wyY045Q60bKs4;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 409
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CXY_s2wGBPaVBv6swwlN3TXMreY;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CXY_s2wGBPaVBv6swwlN3TXMreY;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 406
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$L5iX1TuE-OGsul5h5uXnJbTq70k;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$L5iX1TuE-OGsul5h5uXnJbTq70k;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 418
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$F__MHU_dvfp20Fx6KjkrqBc4a24;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$F__MHU_dvfp20Fx6KjkrqBc4a24;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 373
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertSlaState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$Vs5BrKFWIyuf6_6aXf0RP3Jwm54;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$Vs5BrKFWIyuf6_6aXf0RP3Jwm54;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 379
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$8N9QzwCZtgmZUjq6pvlLfF_iM0s;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$8N9QzwCZtgmZUjq6pvlLfF_iM0s;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 382
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$p5MPDBwOEE6_HeM3qKgv2fGBZTo;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$p5MPDBwOEE6_HeM3qKgv2fGBZTo;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 376
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertIslaState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$Bp0ocjugrm34v2_Zx0BjMw5WqoM;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$Bp0ocjugrm34v2_Zx0BjMw5WqoM;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 326
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$WI9Wae-0ZOpWEl4aEOqiS5jhtaM;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$WI9Wae-0ZOpWEl4aEOqiS5jhtaM;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 361
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EDX2ONrOMyFVyS8aTGcYj-8z44M;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EDX2ONrOMyFVyS8aTGcYj-8z44M;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 415
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$xgXBL8RiLDiwYfECEzEcEtaDtgA;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$xgXBL8RiLDiwYfECEzEcEtaDtgA;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 412
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$hF1y1Iq-7nnvzHO_Qe6BfuvDaM4;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$hF1y1Iq-7nnvzHO_Qe6BfuvDaM4;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 370
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$UtgqOiQFkqJmOWkR0x3ORjqA4eU;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$UtgqOiQFkqJmOWkR0x3ORjqA4eU;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 391
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SuVnY-7fBU5peBXv2Qx1e63TNks;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SuVnY-7fBU5peBXv2Qx1e63TNks;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 397
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$h1crkkd5m_l0on9NY83XSjg4fbs;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$h1crkkd5m_l0on9NY83XSjg4fbs;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 400
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$fPXJnC101kWOO8bhRsox2KezfDg;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$fPXJnC101kWOO8bhRsox2KezfDg;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 388
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertAccStateForMirror(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$-D6X5rksKHXEXXcMnU9GZyELmhI;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$-D6X5rksKHXEXXcMnU9GZyELmhI;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 403
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$LE4bps2_KF5aaveoLEeZ4Dbf9U8;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$LE4bps2_KF5aaveoLEeZ4Dbf9U8;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 354
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$okwKbUqCqtDTBmpmzhRtwZvrx2c;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$okwKbUqCqtDTBmpmzhRtwZvrx2c;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 351
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertApaState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$RmpY4bwPYZiv3qG_SShWLysNsQg;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$RmpY4bwPYZiv3qG_SShWLysNsQg;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 358
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$DHknXvW8U4Eh9_spgXgOlP1WzSU;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$DHknXvW8U4Eh9_spgXgOlP1WzSU;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 394
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertNgpState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$7sLr2iOebHKujhBpCmg7gu87NwU;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$7sLr2iOebHKujhBpCmg7gu87NwU;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 364
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLccState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$rCotx7YN3eSrSMvJl7EsAMtmls8;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$rCotx7YN3eSrSMvJl7EsAMtmls8;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 367
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertIslaState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$Bp0ocjugrm34v2_Zx0BjMw5WqoM;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$Bp0ocjugrm34v2_Zx0BjMw5WqoM;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 385
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLcaState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$oiDnkgTtDegHsU11ifY61jsgjkA;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$oiDnkgTtDegHsU11ifY61jsgjkA;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 335
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertDowState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$32IUIb065A8inUzi36nnZBxSdT4;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$32IUIb065A8inUzi36nnZBxSdT4;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 314
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertRcwState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ZiZ4byys5kHJKBIWTPV5ZEth_38;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ZiZ4byys5kHJKBIWTPV5ZEth_38;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 320
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertRctaState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$sYIaL9_uF6nTX3VlcePzkVnxIDk;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$sYIaL9_uF6nTX3VlcePzkVnxIDk;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 329
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertBsdState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SJaqDoDJajUHJ9o0oDquC1S1jTI;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SJaqDoDJajUHJ9o0oDquC1S1jTI;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 348
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertIhbState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$qEFhujhW7jcZXU69o9ACJ7V-4_s;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$qEFhujhW7jcZXU69o9ACJ7V-4_s;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 311
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertLdwState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$9-rsAFKtqP2DHPloHjGvjbEdfPc;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$9-rsAFKtqP2DHPloHjGvjbEdfPc;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 305
    :sswitch_28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertFcwState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$uwYVomPz7i430yscNAT7uHGD1dk;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$uwYVomPz7i430yscNAT7uHGD1dk;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21402601 -> :sswitch_28
        0x21402602 -> :sswitch_27
        0x21402603 -> :sswitch_26
        0x21402605 -> :sswitch_25
        0x21402606 -> :sswitch_24
        0x21402607 -> :sswitch_23
        0x21402608 -> :sswitch_22
        0x21402609 -> :sswitch_21
        0x2140260d -> :sswitch_20
        0x2140260e -> :sswitch_1f
        0x2140260f -> :sswitch_1e
        0x21402617 -> :sswitch_1d
        0x21402618 -> :sswitch_1c
        0x2140261a -> :sswitch_1b
        0x2140261b -> :sswitch_1a
        0x21402634 -> :sswitch_19
        0x21402650 -> :sswitch_18
        0x2140269a -> :sswitch_17
        0x2140269e -> :sswitch_16
        0x2140269f -> :sswitch_15
        0x214026a9 -> :sswitch_14
        0x214026aa -> :sswitch_13
        0x214026d1 -> :sswitch_12
        0x214026d3 -> :sswitch_11
        0x214026da -> :sswitch_10
        0x214026dc -> :sswitch_f
        0x214026dd -> :sswitch_e
        0x214026e1 -> :sswitch_d
        0x214026eb -> :sswitch_c
        0x214026f4 -> :sswitch_b
        0x214026f5 -> :sswitch_a
        0x214026fc -> :sswitch_9
        0x214026fd -> :sswitch_8
        0x214026ff -> :sswitch_7
        0x21402702 -> :sswitch_6
        0x21402703 -> :sswitch_5
        0x21402704 -> :sswitch_4
        0x214126ef -> :sswitch_3
        0x214126f0 -> :sswitch_2
        0x214126f1 -> :sswitch_1
        0x214126f2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "xp_scu"

    .line 133
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mPropertyIds:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p1, v0, v1}, Landroid/car/hardware/scu/CarScuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ScuController"

    .line 138
    invoke-static {v2, v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public isAutoPilotNeedTts()Z
    .locals 3

    .line 1310
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AutoPilotTts"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isFirstOpenXngpSw()Z
    .locals 1

    .line 1774
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isFirstOpenXngpSw()Z

    move-result v0

    return v0
.end method

.method public isLccVideoWatched()Z
    .locals 1

    .line 1729
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isLccVideoWatched()Z

    move-result v0

    return v0

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsLccVideoWatched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMemParkVideoWatched()Z
    .locals 1

    .line 1749
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isMemParkVideoWatched()Z

    move-result v0

    return v0

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMemParkVideoWatched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isXpuXpilotActivated()Z
    .locals 2

    .line 901
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->getXpuXpilotState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$getAccState$26$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 804
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getAccStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getAccStateForMirror$27$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 811
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getAccStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getAlcState$35$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 875
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLaneChangeAssist()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getAutoParkSw$50$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1198
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getAutoParkSwitch()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getBsdState$16$ScuController(Ljava/lang/Void;)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLeftRightBlindSpotDetectionSwitchStatus()[I

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getBsdState$17$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getBlindAreaDetectionWarning()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDDAWStatus$71$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1467
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getScuDsmDdawStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDowState$19$ScuController(Ljava/lang/Void;)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLeftRightDoorOpenWarningSwitchStatus()[I

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDowState$20$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 750
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDoorOpenWarning()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDsmSwStatus$64$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1408
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDsmStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDsmTiredDistractionManualSw$68$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1442
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDsmTiredDistractionManualStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDsmTiredDistractionSensitivity$69$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1451
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDsmTiredDistractionSen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getDsmTiredDistractionStatus$66$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1426
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDsmTiredDistractionStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getElkState$15$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 639
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getElkSwitchState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getFcwState$2$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getFrontCollisionSecurity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getIhbState$22$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getFarLampAutoSwitch()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getIslaConfirmMode$33$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 857
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getSpeedLimitDriverConfirmStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getIslaSpdRange$31$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 839
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getSpeedLimitRange()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getIslaState$30$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 832
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getIntelligentSpeedLimit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getKeyParkSw$55$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getKeyRemoteSmButton()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLccState$24$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 778
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLaneAlignmentAssist()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLccWorkSt$28$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 818
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getScuModeIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLdwState$10$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 607
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getScuLdwLkaSwitchStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLdwState$11$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 611
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLaneDepartureWarning()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLkaState$13$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 628
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getScuLkaSwitchState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getLkaState$14$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 630
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getScuLkaState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getMemoryParkSw$53$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1244
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getParkByMemorySwSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpModeStatus$49$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1169
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getNgpModeStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpState$38$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1056
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getHighSpeedNavigation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpTipsMode$40$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1081
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getNgpTipsWindowsSwSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpTruckOffsetSw$44$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1124
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getNgpAvoidTruckSwSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getNgpTruckOffsetSw$45$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1126
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getNgpPreferFastLaneSwSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getPhoneParkSw$57$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1283
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getPhoneSmButton()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getRctaState$7$ScuController(Ljava/lang/Void;)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLeftRightRearCrossTrafficAlertStatus()[I

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getRctaState$8$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getRearCrossEmergencyWarning()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getRcwState$4$ScuController(Ljava/lang/Void;)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 563
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getLeftRightRearCollisionSwitchStatus()[I

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getRcwState$5$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 567
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getRearCollisionSecurity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getScuRearMirrorControlState$59$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1297
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getScuRearMirrorControlState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getSdcLeftRadarDisLevel$73$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1495
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDoorsLRadarDisplayLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getSdcRightRadarDisLevel$74$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1505
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getDoorsRRadarDisplayLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getSlaState$29$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getSpeedLimitControlSystemState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getXpuXpilotState$37$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 906
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p1}, Landroid/car/hardware/scu/CarScuManager;->getXpilot3St()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$handleCarEventsUpdate$1$ScuController(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public synthetic lambda$new$0$ScuController()V
    .locals 5

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSupportXPilotSafeExam"

    .line 89
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ScuController"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "lcc_safe_exam"

    .line 90
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLccSafeExamResult: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "lcc_video_watched"

    .line 94
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsLccVideoWatched:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "mem_park_video_watched"

    .line 98
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMemParkVideoWatched:Ljava/lang/Boolean;

    const-string v1, "ngp_safe_exam"

    .line 100
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    const-string v1, "mem_park_safe_exam"

    .line 102
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    const-string v1, "apa_safe_exam"

    .line 104
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    const-string/jumbo v1, "super_vpa_safe_exam"

    .line 106
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    const-string/jumbo v1, "super_lcc_safe_exam"

    .line 108
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNgpSafeExamResult: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMemParkSafeExamResult: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApaSafeExamResult: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSuperVpaSafeExamResult: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSuperLccSafeExamResult: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isla_sw"

    .line 116
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIslaMode:Ljava/lang/Integer;

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->registerContentObserver()V

    return-void
.end method

.method public synthetic lambda$null$47$ScuController(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SGSYhsvEDjRmnSvM3oPVceCdNDo;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$SGSYhsvEDjRmnSvM3oPVceCdNDo;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setAlcState$36$ScuController(ZZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "needSave",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 889
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p3, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p3, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneChangeAssist(I)V

    .line 890
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p3, :cond_0

    .line 891
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p3, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAlcSw(ZZ)V

    goto :goto_0

    .line 893
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "set_alc_sw"

    invoke-static {p2, p3, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$setAutoParkSw$51$ScuController(ZLjava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1207
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setAutoParkSwitch(I)V

    .line 1208
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 1209
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAutoParkSw(Z)V

    goto :goto_0

    .line 1211
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "set_auto_park_sw"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$setBsdState$18$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 739
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setBlindAreaDetectionWarning(I)V

    return-void
.end method

.method public synthetic lambda$setDDAWSwitchStatus$72$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1475
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setScuDsmDdawStatus(I)I

    return-void
.end method

.method public synthetic lambda$setDistractionSwitch$60$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1305
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDistractionSwitch(I)V

    return-void
.end method

.method public synthetic lambda$setDowSw$21$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDoorOpenWarning(I)V

    return-void
.end method

.method public synthetic lambda$setDsmSw$63$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "on",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1400
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDsmStatus(I)V

    return-void
.end method

.method public synthetic lambda$setDsmTiredDistractionManualSw$67$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1435
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDsmTiredDistractionManualStatus(I)I

    return-void
.end method

.method public synthetic lambda$setDsmTiredDistractionSensitivity$70$ScuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "state",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1459
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDsmTiredDistractionSen(I)V

    return-void
.end method

.method public synthetic lambda$setDsmTiredDistractionStatus$65$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "on",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1417
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDsmTiredDistractionStatus(I)V

    return-void
.end method

.method public synthetic lambda$setFcwState$3$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 530
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setFrontCollisionSecurity(I)V

    return-void
.end method

.method public synthetic lambda$setIhbState$23$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 773
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setFarLampAutoSwitch(I)V

    return-void
.end method

.method public synthetic lambda$setImageRetentionEnable$62$ScuController(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "on"
        }
    .end annotation

    .line 1375
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.auto_park_hold"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$3nC7ABQlX1Oq1c2j7FFHOAEbh1c;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$3nC7ABQlX1Oq1c2j7FFHOAEbh1c;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setIslaConfirmMode$34$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 866
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setSpeedLimitDriverConfirmSwitch(I)V

    .line 867
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    const-string p2, "isNewScuArch"

    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 868
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setIslaConfirmMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setIslaSpdRange$32$ScuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "range",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setSpeedLimitRange(I)V

    .line 849
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    const-string p2, "isNewScuArch"

    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 850
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setIslaSpdRange(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setKeyParkSw$56$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1277
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setKeyRemoteSmButton(I)V

    return-void
.end method

.method public synthetic lambda$setLccState$25$ScuController(ZZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "needSave",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 792
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p3, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p3, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneAlignmentAssist(I)V

    .line 793
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p3, :cond_0

    .line 794
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p3, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccSw(ZZ)V

    goto :goto_0

    .line 796
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "set_lcc_sw"

    invoke-static {p2, p3, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$setLdwState$12$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneDepartureWarning(I)V

    return-void
.end method

.method public synthetic lambda$setMemoryParkSw$54$ScuController(ZLjava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1256
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/car/hardware/scu/CarScuManager;->setParkByMemorySw(I)V

    .line 1257
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    .line 1258
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSw(Z)V

    goto :goto_1

    .line 1260
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "set_mem_park_sw"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method public synthetic lambda$setNgpEnable$39$ScuController(ZLjava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "isSupportXpuDomainCtrl"

    .line 1065
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1066
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setHighSpeedNavgation(I)V

    goto :goto_1

    .line 1068
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p2, v0}, Landroid/car/hardware/scu/CarScuManager;->setNgpAvoidTruckSw(I)V

    .line 1070
    :goto_1
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz p2, :cond_2

    .line 1071
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSw(Z)V

    goto :goto_2

    .line 1073
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "set_ngp_sw"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_2
    return-void
.end method

.method public synthetic lambda$setNgpRemindMode$48$ScuController(ILjava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mode",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1158
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setNgpRemindMode(I)V

    .line 1160
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1161
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->convertRemindModeValue(I)I

    move-result v0

    const-string v1, "ngp_broadcast_type"

    .line 1160
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1162
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpRemindMode(I)V

    .line 1163
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$zBjahiNqAdj6AbT4Ob4L8kbSDZU;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$zBjahiNqAdj6AbT4Ob4L8kbSDZU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$setNgpTipsMode$41$ScuController(Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1091
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/car/hardware/scu/CarScuManager;->setNgpTipsWindowsSw(I)V

    return-void
.end method

.method public synthetic lambda$setNgpTipsMode$42$ScuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "index",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1093
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setNgpTipsWindowsSw(I)V

    return-void
.end method

.method public synthetic lambda$setNgpTruckOffsetSw$46$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "isSupportXpuDomainCtrl"

    .line 1136
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1137
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setNgpAvoidTruckSw(I)V

    goto :goto_0

    .line 1139
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setNgpPreferFastLaneSw(I)V

    .line 1141
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpTruckOffsetSw(Z)V

    return-void
.end method

.method public synthetic lambda$setNgpVoiceChangeLane$43$ScuController(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$W4IejUTp3Y-bzDr1Bj0StjBdzRE;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$W4IejUTp3Y-bzDr1Bj0StjBdzRE;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setParkSoundEffect$61$ScuController(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 1342
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.auto_park_warning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$43EQwbRW0286V6RiRA8fPWnRPrs;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$43EQwbRW0286V6RiRA8fPWnRPrs;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public synthetic lambda$setPhoneParkSw$58$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1291
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setPhoneSmButton(I)V

    return-void
.end method

.method public synthetic lambda$setRctaState$9$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setRearCrossEmergencyWarning(I)V

    return-void
.end method

.method public synthetic lambda$setRcwState$6$ScuController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enable",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setRearCollisionSecurity(I)V

    return-void
.end method

.method public synthetic lambda$setScuOtaTagStatus$75$ScuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "tag",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1514
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setScuOtaTagStatus(I)V

    return-void
.end method

.method public synthetic lambda$setSpecialSasMode$76$ScuController(ILjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mode",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1769
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setIntelligentSpeedLimit(I)V

    return-void
.end method

.method public synthetic lambda$setWogSw$52$ScuController(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "on"
        }
    .end annotation

    .line 1223
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$RPPYgKFCz5asRyyGDfPVP_t_H-Y;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$RPPYgKFCz5asRyyGDfPVP_t_H-Y;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->handleSignal(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method protected registerContentObserver()V
    .locals 4

    .line 1783
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1818
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ngp_safe_exam_notify"

    .line 1819
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1818
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1821
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lcc_safe_exam_notify"

    .line 1822
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1821
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1824
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mem_park_safe_exam_notify"

    .line 1825
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1824
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1827
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "apa_safe_exam_notify"

    .line 1828
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1827
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1829
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "super_vpa_safe_exam_notify"

    .line 1830
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1829
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1831
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "super_lcc_safe_exam_notify"

    .line 1832
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1831
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAlcState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 882
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setAlcState(ZZ)V

    return-void
.end method

.method public setAlcState(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 888
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$FP1ml5jwyEqJnsRP_pjvBpAxFBk;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$FP1ml5jwyEqJnsRP_pjvBpAxFBk;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;ZZ)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setApaSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 1572
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1574
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setApaSafeExamResult(Z)V

    goto :goto_0

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setApaSafeExamResult(Ljava/lang/String;Z)V

    .line 1579
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "apa_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1582
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setApaSafeExamResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mApaSafeExamResult:Ljava/lang/Boolean;

    .line 1586
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "apa_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method public setAutoParkSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoParkSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1206
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$C31iPlwTCL6DNkO0USzVX2ws1a4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$C31iPlwTCL6DNkO0USzVX2ws1a4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setAutoPilotNeedTts(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1316
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AutoPilotTts"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setBsdState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBsdState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$etK8yGWlCOIh-ghhWagLXuCrbDw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$etK8yGWlCOIh-ghhWagLXuCrbDw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBsdSw(Z)V

    return-void
.end method

.method public setDDAWSwitchStatus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDDAWSwitchStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1475
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$79ZjIar4jbgWN3rWk55GPusvKcY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$79ZjIar4jbgWN3rWk55GPusvKcY;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setDistractionSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDistractionSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1305
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$6SqNhciJVii64sHwqOJgwYzhvZU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$6SqNhciJVii64sHwqOJgwYzhvZU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setDowSw(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSp"
        }
    .end annotation

    .line 758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDowSw: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScuController"

    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$meIDpM0gVUIvt-UrE50OfOnrAOU;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$meIDpM0gVUIvt-UrE50OfOnrAOU;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 760
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDowSw(Z)V

    return-void
.end method

.method public setDrivingSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1670
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrivingSafeExamResult(Z)V

    goto :goto_0

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrivingSafeExamResult(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDrivingWithLidarSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1704
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrivingWithLidarSafeExamResult(Z)V

    goto :goto_0

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrivingWithLidarSafeExamResult(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDsmSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDsmSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportDsmCamera"

    .line 1399
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Kh5nmSHbGrvSM0b7p6qos0jyrak;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Kh5nmSHbGrvSM0b7p6qos0jyrak;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    :cond_0
    return-void
.end method

.method public setDsmTiredDistractionManualSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportDsmCamera"

    .line 1434
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$RIerfUP_FgG0SO8YdGZUUB9EnY4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$RIerfUP_FgG0SO8YdGZUUB9EnY4;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDsmTiredDistractionManualSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDsmTiredDistractionSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportDsmCamera"

    .line 1458
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ZNKpAGeNfa6tTyoibuLdUHKPrXA;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ZNKpAGeNfa6tTyoibuLdUHKPrXA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDsmTiredSenState(I)V

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDsmTiredDistractionSensitivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDsmTiredDistractionStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    const-string v0, "isSupportDsmCamera"

    .line 1416
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$c0NfCsn9gV3q599dBhn9UTgX2Ac;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$c0NfCsn9gV3q599dBhn9UTgX2Ac;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDsmTiredDistractionStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFcwSensitivity(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFcwSensitivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->SetFcwAebSensitivitySwitchStatus(I)V

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setFcwSenState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFcwSensitivity failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setFcwState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFcwState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 530
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$NezU8jUSSAj8PAKyl9LZnG-q_ps;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$NezU8jUSSAj8PAKyl9LZnG-q_ps;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setFirstOpenXngpSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1779
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setFirstOpenXngpSw(Z)V

    return-void
.end method

.method public setFreeNgpSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1653
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setFreeNgpSafeExamResult(Z)V

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setFreeNgpSafeExamResult(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setFreeNgpUidResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 1036
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setFreeNgpUidResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1039
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSuperVpaResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mFreeNgpUidResult:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public setIhbState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIhbState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ZyVJRUSYjrfUtQGSlRKLMsCyb5k;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ZyVJRUSYjrfUtQGSlRKLMsCyb5k;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setImageRetentionEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImageRetentionEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setImageRetentionSw(Z)V

    .line 1374
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ru7vUb83_fYky3xQ5D2Au8mUpeM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ru7vUb83_fYky3xQ5D2Au8mUpeM;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 1379
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIslaConfirmMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIslaConfirmMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 865
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$qulKVubRS-6Lt0U573ALjNdvYSs;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$qulKVubRS-6Lt0U573ALjNdvYSs;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setIslaSpdRange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIslaSpdRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 847
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$aC_eyGBpv22_ZzIyxyK33boQ_30;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$aC_eyGBpv22_ZzIyxyK33boQ_30;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setKeyParkSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyParkSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1277
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$KsGhyQaSQi-HEt8gOwOoqQme3Ls;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$KsGhyQaSQi-HEt8gOwOoqQme3Ls;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1278
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setKeyParkSw(Z)V

    return-void
.end method

.method public setLccSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 1535
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1537
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccSafeExamResult(Z)V

    goto :goto_0

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccSafeExamResult(Ljava/lang/String;Z)V

    .line 1542
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lcc_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1545
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setLccSafeExamResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mLccSafeExamResult:Ljava/lang/Boolean;

    .line 1549
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lcc_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method public setLccState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 785
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setLccState(ZZ)V

    return-void
.end method

.method public setLccState(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLccState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Jxn-664Iq4a45O4L269JugCv1wQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;ZZ)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setLccVideoWatched(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation

    .line 1737
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccVideoWatched(Z)V

    goto :goto_0

    .line 1740
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsLccVideoWatched:Ljava/lang/Boolean;

    .line 1742
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcc_video_watched"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setLdwState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLdwState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 620
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$pBwvlyUYPJWczP-jibSQsd_q_mc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$pBwvlyUYPJWczP-jibSQsd_q_mc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLdwSw(Z)V

    return-void
.end method

.method public setLssMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 709
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ScuController"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "setLssMode: not support LSS"

    .line 710
    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLssMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneSupportSystemStateAndWarning(I)V

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLssState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setMemParkSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 994
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSafeExamResult(Ljava/lang/String;Z)V

    .line 997
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mem_park_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 1000
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMemParkResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mMemParkSafeExamResult:Ljava/lang/Boolean;

    .line 1002
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mem_park_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setMemParkSafeExamResultV2(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1636
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSafeExamResultV2(Z)V

    goto :goto_0

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSafeExamResultV2(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setMemParkVideoWatched(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation

    .line 1757
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkVideoWatched(Z)V

    goto :goto_0

    .line 1760
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMemParkVideoWatched:Ljava/lang/Boolean;

    .line 1761
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mem_park_video_watched"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setMemoryParkSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMemoryParkSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportMemPark"

    .line 1254
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$v-yX1ua9IRsIdDJxPIZsT9G3l0o;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$v-yX1ua9IRsIdDJxPIZsT9G3l0o;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    :cond_0
    return-void
.end method

.method public setNgpEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Rmzkh4paD3GeMUtLnEWbtuzUyCI;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Rmzkh4paD3GeMUtLnEWbtuzUyCI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setNgpRemindMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpRemindMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$mbyjVaaV3U3oPZutK18gzuNunZI;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$mbyjVaaV3U3oPZutK18gzuNunZI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setNgpSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 979
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSafeExamResult(Ljava/lang/String;Z)V

    .line 982
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ngp_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 985
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNgpSafeExamResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mNgpSafeExamResult:Ljava/lang/Boolean;

    .line 987
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ngp_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setNgpSafeExamResultV2(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1602
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSafeExamResultV2(Z)V

    goto :goto_0

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSafeExamResultV2(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setNgpTipsMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpTipsMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "isSupportCNgp"

    .line 1089
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Zchm4MolgI57ig5ryib0GkG7YnQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Zchm4MolgI57ig5ryib0GkG7YnQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    goto :goto_0

    .line 1093
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nB0eY4fYYrTGh-Vyt-J64I1_-Xc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1095
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpTipsMode(I)V

    return-void
.end method

.method public setNgpTruckOffsetSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpTruckOffsetSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$tHJpA8mpClj4aY8rtYfmojEyKgI;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$tHJpA8mpClj4aY8rtYfmojEyKgI;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setNgpVoiceChangeLane(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpVoiceChangeLane: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1113
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ngp_voice_lc"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpVoiceChangeLaneSw(Z)V

    const/4 v0, 0x0

    .line 1116
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setNgpWithLidarSafeExamResultV2(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1619
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpWithLidarSafeExamResultV2(Z)V

    goto :goto_0

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpWithLidarSafeExamResultV2(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setOverseasElkMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverseasElkMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setLaneSupportSystemStateAndWarning(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLssMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setOverseasLkaMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverseasLkaMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScuController"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/scu/CarScuManager;->setScuLdwLkaSwitchStatus(I)V

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setOverseasLkaState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setParkSoundEffect(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setParkSoundEffect effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1340
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setHintModeState(I)V

    .line 1341
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nV3jUuzsOEGTBtMvQQN194r23Ss;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$nV3jUuzsOEGTBtMvQQN194r23Ss;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 1346
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setParkingSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1687
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkingSafeExamResult(Z)V

    goto :goto_0

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkingSafeExamResult(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setParkingWithLidarSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1721
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkingWithLidarSafeExamResult(Z)V

    goto :goto_0

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkingWithLidarSafeExamResult(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPhoneParkSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneParkSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1291
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ya-C0esDa8QEBB1fiC26N8XGNsE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$ya-C0esDa8QEBB1fiC26N8XGNsE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 1292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setEnhancedParkSw(Z)V

    return-void
.end method

.method public setRctaState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRctaState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 599
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$-D6bRltZL-sWi6VJvMWuv_NAouM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$-D6bRltZL-sWi6VJvMWuv_NAouM;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRctaSw(Z)V

    return-void
.end method

.method public setRcwState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportRcw"

    .line 575
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRcwState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ScuController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 577
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$dGbgfxzvgGw97-t8XnXaXxqeu-Q;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$dGbgfxzvgGw97-t8XnXaXxqeu-Q;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRcwSw(Z)V

    :cond_0
    return-void
.end method

.method public setRemoteCameraSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1480
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_camera_sw"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setScuOtaTagStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScuOtaTagStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1514
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$6nWkpdiwpM91mv-0Jf643-i-Yfc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$6nWkpdiwpM91mv-0Jf643-i-Yfc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setSpecialSasMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpecialSasMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$A7bieYToile50MqGuqsDoK3KonY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$A7bieYToile50MqGuqsDoK3KonY;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    return-void
.end method

.method public setSuperLccSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 1022
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSuperLccSafeExamResult(Ljava/lang/String;Z)V

    .line 1024
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "super_lcc_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 1027
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSuperVpaResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperLccSafeExamResult:Ljava/lang/Boolean;

    .line 1029
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "super_lcc_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setSuperVpaSafeExamResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 1009
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSuperVpaSafeExamResult(Ljava/lang/String;Z)V

    .line 1011
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "super_vpa_safe_exam_notify"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 1014
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSuperVpaResult: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mSuperVpaSafeExamResult:Ljava/lang/Boolean;

    .line 1016
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "super_vpa_safe_exam"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setTtsBroadcastType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1322
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_broadcast_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTtsBroadcastType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWogSw(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWogSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1221
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "persist.sys.welcome_out_of_garage"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWogSw(Z)V

    .line 1223
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$3GjU50GNyO8zrplQic0aU4dZ3Bw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$3GjU50GNyO8zrplQic0aU4dZ3Bw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 1225
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
