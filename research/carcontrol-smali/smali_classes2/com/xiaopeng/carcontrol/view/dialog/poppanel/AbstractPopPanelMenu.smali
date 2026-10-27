.class public abstract Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
.super Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;
.source "AbstractPopPanelMenu.java"


# static fields
.field public static final DRV_SEAT_DROPDOWN_MENU_GROUP:I = 0x1

.field public static final PARK_GEAR_DROPDOWN_MENU_GROUP:I = 0x0

.field public static final PSN_SEAT_DROPDOWN_MENU_GROUP:I = 0x2

.field private static final TIME_OUT:J = 0x2ee0L


# instance fields
.field private builder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

.field private final mAutoCloseTask:Ljava/lang/Runnable;

.field private mCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$ATAR3qwGMBhLbjV9lxWea96cClA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$ATAR3qwGMBhLbjV9lxWea96cClA;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;J)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onShowTimeUpdate(J)V

    return-void
.end method


# virtual methods
.method public abstract getDropdownMenuGroupId()I
.end method

.method public keepPanelShow()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->keepPanelShow()V

    return-void
.end method

.method public synthetic lambda$onInitView$0$AbstractPopPanelMenu(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "ev"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    const/4 p1, 0x1

    return p1
.end method

.method protected onCreatePanelBuilder()Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->builder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    return-object v0
.end method

.method protected onCreateView()Landroid/view/View;
    .locals 4

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDismiss()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onDismiss()V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->unRegisterLiveData()V

    return-void
.end method

.method protected onInitView()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$AbstractPopPanelMenu$B-_atj1L3-JoIGEHP6W_nyRHAcc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$AbstractPopPanelMenu$B-_atj1L3-JoIGEHP6W_nyRHAcc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method protected onShow()V
    .locals 0

    return-void
.end method

.method protected onViewAttach()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onViewAttach()V

    return-void
.end method

.method protected final startAutoCloseTask()V
    .locals 2

    const-wide/16 v0, 0x2ee0

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->startAutoCloseTask(J)V

    return-void
.end method

.method protected final startAutoCloseTask(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoCloseTask, delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 108
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;JJ)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 119
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected final stopAutoCloseTask()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAutoCloseTask"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected unRegisterLiveData()V
    .locals 0

    return-void
.end method
