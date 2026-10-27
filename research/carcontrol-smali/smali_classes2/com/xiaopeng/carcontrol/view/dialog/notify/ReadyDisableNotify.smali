.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;
.super Ljava/lang/Object;
.source "ReadyDisableNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadyDisableNotify"


# instance fields
.field private delayTime:J

.field private final handler:Landroid/os/Handler;

.field public inDisConnectIngProcess:Z

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->handler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$ReadyDisableNotify$QwwvtZ5tUNYFWUc8InpE9N5LiLI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/-$$Lambda$ReadyDisableNotify$QwwvtZ5tUNYFWUc8InpE9N5LiLI;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    .line 33
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->delayTime:J

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;

    move-result-object v0

    return-object v0
.end method

.method private handleProcess()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->inDisConnectIngProcess:Z

    return-void
.end method

.method public static synthetic lambda$QwwvtZ5tUNYFWUc8InpE9N5LiLI(Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->handleProcess()V

    return-void
.end method


# virtual methods
.method public BleDisconnection(ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isKeyConnected",
            "isPhoneLocationOutside"
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->inDisConnectIngProcess:Z

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getBreakPedalStatus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 52
    :goto_0
    sget-object v4, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BleDisconnection   isKeyConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPhoneLocationOutside: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ,status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,sendBleDisconnectRequest \uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 54
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setBleDisconnectRequest(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    if-eqz v3, :cond_2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_retext_brk_press_without_key:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_retext_brk_press:I

    :goto_1
    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_3

    .line 59
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    if-eqz v3, :cond_4

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_retext_brk_not_press_without_key:I

    goto :goto_2

    :cond_4
    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_retext_brk_not_press:I

    :goto_2
    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 61
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->runnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->delayTime:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    sget-object v1, Lcom/xiaopeng/track/constant/BID;->key_error_reconnect:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public isInDisConnectIngProcess()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->inDisConnectIngProcess:Z

    return v0
.end method

.method public setInDisConnectIngProcess(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inDisConnectIngProcess"
        }
    .end annotation

    .line 75
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->inDisConnectIngProcess:Z

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
