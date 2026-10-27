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
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dialogViewStyle"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dialogViewStyle"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3, "parameters"    # Lcom/xiaopeng/xui/app/XDialog$Parameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    .line 74
    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    .line 75
    const/16 v0, 0x7530

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$ER6ca12hkbmmaIl2tUgcwJNzdEs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$ER6ca12hkbmmaIl2tUgcwJNzdEs;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

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

    .line 108
    if-nez p3, :cond_0

    .line 109
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialog$Parameters;

    move-result-object p3

    .line 111
    :cond_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Landroid/app/Dialog;

    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$200(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    .line 116
    :goto_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$300(Lcom/xiaopeng/xui/app/XDialog$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->init()V

    .line 123
    sget v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialog$Parameters;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Lcom/xiaopeng/xui/app/XDialog$Parameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialog;

    .line 50
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialog;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    return-object v0
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

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$9P4fB9VBMHmiGhl_mlGUJko3V2E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$9P4fB9VBMHmiGhl_mlGUJko3V2E;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XDialog$2;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$tD0i1guW7i47tWSjehufFhvI-t0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$tD0i1guW7i47tWSjehufFhvI-t0;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnWindowFocusChangeListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnWindowFocusChangedListener;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$sjPokchuAw-W9iBV35AHUW6gLFI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$sjPokchuAw-W9iBV35AHUW6gLFI;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XDialog$3;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setScreenPositionCallback(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$ASPUlTyxoTIB-IvhTO-e-R79tXw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$ASPUlTyxoTIB-IvhTO-e-R79tXw;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-void
.end method

.method private initCloseListenerProxy()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$IVMvEEmuvlZ2kOdstFHHj12gtl0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$IVMvEEmuvlZ2kOdstFHHj12gtl0;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 188
    :cond_0
    return-void
.end method

.method private initCountDownListenerProxy()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$SjkdW6jr2Ra1kUTqhQJ8BzRf7Lk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$SjkdW6jr2Ra1kUTqhQJ8BzRf7Lk;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 200
    :cond_0
    return-void
.end method

.method private initNegativeListenerProxy()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$_x7a9lxo_MthJj1zuQs1hkVw-3E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$_x7a9lxo_MthJj1zuQs1hkVw-3E;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 220
    :cond_0
    return-void
.end method

.method private initPositiveListenerProxy()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$gzN4a-3M0LmyXp0TaBGuXe6to-M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$gzN4a-3M0LmyXp0TaBGuXe6to-M;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 210
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 2
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 131
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/app/XDialog;Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    const/16 v1, 0xbc0

    if-ne v0, v1, :cond_1

    .line 143
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->setOutTimeDismiss(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, mWindowBackgroundId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 157
    :cond_1
    return-void
.end method

.method public static synthetic lambda$init$3(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom key listener return true  keyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$initCloseListenerProxy$4(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;->onClose(Lcom/xiaopeng/xui/app/XDialog;)Z

    move-result v0

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$initCountDownListenerProxy$5(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "which"    # I

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    invoke-interface {v0, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;->onCountDown(Lcom/xiaopeng/xui/app/XDialog;I)Z

    move-result v0

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$initNegativeListenerProxy$7(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "which"    # I

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-interface {v0, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    .line 218
    :cond_0
    return-void
.end method

.method public static synthetic lambda$initPositiveListenerProxy$6(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "which"    # I

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-interface {v0, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    .line 208
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setOnDismissListener$8(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 542
    :cond_0
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 543
    return-void
.end method

.method private logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 645
    const-string v0, "XDialog"

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

    .line 646
    return-void
.end method

.method private setOutTimeDismiss(I)V
    .locals 4
    .param p1, "millisecond"    # I

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

    .line 491
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 454
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 457
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 448
    const-string v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 451
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

    sget v1, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 618
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

    .line 606
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
    .local v0, "id":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVuiDisplayLocation   value:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 610
    return v0
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 595
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 600
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

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

    .line 601
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

.method public setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 564
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "cancel"    # Z

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 569
    return-object p0
.end method

.method public setCloseVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "show"    # Z

    .line 287
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    return-object p0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 291
    return-object p0
.end method

.method public setCustomView(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 278
    return-object p0
.end method

.method public setCustomView(IZ)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(IZ)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 283
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 268
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 273
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomViewIdList(Ljava/util/List;)V

    .line 590
    return-void
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setIcon(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 248
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 253
    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setMessage(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 263
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 258
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 349
    return-object p0
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 367
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 368
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 369
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 354
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 373
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 374
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 375
    return-object p0
.end method

.method public setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "enable"    # Z

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 385
    return-object p0
.end method

.method public setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 233
    return-object p0
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 359
    if-eqz p1, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initNegativeListenerProxy()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 363
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 549
    return-object p0
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    .line 464
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    .line 465
    if-eqz p1, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initCloseListenerProxy()V

    .line 468
    :cond_0
    return-object p0
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    .line 472
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    .line 473
    if-eqz p1, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initCountDownListenerProxy()V

    .line 476
    :cond_0
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$788q0MpEijgL5dyKiUktksKVwGE;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$788q0MpEijgL5dyKiUktksKVwGE;-><init>(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 544
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 558
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 559
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 554
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 318
    return-object p0
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 336
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 337
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 338
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 323
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 342
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 343
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 344
    return-object p0
.end method

.method public setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "enable"    # Z

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 380
    return-object p0
.end method

.method public setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 228
    return-object p0
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initPositiveListenerProxy()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 332
    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "screenId"    # I

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

    .line 526
    :goto_0
    return-object p0
.end method

.method public setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 5
    .param p1, "type"    # I

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 499
    iput p1, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    .line 500
    const/16 v0, 0x800

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbc0

    if-eq p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 502
    :cond_0
    const/16 p1, 0x7d8

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 504
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setWindowLayoutParams(Landroid/content/Context;Landroid/view/Window;II)V

    .line 505
    goto :goto_0

    .line 507
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    const/16 p1, 0x7d8

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 511
    nop

    .line 517
    :cond_3
    :goto_0
    return-object p0
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 296
    return-void
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitle(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 243
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 238
    return-object p0
.end method

.method public setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "show"    # Z

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 313
    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 308
    return-object p0
.end method

.method public setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 585
    return-void
.end method

.method public setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 580
    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiSceneId(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public show()V
    .locals 1

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/xiaopeng/xui/app/XDialog;->show(II)V

    .line 406
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "delayDismissPositive"    # I
    .param p2, "delayDismissNegative"    # I

    .line 416
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 417
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->startPositiveButtonCountDown(I)V

    .line 420
    :cond_0
    if-lez p2, :cond_1

    if-nez p1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->startNegativeButtonCountDown(I)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 425
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 426
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mSystemDialogOffsetY:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 427
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 429
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    const/16 v1, 0xbc0

    if-ne v0, v1, :cond_4

    .line 431
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->outTimeMillion:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->setOutTimeDismiss(I)V

    .line 434
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    iget v2, p0, Lcom/xiaopeng/xui/app/XDialog;->screenId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showDialog(Landroid/app/Dialog;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    goto :goto_1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 439
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->dialogType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_2

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 445
    :cond_6
    :goto_2
    return-void
.end method
