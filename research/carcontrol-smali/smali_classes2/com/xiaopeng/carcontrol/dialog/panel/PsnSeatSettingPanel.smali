.class public Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;
.super Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;
.source "PsnSeatSettingPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreatePanel()Landroid/app/Dialog;
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;->getPanelWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;->getPanelHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 18
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setScreenId(I)V

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/PsnSeatSettingPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/Window;->setElevation(F)V

    :cond_0
    return-object v0
.end method
