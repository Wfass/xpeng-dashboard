.class public Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;
.super Ljava/lang/Object;
.source "ShareDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;
    }
.end annotation


# static fields
.field private static final LOADING_TIME_OUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "ShareDialogWrapper"


# instance fields
.field private mAttachedPkgName:Ljava/lang/String;

.field private mAttachedScreenId:I

.field private mContext:Landroid/content/Context;

.field private mLoadingDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

.field private mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mTransferDialogCallback:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedScreenId:I

    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 18
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedScreenId:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferDialogCallback:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    return-object v0
.end method

.method private ensureShareAppDialog()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "ShareDialogWrapper"

    const-string v1, "create ShareDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0254

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0042

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e003f

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 104
    :cond_0
    return-void
.end method

.method private ensureTransferConfirmDialog(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I

    .line 127
    const-string v0, "ShareDialogWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create transfer confirm dialog,screenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0254

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    .line 131
    const v3, 0x7f0e0042

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    .line 145
    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const-string v1, "TransferConfirmDialog"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 162
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 69
    :cond_0
    return-void
.end method

.method public dismiss(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedScreenId:I

    if-ne p2, v0, :cond_0

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 77
    :cond_0
    return-void
.end method

.method public dismissShareLoading()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mLoadingDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mLoadingDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mLoadingDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dismiss()V

    .line 181
    :cond_0
    return-void
.end method

.method public dismissTransferConfirmDialog()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 168
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 188
    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .locals 7
    .param p1, "attachedPkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 47
    :cond_0
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedScreenId:I

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 49
    const-string v0, "ShareDialogWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show share dialog displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attachedPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->ensureShareAppDialog()V

    .line 52
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mAttachedScreenId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v1, 0x7f0e007d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "screenName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0e003f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0e007e

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0e007f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    const-string v2, "ShareAppDialog"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mShareDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 63
    return-void
.end method

.method public showShareLoading(I)V
    .locals 10
    .param p1, "screenId"    # I

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->dismissShareLoading()V

    .line 172
    const-string v0, "ShareDialogWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show share Loading dialog, screenId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x7d0

    const/4 v9, 0x0

    move v4, p1

    invoke-static/range {v2 .. v9}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;IZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mLoadingDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    .line 175
    return-void
.end method

.method public showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    .line 107
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferDialogCallback:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 111
    :cond_0
    if-nez p1, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "dialogInfo":Ljava/lang/String;
    :goto_0
    const-string v1, "ShareDialogWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show transfer confirm dialog intent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->ensureTransferConfirmDialog(Landroid/content/Intent;I)V

    .line 114
    const v1, 0x7f0e0080

    const v2, 0x7f0e007d

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "targetScreenName":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "currentScreenName":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0084

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0e007f

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 120
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00a9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 121
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0e003f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 122
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 123
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->mTransferConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 124
    return-void
.end method
