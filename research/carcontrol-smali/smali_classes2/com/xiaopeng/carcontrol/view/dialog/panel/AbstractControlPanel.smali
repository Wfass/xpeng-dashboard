.class public abstract Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;
.source "AbstractControlPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;-><init>()V

    return-void
.end method

.method private getLayoutParameters()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->getPanelWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->getPanelHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method protected getPanelHeight()I
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dialog_large_height:I

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    .line 52
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dialog_large_width:I

    return v0
.end method

.method protected onCreatePanel()Landroid/app/Dialog;
    .locals 3

    .line 23
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->getLayoutParameters()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/Window;->setElevation(F)V

    :cond_0
    return-object v0
.end method

.method protected onCreateView()Landroid/view/View;
    .locals 4

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onViewAttach()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onViewAttach()V

    return-void
.end method
