.class public Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "RankItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/musicradio/music/concentration/rank/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/rank/view/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/rank/presenter/RankItemPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xiaopeng/musicradio/music/concentration/rank/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRankItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field private mImgPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLastVuiPlay:Z

.field private mLogo:Ljava/lang/String;

.field private mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRankTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mSongOne:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSongThree:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSongTow:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    return-void
.end method

.method private getSongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " - "

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 322
    aget-object p1, v0, v2

    return-object p1

    .line 325
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initVui(ILcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "|"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbez$g;->vui_play_position:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->sb:Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 213
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 218
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 220
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v0, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 221
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 223
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 224
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    .line 225
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p2, v0, p3}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 226
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method private refreshLogo()V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setDrawable()V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 310
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    return-void
.end method

.method private setDrawable()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setStatus(I)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method

.method private updatePlayState(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 6

    .line 165
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    .line 168
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_rank_music"

    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"collectId\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 176
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 177
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 186
    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    goto :goto_1

    :cond_1
    move v4, v3

    .line 183
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 190
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setPlayState(I)V

    .line 191
    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    .line 194
    :goto_1
    invoke-direct {p0, p2, p1, v4}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->initVui(ILcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V

    return-void
.end method

.method private updateSongName()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbit;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v2, :cond_2

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongOne:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongTow:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongThree:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongOne:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongTow:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongOne:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/rank/presenter/RankItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/rank/presenter/RankItemPresenter;
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/rank/presenter/RankItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/presenter/RankItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 98
    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 99
    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 100
    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 101
    sget v0, Lbez$d;->rank_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRankTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 102
    sget v0, Lbez$d;->song_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongOne:Lcom/xiaopeng/xui/widget/XTextView;

    .line 103
    sget v0, Lbez$d;->song_tow:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongTow:Lcom/xiaopeng/xui/widget/XTextView;

    .line 104
    sget v0, Lbez$d;->song_three:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSongThree:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    sget v0, Lbez$d;->img_play_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mImgPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 106
    sget v0, Lbez$d;->root_play_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 107
    sget v0, Lbez$d;->rank_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 108
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 109
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 92
    sget v0, Lbez$f;->music_item_rank_music_main:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
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

    .line 263
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "listsign_rank_music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mId:Ljava/lang/String;

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

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

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

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_2

    .line 333
    sget v0, Lbez$d;->play_item_layout:I

    if-ne p1, v0, :cond_0

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 338
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 339
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjl;->e(ILjava/lang/String;)V

    .line 340
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->t(I)V

    goto :goto_0

    .line 341
    :cond_0
    sget v0, Lbez$d;->root_play_layout:I

    if-eq p1, v0, :cond_1

    sget v0, Lbez$d;->img_play_layout:I

    if-ne p1, v0, :cond_2

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 343
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v5

    const/4 v6, 0x1

    .line 342
    invoke-static/range {v1 .. v6}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 352
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->refreshLogo()V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->isPlayIng()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->updatePlayState(Z)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

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

    .line 299
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->refreshLogo()V

    .line 300
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->updateSongName()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 2

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMusicRadioItem:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 128
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLogo:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRankTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mId:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->updateSongName()V

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->refreshLogo()V

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->updatePlayState(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mImgPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mRootPlayLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setDrawable()V

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

    .line 238
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->isPlayIng()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    goto :goto_0

    .line 253
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->setStatus(I)V

    .line 255
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 258
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method
