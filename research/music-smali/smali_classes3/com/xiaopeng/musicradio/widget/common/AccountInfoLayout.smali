.class public Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "AccountInfoLayout.java"


# instance fields
.field private mAvaStr:Ljava/lang/String;

.field private mAvatar:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mBtBuy:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mContinuePlay:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

.field private mLogout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mNickName:Lcom/xiaopeng/xui/widget/XTextView;

.field private mNickNameStr:Ljava/lang/String;

.field private mSceneId:Ljava/lang/String;

.field private mSync:Lcom/xiaopeng/xui/widget/XButton;

.field private mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVipDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->account_info_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mAvatar:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->rl_sync_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_logout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mLogout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_continue_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mContinuePlay:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_sync:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->image_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_nick_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mNickName:Lcom/xiaopeng/xui/widget/XTextView;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_buy:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mBtBuy:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->vipsale_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    return-void
.end method


# virtual methods
.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public hideSyncLoading()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mNickNameStr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mAvaStr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mVipDetails:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mNickNameStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mAvaStr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setBuyClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mBtBuy:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContinuePlayClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mContinuePlay:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mNickNameStr:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mAvaStr:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mVipDetails:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mNickName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget p1, Lcom/xiaopeng/musicradio/common/k$d;->img_header_default:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mAvatar:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0x8

    if-lez p2, :cond_5

    .line 92
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/VipDetail;

    .line 94
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p3, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, p2

    .line 99
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 100
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/VipDetail;

    .line 101
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/VipDetail;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getExpireTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lbtf;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_4
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->setData(Ljava/util/ArrayList;)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mBtBuy:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->renew_vip:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mBtBuy:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->buy_vip:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 121
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mBtBuy:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method public setLogOutClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mLogout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method public setSyncClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVipSaleType(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    return-void
.end method

.method public showContinuePlay(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mContinuePlay:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showSyncLoading()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSync:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->mSyncLoading:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method
