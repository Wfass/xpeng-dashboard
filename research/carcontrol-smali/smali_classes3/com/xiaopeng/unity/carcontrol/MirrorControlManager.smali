.class public Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;
.super Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager;
.source "MirrorControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IMirrorControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;,
        Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager<",
        "Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IMirrorControlManager;"
    }
.end annotation


# instance fields
.field private final KEYS:[I

.field private final mKeyListener:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 43
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->KEYS:[I

    .line 47
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mKeyListener:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x4c6
        0x4c7
        0x4ca
        0x4cb
        0x3e8
        0x3e9
        0x3f3
        0x3f4
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private convertFoldState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private convertMirrorOutputState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldOutputState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;
    .locals 1

    .line 54
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$Holder;->access$100()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelControl()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->cancelAllControlMirror()V

    return-void
.end method

.method public dismissCmsMirrorControlPanel()V
    .locals 2

    .line 380
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CMS_MIRROR_CONTROL_PANEL"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismissMirrorControlPanel()V
    .locals 2

    .line 368
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enterDrvLumbarScene()V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->enterDrvLumbarScene()V

    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 552
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v0, "key_mirror"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->registerBusiness([Ljava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->enterScene()V

    return-void
.end method

.method public exitDrvLumbarScene()V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->exitDrvLumbarScene()V

    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 560
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->cancelPendingTask()V

    .line 561
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v0, "key_mirror"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->unregisterBusiness([Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->exitScene()V

    return-void
.end method

.method public foldMirror(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    return-void
.end method

.method public getCmsAutoBrightSw()Z
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsAutoBrightSw()Z

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsAutoBrightSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCmsBright()I
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsBright()I

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCmsHighSpdAssistSw()Z
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsHighSpdAssistSw()Z

    move-result v0

    .line 712
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsHighSpdAssistSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCmsLowSpdAssistSw()Z
    .locals 4

    .line 724
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsLowSpdAssistSw()Z

    move-result v0

    .line 725
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsLowSpdAssistSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCmsObjectRecognizeSw()Z
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    const-string v1, "getCmsViewRecognizeSw: "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsObjectRecognizeSw()Z

    move-result v0

    return v0
.end method

.method public getCmsReverseAssistSw()Z
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsReverseAssistSw()Z

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsReverseAssistSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCmsTurnAssistSw()Z
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsTurnAssistSw()Z

    move-result v0

    .line 699
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsTurnAssistSw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCmsViewAngle()I
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsViewAngle()I

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmsViewAngle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getImsAutoVisionSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_reverse_auto_vision_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsAutoVisionSw()Z

    move-result v0

    return v0
.end method

.method public getImsBrightLevel()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_brightness:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevel()I

    move-result v0

    return v0
.end method

.method public getImsHighSpeedAutoVisionSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_hight_speed_auto_vision_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsHighSpeedAutoVisionSw()Z

    move-result v0

    return v0
.end method

.method public getImsMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v0

    return v0
.end method

.method public getImsSystemSt()I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsSystemSt()I

    move-result v0

    return v0
.end method

.method public getLMReverseSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_reverse_auto_tilt_left_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLMReverseSw()Z

    move-result v0

    return v0
.end method

.method public getLeftRearMirrorPosStatus()I
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLeftRearMirrorPosStatus()I

    move-result v0

    return v0
.end method

.method public getMirrorFoldOutputState()I
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldOutputState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->convertMirrorOutputState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)I

    move-result v0

    return v0
.end method

.method public getMirrorFoldState()I
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->convertFoldState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)I

    move-result v0

    return v0
.end method

.method public getRMReverseSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_reverse_auto_tilt_right_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRMReverseSw()Z

    move-result v0

    return v0
.end method

.method public getRightRearMirrorPosStatus()I
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRightRearMirrorPosStatus()I

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 60
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 62
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 63
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isAccActive()Z
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCruiseActive()Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v0

    return v0
.end method

.method public isMirrorAutoFoldEnable()Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->isMirrorAutoFoldEnable()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$MirrorControlManager(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onAccActive(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$1$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isActive"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCruiseActive(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsLowSpdSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsAutoBrightSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$MirrorControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "brightness"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsBrightChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$MirrorControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "angle"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsViewAngleChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$MirrorControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onImsModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$MirrorControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onImsBrightLevelChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$MirrorControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onLeftMirrorPosStChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$MirrorControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onRightMirrorPosStChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$18$MirrorControlManager(Ljava/lang/Boolean;)V
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

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onMirrorAutoFoldEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isReversingCar"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onSlipping(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$MirrorControlManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mirrorReverseMode"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onLMReverseSwChanged(Z)V

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;->Both:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-interface {v0, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onRMReverseSwChanged(Z)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$observeData$4$MirrorControlManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->convertFoldState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onFoldStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$MirrorControlManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->convertMirrorOutputState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onFoldOutputStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsObjectRecognizeSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsReverseSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsTurnSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$MirrorControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlListener;->onCmsHighSpdSwChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccForMirrorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$TW2sfXrk9ELSt-2mBnAKhXDkJx8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$TW2sfXrk9ELSt-2mBnAKhXDkJx8;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCruiseData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$c-hZE2I44rpK4OfpBj-00DBA5Ss;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$c-hZE2I44rpK4OfpBj-00DBA5Ss;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getScuOperationTipsData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$q0KRN6CmrRPLafbt-ZybY5fSnmQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$q0KRN6CmrRPLafbt-ZybY5fSnmQ;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportMirrorFold"

    .line 455
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorReverseData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$bddS91t8Rjs5ePY-5AEzDjl6Tvw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$bddS91t8Rjs5ePY-5AEzDjl6Tvw;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$x2QnneK6bOGFVi02ltLHBORzZn0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$x2QnneK6bOGFVi02ltLHBORzZn0;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportFramelessMirror"

    .line 469
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorOutputData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$lDT97qSDt72nRFAsbNfHtNdh93k;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$lDT97qSDt72nRFAsbNfHtNdh93k;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v1, "isSupportCms"

    .line 476
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsObjectRecognizeSwData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$KmVAru0Hz-6OexS2d7UBxmDPyvI;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$KmVAru0Hz-6OexS2d7UBxmDPyvI;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 481
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsReverseSwData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$lVIm53wFwoh9w0dH_-At8f-vwdM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$lVIm53wFwoh9w0dH_-At8f-vwdM;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 486
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsTurnSwData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$GrQG1jllKCnk9Uk--KmR3OOvtuY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$GrQG1jllKCnk9Uk--KmR3OOvtuY;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 491
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsHighSpdSwData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Fhgzwf-5Zg44-uLxjLb7aM4NPNo;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Fhgzwf-5Zg44-uLxjLb7aM4NPNo;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 496
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsLowSpdSwData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$zr_njQ_R_YowDVgkcAL6WKwiP_4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$zr_njQ_R_YowDVgkcAL6WKwiP_4;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 501
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsAutoBrightSwData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Q_PcLhQakTCkyy1iHsuBz9kujew;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Q_PcLhQakTCkyy1iHsuBz9kujew;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 506
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsBrightData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Ai2aaxQJRH5UpR_GHP4JaNxiONM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Ai2aaxQJRH5UpR_GHP4JaNxiONM;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 511
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsViewAngleData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$H5_UEnRMKExEMcOkgdjQZFJY25U;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$H5_UEnRMKExEMcOkgdjQZFJY25U;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    const-string v1, "isSupportIms"

    .line 518
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 519
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsModeData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$pWfXNdVYX3vx0Cb9xkXOhp2rg34;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$pWfXNdVYX3vx0Cb9xkXOhp2rg34;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 524
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$P_VivfaleQRqEm6bKmDySkOu3jQ;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$P_VivfaleQRqEm6bKmDySkOu3jQ;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 530
    :cond_3
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 531
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLeftMirrorPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$pWxqzR83rMCUTgMgIJ2FOjJlxxc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$pWxqzR83rMCUTgMgIJ2FOjJlxxc;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRightMirrorPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Evk_zhzAZCe65gZ1n4FIrxoGi1U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$Evk_zhzAZCe65gZ1n4FIrxoGi1U;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorAutoFoldEnable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$txwT7VnCuP8cYQlnvueOz-FUDFw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$txwT7VnCuP8cYQlnvueOz-FUDFw;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onImsControl(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keycode",
            "action"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKeyIms(II)Z

    move-result p1

    return p1
.end method

.method public onKey(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    return-void
.end method

.method public onKeyIms(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "action"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKeyIms(II)Z

    return-void
.end method

.method public onMirrorControl(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keycode",
            "action"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "enterDrvLumbarScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setDistractionSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getImsAutoVisionSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setImsBrightLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setCmsObjectRecognizeSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "onImsControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getMirrorFoldState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "setCmsHighSpdAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "setImsHighSpeedAutoVisionSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "setLMReverseSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getMirrorFoldOutputState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "showCmsMirrorControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "setCmsAutoBrightSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "getRMReverseSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "setCmsTurnAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "setCmsBright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "onMirrorControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "setImsMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "getCmsReverseAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "showMirrorControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "getImsSystemSt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "getCmsAutoBrightSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "getLeftRearMirrorPosStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "getCmsLowSpdAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "setCmsViewRecovery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "getCmsTurnAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "exitDrvLumbarScene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "getCmsObjectRecognizeSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "setMirrorAutoFoldEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "getRightRearMirrorPosStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "setCmsLowSpdAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "setCmsViewAngle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "getCmsBright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "setRMReverseSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "getCmsHighSpdAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "showMirrorControlPanelAsSuperPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "setImsAutoModeReq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "getLMReverseSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "setCmsReverseAssistSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "getImsMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "dismissMirrorControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "getImsHighSpeedAutoVisionSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "foldMirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2b
    const-string v0, "setImsAutoVisionSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2c
    const-string v0, "getImsBrightLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2d
    const-string v0, "dismissCmsMirrorControlPanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2e
    const-string v0, "isMirrorAutoFoldEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2f
    const-string v0, "getCmsViewAngle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_0

    :cond_2f
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_30
    const-string v0, "isCruiseActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_0

    :cond_30
    move v3, v1

    goto :goto_0

    :sswitch_31
    const-string v0, "isAccActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_0

    :cond_31
    move v3, v2

    :goto_0
    const-string v0, ","

    packed-switch v3, :pswitch_data_0

    .line 353
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AbstractKeyControlManager;->onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->enterDrvLumbarScene()V

    goto/16 :goto_3

    .line 333
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setDistractionSwitch(Z)V

    goto/16 :goto_3

    .line 315
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsAutoVisionSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 300
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setImsBrightLevel(I)V

    goto/16 :goto_3

    .line 227
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsObjectRecognizeSw(Z)V

    goto/16 :goto_3

    .line 346
    :pswitch_5
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_32
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 347
    :goto_1
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->onImsControl(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 200
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getMirrorFoldState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 245
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsHighSpdAssistSw(Z)V

    goto/16 :goto_3

    .line 312
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setImsHighSpeedAutoVisionSw(Z)V

    goto/16 :goto_3

    .line 209
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setLMReverseSw(Z)V

    goto/16 :goto_3

    .line 203
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getMirrorFoldOutputState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 285
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->showCmsMirrorControlPanel()V

    goto/16 :goto_3

    .line 257
    :pswitch_c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsAutoBrightSw(Z)V

    goto/16 :goto_3

    .line 212
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getRMReverseSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 239
    :pswitch_e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsTurnAssistSw(Z)V

    goto/16 :goto_3

    .line 263
    :pswitch_f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsBright(I)V

    goto/16 :goto_3

    .line 338
    :pswitch_10
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_2

    :cond_33
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 339
    :goto_2
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->onMirrorControl(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    .line 341
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 291
    :pswitch_11
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setImsMode(I)V

    goto/16 :goto_3

    .line 236
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsReverseAssistSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 276
    :pswitch_13
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->showMirrorControlPanel(IZ)V

    goto/16 :goto_3

    .line 306
    :pswitch_14
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsSystemSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 260
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsAutoBrightSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 327
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getLeftRearMirrorPosStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 254
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsLowSpdAssistSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 224
    :pswitch_18
    invoke-virtual {p0, v1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsViewRecovery(Z)V

    goto/16 :goto_3

    .line 242
    :pswitch_19
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsTurnAssistSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 324
    :pswitch_1a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->exitDrvLumbarScene()V

    goto/16 :goto_3

    .line 230
    :pswitch_1b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsObjectRecognizeSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 218
    :pswitch_1c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setMirrorAutoFoldEnable(Z)V

    goto/16 :goto_3

    .line 330
    :pswitch_1d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getRightRearMirrorPosStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 251
    :pswitch_1e
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsLowSpdAssistSw(Z)V

    goto/16 :goto_3

    .line 269
    :pswitch_1f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsViewAngle(I)V

    goto/16 :goto_3

    .line 266
    :pswitch_20
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsBright()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 215
    :pswitch_21
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setRMReverseSw(Z)V

    goto :goto_3

    .line 248
    :pswitch_22
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsHighSpdAssistSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 279
    :pswitch_23
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->showMirrorControlPanel(IZ)V

    goto :goto_3

    .line 297
    :pswitch_24
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setImsAutoModeReq(I)V

    goto :goto_3

    .line 206
    :pswitch_25
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getLMReverseSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 233
    :pswitch_26
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setCmsReverseAssistSw(Z)V

    goto :goto_3

    .line 294
    :pswitch_27
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 282
    :pswitch_28
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->dismissMirrorControlPanel()V

    goto :goto_3

    .line 309
    :pswitch_29
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsHighSpeedAutoVisionSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 197
    :pswitch_2a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->foldMirror(Z)V

    goto :goto_3

    .line 318
    :pswitch_2b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->setImsAutoVisionSw(Z)V

    goto :goto_3

    .line 303
    :pswitch_2c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsBrightLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 288
    :pswitch_2d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->dismissCmsMirrorControlPanel()V

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    .line 221
    :pswitch_2e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->isMirrorAutoFoldEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 272
    :pswitch_2f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getCmsViewAngle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 194
    :pswitch_30
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->isCruiseActive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 191
    :pswitch_31
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->isAccActive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_34

    .line 356
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_34
    const-string p1, ""

    :goto_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7622ff23 -> :sswitch_31
        -0x72a3517b -> :sswitch_30
        -0x6af63fa5 -> :sswitch_2f
        -0x67ccb624 -> :sswitch_2e
        -0x66820b3b -> :sswitch_2d
        -0x5bab81af -> :sswitch_2c
        -0x5b9db818 -> :sswitch_2b
        -0x5ac060e0 -> :sswitch_2a
        -0x56e30379 -> :sswitch_29
        -0x4f5ebfd0 -> :sswitch_28
        -0x4f4afe24 -> :sswitch_27
        -0x4e4674d8 -> :sswitch_26
        -0x4cdffcb1 -> :sswitch_25
        -0x49421b01 -> :sswitch_24
        -0x435b2562 -> :sswitch_23
        -0x3bf7d021 -> :sswitch_22
        -0x391e58b7 -> :sswitch_21
        -0x34b74d13 -> :sswitch_20
        -0x34ad4499 -> :sswitch_1f
        -0x2bc60919 -> :sswitch_1e
        -0x2641fa23 -> :sswitch_1d
        -0x2102d2ec -> :sswitch_1c
        -0x1916eb00 -> :sswitch_1b
        -0x141b9dcd -> :sswitch_1a
        -0xcb95003 -> :sswitch_19
        -0xc25bb7f -> :sswitch_18
        -0x75c158d -> :sswitch_17
        -0x6a8579a -> :sswitch_16
        -0x47f880 -> :sswitch_15
        0x349b0a9 -> :sswitch_14
        0xf8351e3 -> :sswitch_13
        0x1a8e091c -> :sswitch_12
        0x24264f50 -> :sswitch_11
        0x272390ff -> :sswitch_10
        0x279c7361 -> :sswitch_f
        0x2a1d4971 -> :sswitch_e
        0x307c33d5 -> :sswitch_d
        0x368ea0f4 -> :sswitch_c
        0x3f67a232 -> :sswitch_b
        0x49113dda -> :sswitch_a
        0x498576c3 -> :sswitch_9
        0x58e9c593 -> :sswitch_8
        0x5b33b1eb -> :sswitch_7
        0x5bfe6ddb -> :sswitch_6
        0x60772dcd -> :sswitch_5
        0x613c440c -> :sswitch_4
        0x6c4ae65d -> :sswitch_3
        0x6d8bae74 -> :sswitch_2
        0x7c6c6a54 -> :sswitch_1
        0x7c98226d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setCmsAutoBrightSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsAutoBrightSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsAutoBrightSw(Z)V

    return-void
.end method

.method public setCmsBright(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsBright: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsBright(I)V

    return-void
.end method

.method public setCmsHighSpdAssistSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsHighSpdAssistSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsHighSpdAssistSw(Z)V

    return-void
.end method

.method public setCmsLowSpdAssistSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsLowSpdAssistSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsLowSpdAssistSw(Z)V

    return-void
.end method

.method public setCmsObjectRecognizeSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsViewRecognizeSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsObjectRecognizeSw(Z)V

    return-void
.end method

.method public setCmsReverseAssistSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsReverseAssistSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsReverseAssistSw(Z)V

    return-void
.end method

.method public setCmsTurnAssistSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsTurnAssistSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsTurnAssistSw(Z)V

    return-void
.end method

.method public setCmsViewAngle(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsViewAngle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsViewAngle(I)V

    return-void
.end method

.method public setCmsViewRecovery(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsViewRecovery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsViewRecovery(Z)V

    return-void
.end method

.method public setDistractionSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDistractionSwitch(Z)V

    return-void
.end method

.method public setImsAutoModeReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsAutoModeReq(I)V

    return-void
.end method

.method public setImsAutoVisionSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsAutoVisionSw(Z)V

    return-void
.end method

.method public setImsBrightLevel(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_brightness:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsBrightLevel(I)V

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "steam_rear_mirror_control_brightness"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImsHighSpeedAutoVisionSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_hight_speed_auto_vision_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsHighSpeedAutoVisionSw(Z)V

    .line 412
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "steam_rear_mirror_control_hight_speed_auto_vision_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImsMode(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsMode(I)V

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "steam_rear_mirror_control_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLMReverseSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_reverse_auto_tilt_left_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setLMReverseSw(Z)V

    .line 637
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "rear_mirror_control_reverse_auto_tilt_left_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMirrorAutoFoldEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setMirrorAutoFoldEnable(Z)V

    return-void
.end method

.method public setRMReverseSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_reverse_auto_tilt_right_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setRMReverseSw(Z)V

    .line 647
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "rear_mirror_control_reverse_auto_tilt_right_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showCmsMirrorControlPanel()V
    .locals 3

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CMS_MIRROR_CONTROL_PANEL"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public showMirrorControlPanel(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "isSuperPanel"
        }
    .end annotation

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "key_show_mirror_panel_inner"

    .line 361
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "key_show_mirror_panel_type"

    .line 362
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    .line 363
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
