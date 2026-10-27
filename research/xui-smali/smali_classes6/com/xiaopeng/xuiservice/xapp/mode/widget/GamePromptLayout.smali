.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;
.super Landroid/widget/RelativeLayout;
.source "GamePromptLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GamePromptLayout"


# instance fields
.field private isShowDetailStyle:Z

.field mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mGameDialogBg:Landroid/widget/ImageView;

.field private mGotGameDetailBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mUseTouchPanelBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 169
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;
    .param p1, "x1"    # Z

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->refreshGameDialogBg(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->handleEvSysReadyState(I)V

    return-void
.end method

.method private addVCUEventListener()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 114
    return-void
.end method

.method private handleEvSysReadyState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGameDialogBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGameDialogBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_1
    return-void
.end method

.method private isEvSysReady()Z
    .locals 5

    .line 157
    const/4 v0, 0x0

    move v1, v0

    .line 159
    .local v1, "ready":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    const-string/jumbo v3, "xp_vcu"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/vcu/CarVcuManager;

    .line 160
    .local v2, "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Landroid/car/hardware/vcu/CarVcuManager;->getEvSysReady()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    nop

    .line 164
    .end local v1    # "ready":Z
    .end local v2    # "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    .local v0, "ready":Z
    :cond_0
    move v1, v0

    .line 164
    .end local v0    # "ready":Z
    .restart local v1    # "ready":Z
    :cond_1
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    :goto_0
    const-string v0, "GamePromptLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEvSysReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return v1
.end method

.method private isGameImageUriAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshButtonStyle()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGotGameDetailBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isShowDetailStyle:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isShowDetailStyle:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUseTouchPanelBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isShowDetailStyle:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 110
    return-void
.end method

.method private refreshGameDialogBg(Z)V
    .locals 3
    .param p1, "isEvReady"    # Z

    .line 140
    if-eqz p1, :cond_1

    .line 141
    const-string v0, "GamePromptLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameImageUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v2, v2, Lcom/xiaopeng/app/xpPackageInfo;->gameImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->gameImageUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isGameImageUriAvailable(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f080096

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->gameImageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGameDialogBg:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->loadGameImage(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGameDialogBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGameDialogBg:Landroid/widget/ImageView;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    :goto_0
    return-void
.end method

.method private removeVCUEventListener()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->addVCUEventListener()V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->refreshButtonStyle()V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isEvSysReady()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->refreshGameDialogBg(Z)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090051

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    const-string v0, "GamePromptLayout"

    const-string v1, "use wheel panel click"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->setWSControlStatus(Z)V

    .line 94
    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "GamePromptLayout"

    const-string v1, "use touch panel click"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->setWSControlStatus(Z)V

    .line 89
    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "GamePromptLayout"

    const-string v1, "use detail got click"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    nop

    .line 103
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->dismissGameDialog()V

    .line 104
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090057
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->removeVCUEventListener()V

    .line 68
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 73
    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGameDialogBg:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUseTouchPanelBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUseTouchPanelBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mUserWheelControlBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isEvSysReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 79
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGotGameDetailBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mGotGameDetailBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public setPackageInfo(Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 49
    return-void
.end method

.method public setShowDetailStyle(Z)V
    .locals 0
    .param p1, "showDetail"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->isShowDetailStyle:Z

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->refreshButtonStyle()V

    .line 54
    return-void
.end method
