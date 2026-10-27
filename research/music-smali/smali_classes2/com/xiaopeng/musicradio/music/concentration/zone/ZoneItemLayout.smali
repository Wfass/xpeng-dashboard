.class public Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "ZoneItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/zone/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/zone/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/zone/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRankItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataBean:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mItemLogoBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mLastVuiPlay:Z

.field private mLogo:Ljava/lang/String;

.field private mModelId:Ljava/lang/String;

.field private mModelTitle:Ljava/lang/String;

.field private mModelType:I

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRankTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mSmallLogo:Ljava/lang/String;

.field private mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mDataBean:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelType:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isThreeTwo()Z
    .locals 2

    .line 327
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private setDrawable()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setLogo()V
    .locals 4

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->isThreeTwo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogoBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSmallLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogoBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogoBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogoBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method private setStatus(I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method

.method private updatePlayState(Ljava/lang/String;)V
    .locals 5

    .line 229
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 230
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_zone_song"

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"collectId\":\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_3

    .line 238
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 247
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    goto :goto_1

    :cond_1
    move v3, v2

    .line 244
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    goto :goto_1

    .line 251
    :cond_3
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    .line 253
    :goto_1
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    if-eq p1, v3, :cond_4

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v0, v3}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 256
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;
    .locals 1

    .line 99
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 110
    sget v0, Lbez$d;->item_logo_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogoBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 111
    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 112
    sget v0, Lbez$d;->rank_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mRankTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 113
    sget v0, Lbez$d;->root_play_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 114
    sget v0, Lbez$d;->rank_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 115
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 116
    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 117
    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 118
    sget v0, Lbez$d;->item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 119
    sget v0, Lbez$d;->item_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 120
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 104
    sget v0, Lbez$f;->kugou_layout_zone_item:I

    return v0
.end method

.method public isPlayIng()Z
    .locals 3

    .line 293
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_zone_song"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelId:Ljava/lang/String;

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

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

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
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setDrawable()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 322
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;II)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelType:I

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mDataBean:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getLogo()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLogo:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getSmallLogo()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSmallLogo:Ljava/lang/String;

    .line 149
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mRankTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getModuleId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelId:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mModelTitle:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getSongList()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getSongList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getSongList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 154
    invoke-static {v2, v1}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    sget v3, Lbez$c;->pic_covers_music_220:I

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p3, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setLogo()V

    .line 163
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$g;->vui_play_position:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object p3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p3}, Lbxx;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiAction(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 167
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ms_single_singer_list_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p3, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, p3, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 174
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "defaultExecElementId"

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mDataBean:Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getModuleId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->updatePlayState(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance p2, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance p2, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setDrawable()V

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

.method public updatePlayState(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 268
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->isPlayIng()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 271
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    goto :goto_0

    .line 283
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setStatus(I)V

    .line 285
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_4

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 288
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method
