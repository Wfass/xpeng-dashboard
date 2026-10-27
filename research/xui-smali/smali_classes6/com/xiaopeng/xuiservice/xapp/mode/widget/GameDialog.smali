.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;
.super Landroid/app/Dialog;
.source "GameDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPromptLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

.field private mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 29
    .local v0, "dialogWidth":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 31
    .local v1, "dialogHeight":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c002e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mPromptLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    .line 32
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mPromptLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 34
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 35
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 37
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 38
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 39
    const/16 v4, 0x7d8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public setPackageInfo(Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mPromptLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->setPackageInfo(Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 47
    return-void
.end method

.method public setShowDetailStyle(Z)V
    .locals 1
    .param p1, "showDetail"    # Z

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->mPromptLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->setShowDetailStyle(Z)V

    .line 51
    return-void
.end method
