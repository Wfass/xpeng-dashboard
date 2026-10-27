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
.field private static sObjectSize:I


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 64
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

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    .line 72
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    .line 78
    if-nez p3, :cond_0

    .line 79
    invoke-static {}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialog$Parameters;

    move-result-object p3

    .line 81
    :cond_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$000(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Landroid/app/Dialog;

    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$000(Lcom/xiaopeng/xui/app/XDialog$Parameters;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    .line 86
    :goto_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->access$100(Lcom/xiaopeng/xui/app/XDialog$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XDialogUtils;->requestFullScreen(Landroid/app/Dialog;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->init()V

    .line 93
    sget v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    .line 94
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

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    .line 68
    return-void
.end method

.method private init()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_system_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mSystemDialogOffsetY:I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$9P4fB9VBMHmiGhl_mlGUJko3V2E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$9P4fB9VBMHmiGhl_mlGUJko3V2E;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$s3CmKHbTxXoHkg0e6JUBfY_y_-Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$s3CmKHbTxXoHkg0e6JUBfY_y_-Q;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$WZ3Q9pXFsK8sg4PXWTmacfC8DAk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$WZ3Q9pXFsK8sg4PXWTmacfC8DAk;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 116
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

    .line 117
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method private initCloseListenerProxy()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$l1LARSaNT8tDepVXLgxNqVdJkkc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$l1LARSaNT8tDepVXLgxNqVdJkkc;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnCloseListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 131
    :cond_0
    return-void
.end method

.method private initCountDownListenerProxy()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$fbj-1PFv3EpqSHcLX-8gv1vcQx4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$fbj-1PFv3EpqSHcLX-8gv1vcQx4;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnCountDownListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 143
    :cond_0
    return-void
.end method

.method private initNegativeListenerProxy()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$FFTotuu-r5O5A4gt3f42vBsU9o4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$FFTotuu-r5O5A4gt3f42vBsU9o4;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 163
    :cond_0
    return-void
.end method

.method private initPositiveListenerProxy()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$8umUr7E18qQsZk8zQujzHQFIHPY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$8umUr7E18qQsZk8zQujzHQFIHPY;-><init>(Lcom/xiaopeng/xui/app/XDialog;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    .line 153
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 0
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, mWindowBackgroundId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    if-nez v0, :cond_0

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_bg_dialog:I

    iput v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    if-lez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mWindowBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    :cond_1
    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
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

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$initCloseListenerProxy$3(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;->onClose(Lcom/xiaopeng/xui/app/XDialog;)Z

    move-result v0

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$initCountDownListenerProxy$4(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "which"    # I

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    invoke-interface {v0, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;->onCountDown(Lcom/xiaopeng/xui/app/XDialog;I)Z

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$initNegativeListenerProxy$6(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "which"    # I

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-interface {v0, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    .line 161
    :cond_0
    return-void
.end method

.method public static synthetic lambda$initPositiveListenerProxy$5(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)V
    .locals 1
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;
    .param p2, "which"    # I

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-interface {v0, p0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    .line 151
    :cond_0
    return-void
.end method

.method private logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 500
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

    .line 501
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 378
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 380
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 373
    const-string v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 375
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 470
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 471
    sget v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " finalize object size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/xui/app/XDialog;->sObjectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 466
    return-void
.end method

.method public isCloseShowing()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isCloseShowing()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonEnable()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isNegativeButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isNegativeButtonShowing()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isNegativeButtonShowing()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonEnable()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isPositiveButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isPositiveButtonShowing()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->isPositiveButtonShowing()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 435
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "cancel"    # Z

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 440
    return-object p0
.end method

.method public setCloseVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "show"    # Z

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 231
    return-object p0
.end method

.method public setCustomView(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 221
    return-object p0
.end method

.method public setCustomView(IZ)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(IZ)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 226
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 211
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useScroll"    # Z

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 216
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

    .line 460
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCustomViewIdList(Ljava/util/List;)V

    .line 461
    return-void
.end method

.method public setIcon(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setIcon(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 191
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 196
    return-object p0
.end method

.method public setMessage(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setMessage(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 206
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 201
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 289
    return-object p0
.end method

.method public setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 307
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 308
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 309
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 294
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 313
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 314
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 315
    return-object p0
.end method

.method public setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "enable"    # Z

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 325
    return-object p0
.end method

.method public setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 176
    return-object p0
.end method

.method public setNegativeButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 298
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initNegativeListenerProxy()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mNegativeListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setNegativeButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 303
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 420
    return-object p0
.end method

.method public setOnCloseListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    .line 387
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCloseListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCloseListener;

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initCloseListenerProxy()V

    .line 391
    :cond_0
    return-object p0
.end method

.method public setOnCountDownListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    .line 395
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnCountDownListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;

    .line 396
    if-eqz p1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initCountDownListenerProxy()V

    .line 399
    :cond_0
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 415
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 429
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 430
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 425
    return-object p0
.end method

.method public setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButton(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 258
    return-object p0
.end method

.method public setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 276
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 277
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 278
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 263
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 282
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 283
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 284
    return-object p0
.end method

.method public setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "enable"    # Z

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 320
    return-object p0
.end method

.method public setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "interceptDismiss"    # Z

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 171
    return-object p0
.end method

.method public setPositiveButtonListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 267
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XDialog;->initPositiveListenerProxy()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mPositiveListenerProxy:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setPositiveButtonListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnClickListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 272
    return-object p0
.end method

.method public setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "type"    # I

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 410
    :cond_0
    return-object p0
.end method

.method public setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "onCallback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setThemeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 236
    return-void
.end method

.method public setTitle(I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitle(I)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 186
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 181
    return-object p0
.end method

.method public setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "show"    # Z

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 253
    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 248
    return-object p0
.end method

.method public setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V

    .line 456
    return-void
.end method

.method public setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 1
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 451
    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setVuiSceneId(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public show()V
    .locals 1

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/xiaopeng/xui/app/XDialog;->show(II)V

    .line 346
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "delayDismissPositive"    # I
    .param p2, "delayDismissNegative"    # I

    .line 356
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XDialog;->logs(Ljava/lang/String;)V

    .line 357
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->startPositiveButtonCountDown(I)V

    .line 360
    :cond_0
    if-lez p2, :cond_1

    if-nez p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mXDialogView:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->startNegativeButtonCountDown(I)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 365
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 366
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mSystemDialogOffsetY:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 367
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 369
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 370
    return-void
.end method
