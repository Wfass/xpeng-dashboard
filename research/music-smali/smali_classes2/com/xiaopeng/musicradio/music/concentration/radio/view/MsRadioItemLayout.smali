.class public Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsRadioItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRmItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field private mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLastVuiPlay:Z

.field private mLogo:Ljava/lang/String;

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->playMusic(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method private playMusic(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 8

    .line 260
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 266
    :cond_1
    invoke-static {}, Lbjl;->c()V

    .line 267
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bd;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 270
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->b()Lbaj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 271
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbjl;->g(ILjava/lang/String;)V

    return-void
.end method

.method private refreshLogo()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLogo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 256
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setDrawable()V

    return-void
.end method

.method private setDrawable()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setStatus(I)V
    .locals 1

    .line 175
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioItemPresenter;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 88
    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 89
    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 90
    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 91
    sget v0, Lbez$d;->item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 92
    sget v0, Lbez$d;->radio_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 93
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 94
    sget v0, Lbez$d;->root_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 95
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 82
    sget v0, Lbez$f;->ms_layout_radio_item:I

    return v0
.end method

.method public getRadioData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public isPlayIng()Z
    .locals 3

    .line 217
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifySpeechChange()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->refreshLogo()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 247
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 248
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->refreshLogo()V

    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 9

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLogo:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 118
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 119
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->isPlayIng()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 125
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_2

    .line 137
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    move v0, v4

    goto :goto_2

    .line 134
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 141
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    .line 142
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    :goto_1
    move v0, v2

    .line 144
    :goto_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v6, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;

    invoke-direct {v6, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v6, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$2;

    invoke-direct {v6, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v5, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 164
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ms_radio_list_item_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbez$g;->vui_play_position:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLayoutLoadable(Z)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 168
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setDrawable()V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateRadioPlayState(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 192
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->isPlayIng()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    goto :goto_0

    .line 207
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V

    .line 209
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 212
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method
