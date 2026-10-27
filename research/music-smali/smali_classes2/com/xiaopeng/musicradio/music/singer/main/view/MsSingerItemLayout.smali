.class public Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsSingerItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/singer/main/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field private mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mLastVuiPlay:Z

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private mStartPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mStartPosition:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mLastVuiPlay:Z

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 56
    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mStartPosition:I

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mLastVuiPlay:Z

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 56
    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mStartPosition:I

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mLastVuiPlay:Z

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isPlaySinger()Z
    .locals 3

    .line 215
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 216
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

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mId:Ljava/lang/String;

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

.method private setStatus(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    const/4 v0, 0x0

    .line 188
    :goto_1
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 191
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mLastVuiPlay:Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 89
    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 90
    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 91
    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 92
    sget v0, Lbez$d;->item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 93
    sget v0, Lbez$d;->radio_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 94
    sget v0, Lbez$d;->item_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 95
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 82
    sget v0, Lbez$f;->music_item_singer_single_list:I

    return v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V
    .locals 11

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mId:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mRadioTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 129
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->isPlaySinger()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 137
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 141
    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setStatus(I)V

    goto :goto_2

    .line 143
    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setStatus(I)V

    move v4, v2

    .line 145
    :goto_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getPosition()I

    move-result v0

    .line 146
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 147
    invoke-interface {v5, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 148
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ms_single_singer_list_item_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mItemView:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 149
    invoke-virtual {v10}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbez$g;->vui_play_position:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    iget p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mStartPosition:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    iget p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mStartPosition:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 153
    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {p1, v1, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 157
    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p1, v1, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v4}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 160
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mPlayItem:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getVuiElementTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-interface {v5, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mStartPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
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

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 198
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->isPlaySinger()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    .line 202
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setStatus(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setStatus(I)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setStatus(I)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setStatus(I)V

    :goto_0
    return-void
.end method
