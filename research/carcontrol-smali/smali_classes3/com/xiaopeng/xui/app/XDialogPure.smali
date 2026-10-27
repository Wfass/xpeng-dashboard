.class public Lcom/xiaopeng/xui/app/XDialogPure;
.super Lcom/xiaopeng/xui/vui/VuiViewScene;
.source "XDialogPure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;,
        Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;,
        Lcom/xiaopeng/xui/app/XDialogPure$Parameters;
    }
.end annotation


# instance fields
.field private dialogType:I

.field lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSystemDialogOffsetY:I

.field private mWindowBackgroundId:I

.field private mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

.field private onTouchedListener:Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;

.field outTimeDismissHandler:Landroid/os/Handler;

.field outTimeDismissRunnable:Ljava/lang/Runnable;

.field outTimeMillion:I

.field private screenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiViewScene;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->dialogType:I

    const/16 v1, 0x7530

    .line 49
    iput v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeMillion:I

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    .line 52
    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$jMQImPq1NPjdAAFZrnahDxxXNO0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$jMQImPq1NPjdAAFZrnahDxxXNO0;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XDialogPure$1;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 74
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object p2

    .line 76
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v1, Landroid/app/Dialog;

    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    .line 81
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$300(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_system_offset_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mSystemDialogOffsetY:I

    .line 85
    new-instance v1, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    .line 86
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$400(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-static {p2}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->access$400(Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 91
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    new-instance p2, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$iiLpIKD7Hq6fQTXaXvqOqxH0Wpo;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$iiLpIKD7Hq6fQTXaXvqOqxH0Wpo;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x1010054

    aput v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$cJLir9pRaTd7Gswj2XWLOgs6jws;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$cJLir9pRaTd7Gswj2XWLOgs6jws;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XDialogPure;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->dialogType:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XDialogPure;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/app/XDialogPure;)Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->onTouchedListener:Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;

    return-object p0
.end method

.method private logs(Ljava/lang/String;)V
    .locals 1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "--hashcode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XDialogPure"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 233
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->screenId:I

    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->getScreenId(Landroid/app/Dialog;)I

    move-result v0

    return v0
.end method

.method public getVuiDisplayLocation()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->screenId:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->getScreenId(Landroid/app/Dialog;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$XDialogPure()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, mWindowBackgroundId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->logs(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    if-nez v0, :cond_0

    .line 94
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_bg_dialog:I

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$XDialogPure(Landroid/content/DialogInterface;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    return-void
.end method

.method public synthetic lambda$setOnDismissListener$2$XDialogPure(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 200
    :cond_0
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onBuildScenePrepare()V
    .locals 0

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setVuiView(Landroid/view/View;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$zIHBs3alqq8KKJ_PWmlRaLiuOI0;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$zIHBs3alqq8KKJ_PWmlRaLiuOI0;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public setOnTouchedListener(Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->onTouchedListener:Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;

    return-void
.end method

.method public setOutTimeDismiss(I)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogPure$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$2;-><init>(Lcom/xiaopeng/xui/app/XDialogPure;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setOnTouchedListener(Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;)V

    return-void
.end method

.method public setScreenId(I)V
    .locals 1

    .line 225
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->screenId:I

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->setScreenId(Landroid/app/Dialog;I)V

    :goto_0
    return-void
.end method

.method public setSystemDialog(I)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->dialogType:I

    const/16 v0, 0xbc0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x7d8

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 188
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setWindowLayoutParams(Landroid/content/Context;Landroid/view/Window;II)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mXDialogContentView:Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 151
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 152
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mSystemDialogOffsetY:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->dialogType:I

    const/16 v1, 0xbc0

    if-ne v0, v1, :cond_2

    .line 157
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeMillion:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V

    .line 159
    :cond_2
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    iget v2, p0, Lcom/xiaopeng/xui/app/XDialogPure;->screenId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showDialog(Landroid/app/Dialog;ILandroid/os/Bundle;)V

    .line 160
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->dialogType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_4

    .line 161
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method
