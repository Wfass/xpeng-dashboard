.class public abstract Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;
.super Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;
.source "AbstractDropDownMenu.java"


# static fields
.field public static final DRV_SEAT_DROPDOWN_MENU_GROUP:I = 0x1

.field public static final PARK_GEAR_DROPDOWN_MENU_GROUP:I = 0x0

.field public static final PSN_SEAT_DROPDOWN_MENU_GROUP:I = 0x2

.field private static final TIME_OUT:J = 0x2710L


# instance fields
.field private final mAutoCloseTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;-><init>()V

    .line 28
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DroSKZ9rOBJLFr2gwLpkInsX0Uc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DroSKZ9rOBJLFr2gwLpkInsX0Uc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract getDropdownMenuGroupId()I
.end method

.method public synthetic lambda$onInitView$0$AbstractDropDownMenu(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->TAG:Ljava/lang/String;

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

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->startAutoCloseTask()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->stopAutoCloseTask()V

    :goto_0
    return p2
.end method

.method protected onCreatePanel()Landroid/app/Dialog;
    .locals 4

    .line 40
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v2

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$style;->Drop_Down_Menu_Style:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setTheme(I)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x800033

    .line 44
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    sget v2, Lcom/xiaopeng/carcontrolmodule/R$dimen;->drop_down_menu_offset_x:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 46
    sget v2, Lcom/xiaopeng/carcontrolmodule/R$dimen;->drop_down_menu_offset_y:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView()Landroid/view/View;
    .locals 4

    .line 64
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDismiss()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->stopAutoCloseTask()V

    return-void
.end method

.method protected onInitView()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$AbstractDropDownMenu$v3og6-M9zLl9KDyyPGy4usP0CMw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$AbstractDropDownMenu$v3og6-M9zLl9KDyyPGy4usP0CMw;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onRefresh()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->startAutoCloseTask()V

    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->startAutoCloseTask()V

    return-void
.end method

.method protected onViewAttach()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onViewAttach()V

    return-void
.end method

.method final startAutoCloseTask()V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->startAutoCloseTask(J)V

    return-void
.end method

.method final startAutoCloseTask(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoCloseTask: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mHandler:Landroid/os/Handler;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final stopAutoCloseTask()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAutoCloseTask"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
