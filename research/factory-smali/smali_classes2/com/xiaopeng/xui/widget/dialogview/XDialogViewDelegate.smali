.class public abstract Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;
.super Ljava/lang/Object;
.source "XDialogViewDelegate.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)V
    .locals 1
    .param p1, "xDialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "style"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 34
    if-gtz p3, :cond_0

    .line 35
    sget p3, Lcom/xiaopeng/xpui/R$style;->XDialogView:I

    .line 37
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p2, v0

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static create(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegate;
    .locals 1
    .param p0, "xDialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "style"    # I

    .line 29
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getContentView()Landroid/view/ViewGroup;
.end method

.method public abstract isCloseShowing()Z
.end method

.method public abstract isNegativeButtonEnable()Z
.end method

.method public abstract isNegativeButtonShowing()Z
.end method

.method public abstract isPositiveButtonEnable()Z
.end method

.method public abstract isPositiveButtonShowing()Z
.end method

.method public abstract onBuildScenePrepare()V
.end method

.method public abstract onKey(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract setCloseVisibility(Z)V
.end method

.method public abstract setCustomView(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setCustomView(IZ)V
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setCustomView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setCustomView(Landroid/view/View;Z)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setIcon(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setMessage(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setMessage(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setNegativeButton(I)V
.end method

.method public abstract setNegativeButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setNegativeButton(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setNegativeButtonEnable(Z)V
.end method

.method public abstract setNegativeButtonInterceptDismiss(Z)V
.end method

.method public abstract setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
.end method

.method public abstract setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)V
.end method

.method public abstract setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)V
.end method

.method public abstract setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)V
.end method

.method public abstract setPositiveButton(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setPositiveButton(ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setPositiveButton(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPositiveButtonEnable(Z)V
.end method

.method public abstract setPositiveButtonInterceptDismiss(Z)V
.end method

.method public abstract setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
.end method

.method public abstract setSingleChoiceItems([Ljava/lang/CharSequence;ILcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
.end method

.method public abstract setTitle(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitleBarVisibility(Z)V
.end method

.method public abstract setTitleVisibility(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startNegativeButtonCountDown(I)V
.end method

.method public abstract startPositiveButtonCountDown(I)V
.end method
