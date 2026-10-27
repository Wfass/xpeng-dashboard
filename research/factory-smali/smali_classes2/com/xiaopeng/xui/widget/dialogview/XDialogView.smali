.class public Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
.super Lcom/xiaopeng/xui/vui/VuiViewScene;
.source "XDialogView.java"


# instance fields
.field private mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "style"    # I

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;-><init>()V

    .line 31
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->create(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiView(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public isCloseShowing()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isCloseShowing()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonEnable()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isNegativeButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonShowing()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isNegativeButtonShowing()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonEnable()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isPositiveButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonShowing()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->isPositiveButtonShowing()Z

    move-result v0

    return v0
.end method

.method public onBuildScenePrepare()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->onBuildScenePrepare()V

    .line 233
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "show"    # Z

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCloseVisibility(Z)V

    .line 87
    return-object p0
.end method

.method public setCustomView(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(I)V

    .line 77
    return-object p0
.end method

.method public setCustomView(IZ)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(IZ)V

    .line 82
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(Landroid/view/View;)V

    .line 67
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setCustomView(Landroid/view/View;Z)V

    .line 72
    return-object p0
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setIcon(I)V

    .line 47
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setMessage(I)V

    .line 62
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(I)V

    .line 136
    return-object p0
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 151
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 141
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 156
    return-object p0
.end method

.method public setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "enable"    # Z

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonEnable(Z)V

    .line 176
    return-object p0
.end method

.method public setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonInterceptDismiss(Z)V

    .line 166
    return-object p0
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 146
    return-object p0
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)V

    .line 209
    return-object p0
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)V

    .line 214
    return-object p0
.end method

.method public setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)V

    .line 219
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(I)V

    .line 110
    return-object p0
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 126
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 115
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 131
    return-object p0
.end method

.method public setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "enable"    # Z

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonEnable(Z)V

    .line 171
    return-object p0
.end method

.method public setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonInterceptDismiss(Z)V

    .line 161
    return-object p0
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V

    .line 120
    return-object p0
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 224
    return-void
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitle(I)V

    .line 42
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    return-object p0
.end method

.method public setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 1
    .param p1, "show"    # Z

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->setTitleBarVisibility(Z)V

    .line 105
    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 100
    return-object p0
.end method

.method public startNegativeButtonCountDown(I)V
    .locals 1
    .param p1, "delayDismiss"    # I

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->startNegativeButtonCountDown(I)V

    .line 201
    return-void
.end method

.method public startPositiveButtonCountDown(I)V
    .locals 1
    .param p1, "delayDismiss"    # I

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->mXDialogViewDelegate:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->startPositiveButtonCountDown(I)V

    .line 197
    return-void
.end method
