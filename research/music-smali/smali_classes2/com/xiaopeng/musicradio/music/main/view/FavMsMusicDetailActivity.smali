.class public Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;
.super Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;
.source "FavMsMusicDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/fav_music_detail"
.end annotation


# instance fields
.field private mDescription:Lcom/xiaopeng/xui/widget/XTextView;

.field protected mFrom:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findView()V
    .locals 3

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findView()V

    .line 37
    sget v0, Lbez$d;->description:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    .line 38
    sget v0, Lbez$d;->from:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    .line 39
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 40
    sget v1, Lbez$c;->img_logo_page_qq:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 42
    sget v1, Lbez$c;->img_logo_netease_source:I

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 31
    sget v0, Lbez$f;->music_activity_music_detail:I

    return v0
.end method

.method public getData()V
    .locals 4

    .line 55
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getData()V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lbez$g;->description_txt:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    :goto_0
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0}, Lbac;->b()Lbab;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x40

    .line 67
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public initPlayAll()V
    .locals 2

    .line 123
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->isPlayCurrentCollect()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 125
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall_black:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_continue_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop_black:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->resetPlayAll()V

    :goto_1
    return-void
.end method

.method public resetPlayAll()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall_black:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_play_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTotalSong(I)V
    .locals 4

    .line 74
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setTotalSong(I)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "showCount"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$d;->tag_type:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$d;->tag_type:I

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTag(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->total_song_txt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xbc

    .line 82
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setView()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setView()V

    return-void
.end method

.method public updatePlayAll()V
    .locals 5

    .line 90
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v2, Lbez$c;->ic_btn_playall_black:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$g;->bt_continue_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop_black:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->resetPlayAll()V

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->resetPlayAll()V

    .line 109
    :goto_1
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mCurrentState:I

    if-eq v1, v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->vuilabels:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 112
    iput v1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->mCurrentState:I

    :cond_4
    return-void
.end method
