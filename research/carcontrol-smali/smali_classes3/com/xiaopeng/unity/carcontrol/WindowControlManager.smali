.class public Lcom/xiaopeng/unity/carcontrol/WindowControlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "WindowControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IWindowControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/WindowControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/WindowControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IWindowControlManager;"
    }
.end annotation


# instance fields
.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private convertWindowState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$WindowState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/WindowControlManager;
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public controlSunShade(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_sunshade:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openSunShade()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->closeSunShade()V

    .line 138
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_sunshade"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlWindow(I)V
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_window_act_cmd:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const-string/jumbo v1, "windowdoor_window_act_cmd"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v3, 0x7f11044a

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowVent()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowClose()V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowOpen()V

    .line 259
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getAllWindowPosition()Ljava/lang/String;
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 156
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 157
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 158
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, ","

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getSunShadePos()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_sunshade_progress:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePos()I

    move-result v0

    return v0
.end method

.method public getWindowPos(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRRWinPos()F

    move-result p1

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRLWinPos()F

    move-result p1

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFRWinPos()F

    move-result p1

    goto :goto_0

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFLWinPos()F

    move-result p1

    :goto_0
    return p1
.end method

.method public initInternal()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 35
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isWindowLockActive()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_window_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    return v0
.end method

.method public isWindowsAllClosed()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowsAllClosed()Z

    move-result v0

    return v0
.end method

.method public isWindowsAllOpened()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowsAllOpened()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$WindowControlManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;)V
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

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->convertWindowState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onWindowStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$WindowControlManager(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$WindowControlManager(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$WindowControlManager(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    const/4 v1, 0x3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$WindowControlManager(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$WindowControlManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onWindowLockStateChanged(Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowLockStateChanged, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$6$WindowControlManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onSunShadePosChanged(I)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSunShadePosChanged, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$7$WindowControlManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlListener;->onSunShadeLoadingChanged(Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSunShadeLoadingChanged, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$VdPROBEjuxYkkXUo3ZTLC_455aI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$VdPROBEjuxYkkXUo3ZTLC_455aI;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDrvWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$vR2kDm5dK1ppTo_pENWWjV8Hmps;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$vR2kDm5dK1ppTo_pENWWjV8Hmps;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFrWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$O_FRqjTayG03RAVPwzMeIdRH2Lk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$O_FRqjTayG03RAVPwzMeIdRH2Lk;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRlWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$YVM8hP9LlyMUaEKuwiZQGlQ0w3o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$YVM8hP9LlyMUaEKuwiZQGlQ0w3o;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRrWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$UHEiBg0SJnWntx5rvbOwj-Hfp8c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$UHEiBg0SJnWntx5rvbOwj-Hfp8c;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowLockStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$pZvK_5LGWHdoUkZPilxasTMQTz4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$pZvK_5LGWHdoUkZPilxasTMQTz4;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$WbkxD0g5aCuYl3lHNOnoF98drCg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$WbkxD0g5aCuYl3lHNOnoF98drCg;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadeLoadingData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$v9N7U45dfTvbdm5KJZavAyCUvRY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$WindowControlManager$v9N7U45dfTvbdm5KJZavAyCUvRY;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
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

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setWindowLockActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "stopSunShade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "setWindowPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "resetSunShade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "isWindowsAllClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "controlWindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "isWindowsAllOpened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "openSunShade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "getAllWindowPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "getWindowPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "getSunShadePos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "closeSunShade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "isWindowLockActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v3, v1

    goto :goto_0

    :sswitch_d
    const-string v0, "setSunShadePos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 125
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 98
    :pswitch_0
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setWindowLockActive(Z)V

    goto/16 :goto_2

    .line 122
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->stopSunShade()V

    goto/16 :goto_2

    .line 88
    :pswitch_2
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-array p1, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_e
    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 89
    :goto_1
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setWindowPos(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 107
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->resetSunShade()V

    goto :goto_2

    .line 104
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->isWindowsAllClosed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    .line 78
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->controlWindow(I)V

    goto :goto_2

    .line 101
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->isWindowsAllOpened()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    .line 116
    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->controlSunShade(I)V

    goto :goto_2

    .line 84
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->getAllWindowPosition()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 81
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->getWindowPos(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_3

    .line 110
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->getSunShadePos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 119
    :pswitch_b
    invoke-virtual {p0, v1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->controlSunShade(I)V

    goto :goto_2

    .line 95
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->isWindowLockActive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    .line 113
    :pswitch_d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->setSunShadePos(I)V

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_f

    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_f
    const-string p1, ""

    :goto_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b4f8e6f -> :sswitch_d
        -0x4f1c5295 -> :sswitch_c
        -0x1d8986a7 -> :sswitch_b
        -0x11b501e3 -> :sswitch_a
        -0xd81f672 -> :sswitch_9
        0xb88c884 -> :sswitch_8
        0x2c284fab -> :sswitch_7
        0x382d0f71 -> :sswitch_6
        0x3aebf3ad -> :sswitch_5
        0x3af395f0 -> :sswitch_4
        0x4dd971b0 -> :sswitch_3
        0x4ed1ca02 -> :sswitch_2
        0x51e8f963 -> :sswitch_1
        0x52cfeca3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setSunShadePos(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_sunshade_progress:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSunShadePos(I)V

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_sunshade_progress"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWindowLockActive(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_window_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setWindowLockActive(Z)V

    .line 338
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_window_lock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWindowPos(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "pos"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f11044a

    invoke-virtual {p1, p2, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    :cond_0
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRRWinPos(F)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    goto :goto_0

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    goto :goto_0

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFLWinPos(F)V

    .line 317
    :goto_0
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->windowdoor_window_progress:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager$2;-><init>(Lcom/xiaopeng/unity/carcontrol/WindowControlManager;IF)V

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
