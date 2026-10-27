.class public Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;
.super Ljava/lang/Object;
.source "ClearDataDialogWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClearDataDialogWrapper"


# instance fields
.field private mAttachedDisplayId:I

.field private mAttachedPkgName:Ljava/lang/String;

.field private mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedDisplayId:I

    .line 23
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    .line 15
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedDisplayId:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method private ensureClearAppDialog()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "ClearDataDialogWrapper"

    const-string v1, "create ClearAppDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f0e0040

    .line 57
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0042

    .line 59
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e003f

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 42
    :cond_0
    return-void
.end method

.method public dismiss(ILjava/lang/String;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedDisplayId:I

    if-ne p1, v0, :cond_0

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 50
    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .locals 2
    .param p1, "attachedPkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 30
    :cond_0
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedDisplayId:I

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 32
    const-string v0, "ClearDataDialogWrapper"

    const-string v1, "show clear data dialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->setSelfSharedId(I)V

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->ensureClearAppDialog()V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->mClearAppDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 36
    return-void
.end method
