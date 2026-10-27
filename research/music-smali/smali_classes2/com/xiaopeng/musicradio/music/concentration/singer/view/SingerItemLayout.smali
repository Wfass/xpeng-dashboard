.class public Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "SingerItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/singer/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/singer/view/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/singer/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFirst:I

.field private mHotImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mId:Ljava/lang/String;

.field private mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mLastVuiPlay:Z

.field private mLogo:Ljava/lang/String;

.field private mMsHotImgs:[I

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private final mSecond:I

.field private mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private final mThree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 60
    new-array p1, p1, [I

    sget v0, Lbez$c;->img_small_no_1:I

    const/4 v1, 0x0

    aput v0, p1, v1

    sget v0, Lbez$c;->img_small_no_2:I

    const/4 v2, 0x1

    aput v0, p1, v2

    sget v0, Lbez$c;->img_small_no_3:I

    const/4 v3, 0x2

    aput v0, p1, v3

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mMsHotImgs:[I

    .line 62
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mFirst:I

    .line 63
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSecond:I

    .line 64
    iput v3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mThree:I

    .line 65
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 60
    new-array p1, p1, [I

    sget p2, Lbez$c;->img_small_no_1:I

    const/4 v0, 0x0

    aput p2, p1, v0

    sget p2, Lbez$c;->img_small_no_2:I

    const/4 v1, 0x1

    aput p2, p1, v1

    sget p2, Lbez$c;->img_small_no_3:I

    const/4 v2, 0x2

    aput p2, p1, v2

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mMsHotImgs:[I

    .line 62
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mFirst:I

    .line 63
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSecond:I

    .line 64
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mThree:I

    .line 65
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 60
    new-array p1, p1, [I

    sget p2, Lbez$c;->img_small_no_1:I

    const/4 p3, 0x0

    aput p2, p1, p3

    sget p2, Lbez$c;->img_small_no_2:I

    const/4 v0, 0x1

    aput p2, p1, v0

    sget p2, Lbez$c;->img_small_no_3:I

    const/4 v1, 0x2

    aput p2, p1, v1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mMsHotImgs:[I

    .line 62
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mFirst:I

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSecond:I

    .line 64
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mThree:I

    .line 65
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method private isPlaySinger()Z
    .locals 3

    .line 249
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_artist_radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshLogo()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLogo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

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

    .line 245
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setDrawable()V

    return-void
.end method

.method private setDrawable()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setStatus(I)V
    .locals 1

    .line 193
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerItemPresenter;
    .locals 1

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 94
    sget v0, Lbez$d;->hot_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mHotImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 95
    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 96
    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 97
    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 98
    sget v0, Lbez$d;->item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 99
    sget v0, Lbez$d;->radio_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 100
    sget v0, Lbez$d;->item_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 101
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 102
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 88
    sget v0, Lbez$f;->ms_layout_singer_item:I

    return v0
.end method

.method public notifySpeechChange()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

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

    .line 270
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->refreshLogo()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 237
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->refreshLogo()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;II)V
    .locals 7

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLogo:Ljava/lang/String;

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    if-eq p3, v2, :cond_0

    if-eq p3, v1, :cond_0

    .line 130
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mHotImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 131
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mHotImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mHotImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mHotImg:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mMsHotImgs:[I

    aget p3, v5, p3

    invoke-virtual {v4, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 134
    :goto_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v4, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$1;

    invoke-direct {v4, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    invoke-virtual {p3, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v4, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$2;

    invoke-direct {v4, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    invoke-virtual {p3, v4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v4

    sget v5, Lbez$c;->pic_covers_music_220:I

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p3, v4, v5, v6}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 154
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p3

    invoke-virtual {p3}, Lbqp;->b()I

    move-result p3

    if-nez p3, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->isPlaySinger()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, v3

    :goto_1
    if-eqz p3, :cond_3

    .line 162
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p3

    invoke-virtual {p3}, Lbid;->q()I

    move-result p3

    if-ne p3, v1, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 166
    :goto_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V

    goto :goto_3

    .line 168
    :cond_3
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V

    move v4, v3

    .line 171
    :goto_3
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbez$g;->vui_play_position:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object p3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p3}, Lbxx;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiAction(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 175
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ms_single_singer_list_item_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, p3, v4}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 182
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "defaultExecElementId"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setDrawable()V

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

    .line 205
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->isPlaySinger()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V

    .line 222
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 225
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method
