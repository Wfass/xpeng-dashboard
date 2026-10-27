.class public Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;
.super Ljava/lang/Object;
.source "EffectDialogWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectDialogWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private ensureEffectDialog()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "EffectDialogWrapper"

    const-string v1, "create Effect Dialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f01ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 48
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 49
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 50
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialogPure;->setSystemDialog(I)V

    .line 52
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 38
    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 28
    :cond_0
    const-string v0, "EffectDialogWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show effect dialog, screenId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->ensureEffectDialog()V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setScreenId(I)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;->mEffectDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->show()V

    .line 32
    return-void
.end method
