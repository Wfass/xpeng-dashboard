.class public Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;
.super Ljava/lang/Object;
.source "AppTipsDialogWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppTipsDialogWrapper"


# instance fields
.field private mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

.field private mAttachedPkgName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mMsgText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mNegativeBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mPositiveBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mMsgText:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method private changeMsgTextLayout()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mMsgText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 98
    return-void
.end method

.method private ensureAppTipsDialog()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "AppTipsDialogWrapper"

    const-string v1, "create App Tips Dialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f01ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 120
    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mMsgText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 121
    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 122
    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mPositiveBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 123
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mNegativeBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 124
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xui/app/XDialogPure$Parameters;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaopeng/xui/app/XDialogPure$Parameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure$Parameters;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 126
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 127
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialogPure;->setCanceledOnTouchOutside(Z)V

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialogPure;->setSystemDialog(I)V

    .line 130
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mPositiveBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$AppTipsDialogWrapper$RxUbIx1I5bJD0s0uwOStdr6QuVM;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$AppTipsDialogWrapper$RxUbIx1I5bJD0s0uwOStdr6QuVM;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mNegativeBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$AppTipsDialogWrapper$SxZvBo_yDjXM-AtQuimjVYlOQdg;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$AppTipsDialogWrapper$SxZvBo_yDjXM-AtQuimjVYlOQdg;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public static synthetic lambda$ensureAppTipsDialog$0(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 132
    return-void
.end method

.method public static synthetic lambda$ensureAppTipsDialog$1(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 135
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->forceStopApp(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private refreshDialogInfo()V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mIcon:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getAppIconDrawableByPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 59
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mIcon:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getAppTipsContent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "tipsContent":[Ljava/lang/String;
    const v2, 0x7f0e003d

    const v3, 0x7f0e003e

    if-eqz v0, :cond_4

    .line 68
    aget-object v4, v0, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v1, v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "tipsTitle":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v2, v0, v3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "tipsText":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 71
    .end local v1    # "tipsTitle":Ljava/lang/String;
    .end local v2    # "tipsText":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "tipsTitle":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .restart local v2    # "tipsText":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mMsgText:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v3, :cond_5

    .line 75
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mMsgText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->changeMsgTextLayout()V

    .line 78
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v3, :cond_6

    .line 79
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_6
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 104
    :cond_0
    return-void
.end method

.method public dismiss(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 112
    :cond_1
    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "attachedPkgName"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 47
    :cond_0
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAttachedPkgName:Ljava/lang/String;

    .line 48
    const-string v0, "AppTipsDialogWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " show AppTips dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->ensureAppTipsDialog()V

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->refreshDialogInfo()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setScreenId(I)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->mAppTipsDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->show()V

    .line 53
    return-void
.end method
