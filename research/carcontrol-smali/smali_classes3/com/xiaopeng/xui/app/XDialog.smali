.class public Lcom/xiaopeng/xui/app/XDialog;
.super Ljava/lang/Object;
.source "XDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/IVuiViewScene;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XDialog$Parameters;
    }
.end annotation


# static fields
.field public static final ID_SCREEN_PRIMARY:I = 0x0

.field public static final ID_SCREEN_SECONDARY:I = 0x1

.field private static sObjectSize:I


# instance fields
.field private dialogType:I

.field lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

.field private mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

.field private mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

.field private mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

.field private mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

.field private mSystemDialogOffsetY:I

.field private mWindowBackgroundId:I

.field private mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

.field outTimeDismissHandler:Landroid/os/Handler;

.field outTimeDismissRunnable:Ljava/lang/Runnable;

.field outTimeMillion:I

.field private screenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    .line 74
    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    const/16 v0, 0x7530

    .line 75
    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$bgZldAXy6fGG94gp2dVYokEfneM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$bgZldAXy6fGG94gp2dVYokEfneM;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XDialog$1;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 105
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    .line 109
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialog$Parameters;

    move-result-object p3

    .line 111
    :cond_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 112
    new-instance p2, Landroid/app/Dialog;

    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 114
    :cond_1
    new-instance p2, Landroid/app/Dialog;

    sget v0, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    .line 116
    :goto_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$300(Lcom/xiaopeng/xui/app/XDialog$Parameters;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->init()V

    .line 123
    sget p1, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialog$Parameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XDialog;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_system_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mSystemDialogOffsetY:I

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$j7ygWAW7BpXiPn6Df4Ug1zVsAoQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$j7ygWAW7BpXiPn6Df4Ug1zVsAoQ;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XDialog$2;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$P3ZwB3Nj9nE-bnpR-FyEUslsF4U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$P3ZwB3Nj9nE-bnpR-FyEUslsF4U;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnWindowFocusChangeListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$K1RHdMnaL2WXatjOrbgIf9r2fQI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$K1RHdMnaL2WXatjOrbgIf9r2fQI;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XDialog$3;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setScreenPositionCallback(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$rMvM0iZ5NStq82CvE62iT_Mzagg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$rMvM0iZ5NStq82CvE62iT_Mzagg;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initCloseListenerProxy()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$RAQpHI9uM6Saf2DriadeF6uVkFM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$RAQpHI9uM6Saf2DriadeF6uVkFM;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    :cond_0
    return-void
.end method

.method private initCountDownListenerProxy()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$Byvj310OyRYs470yD9Td4cOmEeE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$Byvj310OyRYs470yD9Td4cOmEeE;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    :cond_0
    return-void
.end method

.method private initNegativeListenerProxy()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$N_PJDP5W7y_FnUABLO8gALEOT_k;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$N_PJDP5W7y_FnUABLO8gALEOT_k;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    :cond_0
    return-void
.end method

.method private initPositiveListenerProxy()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$q8Ykuh1f5jhyCuK-S2jXWW53xtY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$q8Ykuh1f5jhyCuK-S2jXWW53xtY;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    :cond_0
    return-void
.end method

.method private logs(Ljava/lang/String;)V
    .locals 1

    .line 645
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

    const-string v0, "XDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private setOutTimeDismiss(I)V
    .locals 4

    .line 480
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/app/XDialog$4;-><init>(Lcom/xiaopeng/xui/app/XDialog;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnTouchedListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnTouchedListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "cancel"

    .line 454
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "dismiss"

    .line 448
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 615
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 616
    sget v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " finalize object size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    return-void
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 530
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    return v0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->getScreenId(Landroid/app/Dialog;)I

    move-result v0

    return v0
.end method

.method public getVuiDisplayLocation()I
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 608
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->getScreenId(Landroid/app/Dialog;)I

    move-result v0

    .line 609
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVuiDisplayLocation   value:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    return v0
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    .line 600
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 599
    :goto_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->initVuiDialogScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;I)V

    return-void
.end method

.method public isCloseShowing()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isCloseShowing()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonEnable()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isNegativeButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonShowing()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isNegativeButtonShowing()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonEnable()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isPositiveButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonShowing()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isPositiveButtonShowing()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$init$0$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$init$1$XDialog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    iget p1, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    const/16 v0, 0xbc0

    if-ne p1, v0, :cond_1

    .line 143
    iget p1, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setOutTimeDismiss(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$init$2$XDialog()V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, mWindowBackgroundId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    if-nez v0, :cond_0

    .line 152
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_bg_dialog:I

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$init$3$XDialog(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "custom key listener return true  keyCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->onKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$initCloseListenerProxy$4$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;->onClose(Lcom/xiaopeng/xui/app/XDialog;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$initCountDownListenerProxy$5$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;->onCountDown(Lcom/xiaopeng/xui/app/XDialog;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$initNegativeListenerProxy$7$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 216
    invoke-interface {p1, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initPositiveListenerProxy$6$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setOnDismissListener$8$XDialog(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 542
    :cond_0
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public setCloseVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 287
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setCustomView(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setCustomView(IZ)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(IZ)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setCustomViewIdList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomViewIdList(Ljava/util/List;)V

    return-void
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setIcon(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setMessage(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 368
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 374
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method public setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initNegativeListenerProxy()V

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    if-eqz p1, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initCloseListenerProxy()V

    :cond_0
    return-object p0
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    if-eqz p1, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initCountDownListenerProxy()V

    :cond_0
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;-><init>(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p0
.end method

.method public setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 337
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 343
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method public setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initPositiveListenerProxy()V

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 521
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->setScreenId(Landroid/app/Dialog;I)V

    :goto_0
    return-object p0
.end method

.method public setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 499
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    const/16 v0, 0x800

    const/16 v1, 0x7d8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc0

    if-eq p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 504
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setWindowLayoutParams(Landroid/content/Context;Landroid/view/Window;II)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitle(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method public setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    return-void
.end method

.method public setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiSceneId(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0, v0, v0}, Lcom/xiaopeng/xui/app/XDialog;->show(II)V

    return-void
.end method

.method public show(II)V
    .locals 2

    const-string v0, "show"

    .line 416
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->startPositiveButtonCountDown(I)V

    :cond_0
    if-lez p2, :cond_1

    if-nez p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->startNegativeButtonCountDown(I)V

    .line 423
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x11

    .line 425
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 426
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    iget p2, p0, Lcom/xiaopeng/xui/app/XDialog;->mSystemDialogOffsetY:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 427
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 429
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 430
    iget p1, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    const/16 p2, 0xbc0

    if-ne p1, p2, :cond_4

    .line 431
    iget p1, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setOutTimeDismiss(I)V

    .line 434
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showDialog(Landroid/app/Dialog;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 439
    :goto_1
    iget p1, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    instance-of p2, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_6

    .line 440
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_2

    .line 443
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_6
    :goto_2
    return-void
.end method
