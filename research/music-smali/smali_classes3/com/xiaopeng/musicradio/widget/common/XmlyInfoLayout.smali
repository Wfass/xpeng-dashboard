.class public Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XmlyInfoLayout.java"


# instance fields
.field private mAvatar:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLogout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mNickName:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSceneId:Ljava/lang/String;

.field private mSync:Lcom/xiaopeng/xui/widget/XButton;

.field private mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvBuy:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVipLogo:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->xmly_info_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mAvatar:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->rl_sync_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 64
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_logout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mLogout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 65
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_sync:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    .line 66
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->vip_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mVipLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_nick_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mNickName:Lcom/xiaopeng/xui/widget/XTextView;

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_buy:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTvBuy:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method private setInfoView()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mNickName:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mVipLogo:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideSyncLoading()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setInfoView()V

    return-void
.end method

.method public setBuyClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTvBuy:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mNickName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget p1, Lcom/xiaopeng/musicradio/common/k$d;->img_header_default:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mAvatar:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V

    if-eqz p3, :cond_0

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mVipLogo:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Lcom/xiaopeng/musicradio/common/k$g;->vip_tips_time_xmly:I

    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTvBuy:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->renew_vip:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mVipLogo:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTvBuy:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->buy_vip:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mTvBuy:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setInfoView()V

    return-void
.end method

.method public setLogoutListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mLogout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method public setSyncClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showSyncLoading()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method
