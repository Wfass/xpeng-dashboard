.class public Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
.super Lcom/xiaopeng/xui/vui/VuiViewScene;
.source "XDialogView.java"


# instance fields
.field private mScreenPositionCallback:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

.field private mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;-><init>()V

    .line 33
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->create(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getVuiDisplayLocation()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mScreenPositionCallback:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;->getScreenPositionInfo()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isCloseShowing()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isCloseShowing()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonEnable()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isNegativeButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonShowing()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isNegativeButtonShowing()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonEnable()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isPositiveButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonShowing()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isPositiveButtonShowing()Z

    move-result v0

    return v0
.end method

.method public onBuildScenePrepare()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->onBuildScenePrepare()V

    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->onKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCloseVisibility(Z)V

    return-object p0
.end method

.method public setCustomView(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(I)V

    return-object p0
.end method

.method public setCustomView(IZ)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(IZ)V

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(Landroid/view/View;)V

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(Landroid/view/View;Z)V

    return-object p0
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setIcon(I)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setMessage(I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setNegativeButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(I)V

    return-object p0
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonEnable(Z)V

    return-object p0
.end method

.method public setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonInterceptDismiss(Z)V

    return-object p0
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-object p0
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)V

    return-object p0
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)V

    return-object p0
.end method

.method public setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setOnTouchedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnTouchedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;)V

    return-object p0
.end method

.method public setOnWindowFocusChangeListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnWindowFocusChangedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V

    return-void
.end method

.method public setPositiveButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(I)V

    return-object p0
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonEnable(Z)V

    return-object p0
.end method

.method public setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonInterceptDismiss(Z)V

    return-object p0
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    return-object p0
.end method

.method public setScreenPositionCallback(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mScreenPositionCallback:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

    return-object p0
.end method

.method public setThemeCallback(Lapr$a;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setThemeCallback(Lapr$a;)V

    return-void
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitle(I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitleBarVisibility(Z)V

    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public startNegativeButtonCountDown(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->startNegativeButtonCountDown(I)V

    return-void
.end method

.method public startPositiveButtonCountDown(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->startPositiveButtonCountDown(I)V

    return-void
.end method
