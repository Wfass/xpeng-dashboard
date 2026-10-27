.class public Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
.super Lcom/xiaopeng/xui/vui/VuiViewScene;
.source "XDialogView.java"


# instance fields
.field private mScreenPositionCallback:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

.field private mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "style"    # I

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;-><init>()V

    .line 33
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->create(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiView(Landroid/view/View;)V

    .line 35
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mScreenPositionCallback:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

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

    .line 248
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "show"    # Z

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCloseVisibility(Z)V

    .line 89
    return-object p0
.end method

.method public setCustomView(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(I)V

    .line 79
    return-object p0
.end method

.method public setCustomView(IZ)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(IZ)V

    .line 84
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(Landroid/view/View;)V

    .line 69
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(Landroid/view/View;Z)V

    .line 74
    return-object p0
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setIcon(I)V

    .line 49
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setMessage(I)V

    .line 64
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setMessage(Ljava/lang/CharSequence;)V

    .line 59
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(I)V

    .line 138
    return-object p0
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 153
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 143
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 158
    return-object p0
.end method

.method public setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "enable"    # Z

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonEnable(Z)V

    .line 178
    return-object p0
.end method

.method public setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonInterceptDismiss(Z)V

    .line 168
    return-object p0
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 148
    return-object p0
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)V

    .line 211
    return-object p0
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)V

    .line 216
    return-object p0
.end method

.method public setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)V

    .line 226
    return-object p0
.end method

.method public setOnTouchedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnTouchedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;)V

    .line 221
    return-object p0
.end method

.method public setOnWindowFocusChangeListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnWindowFocusChangedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V

    .line 231
    return-void
.end method

.method public setPositiveButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(I)V

    .line 112
    return-object p0
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 128
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 117
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 133
    return-object p0
.end method

.method public setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "enable"    # Z

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonEnable(Z)V

    .line 173
    return-object p0
.end method

.method public setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonInterceptDismiss(Z)V

    .line 163
    return-object p0
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 122
    return-object p0
.end method

.method public setScreenPositionCallback(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mScreenPositionCallback:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;

    .line 235
    return-object p0
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 239
    return-void
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitle(I)V

    .line 44
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    return-object p0
.end method

.method public setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "show"    # Z

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitleBarVisibility(Z)V

    .line 107
    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 102
    return-object p0
.end method

.method public startNegativeButtonCountDown(I)V
    .locals 1
    .param p1, "delayDismiss"    # I

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->startNegativeButtonCountDown(I)V

    .line 203
    return-void
.end method

.method public startPositiveButtonCountDown(I)V
    .locals 1
    .param p1, "delayDismiss"    # I

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->startPositiveButtonCountDown(I)V

    .line 199
    return-void
.end method
