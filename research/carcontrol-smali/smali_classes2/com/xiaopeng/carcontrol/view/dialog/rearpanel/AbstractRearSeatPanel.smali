.class public Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "AbstractRearSeatPanel.java"


# instance fields
.field protected isRearDialog:Z

.field private mMenu:Lcom/xiaopeng/xui/app/XDialogPure;

.field private realPanel:Landroid/app/Dialog;

.field protected screenId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->isRearDialog:Z

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->screenId:I

    return-void
.end method

.method private getLayoutParameters()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->getPanelWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->getPanelHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    .line 75
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dialog_rear_seat_height:I

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    .line 71
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dialog_rear_seat_width:I

    return v0
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreatePanel()Landroid/app/Dialog;
    .locals 3

    .line 30
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->getLayoutParameters()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mMenu:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->realPanel:Landroid/app/Dialog;

    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/Window;->setElevation(F)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->realPanel:Landroid/app/Dialog;

    return-object v0
.end method

.method protected onCreateView()Landroid/view/View;
    .locals 4

    .line 44
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onInitView()V
    .locals 0

    return-void
.end method

.method protected onViewAttach()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mMenu:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onViewAttach()V

    return-void
.end method

.method public setDialogScreen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenId"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->screenId:I

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->realPanel:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setScreenId(I)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->realPanel:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->setScreenId(Landroid/app/Dialog;I)V

    :cond_0
    return-void
.end method

.method public setRearFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRearDialog"
        }
    .end annotation

    .line 79
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->isRearDialog:Z

    return-void
.end method
