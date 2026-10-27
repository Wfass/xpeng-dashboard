.class public Lcom/xiaopeng/xui/app/XDialogPure;
.super Lcom/xiaopeng/xui/vui/VuiViewScene;
.source "XDialogPure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;,
        Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSystemDialogOffsetY:I

.field private mWindowBackgroundId:I

.field private mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object p2

    .line 48
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$000(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Landroid/app/Dialog;

    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$000(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    .line 53
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$100(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_system_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mSystemDialogOffsetY:I

    .line 57
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    .line 58
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$oBvFUIXdKuJ3Jvr1GZC5TRRMqAU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$oBvFUIXdKuJ3Jvr1GZC5TRRMqAU;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/app/XDialogPure;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, mWindowBackgroundId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->logs(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    if-nez v0, :cond_0

    .line 66
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_bg_dialog:I

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    if-lez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    :cond_1
    return-void
.end method

.method private logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 207
    const-string v0, "XDialogPure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--hashcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 113
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 109
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onBuildScenePrepare()V
    .locals 0

    .line 152
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 143
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 147
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->removeAllViews()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setVuiView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 131
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 135
    return-void
.end method

.method public setSystemDialog(I)V
    .locals 1
    .param p1, "type"    # I

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 79
    return-void
.end method

.method public show()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mSystemDialogOffsetY:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 105
    return-void
.end method
