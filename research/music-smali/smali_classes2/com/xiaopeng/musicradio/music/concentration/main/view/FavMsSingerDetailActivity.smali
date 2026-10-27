.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;
.super Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;
.source "FavMsSingerDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/fav_singer_detail"
.end annotation


# instance fields
.field private mDescription:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findView()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findView()V

    .line 26
    sget v0, Lbez$d;->description:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 20
    sget v0, Lbez$f;->music_activity_singer_detail:I

    return v0
.end method

.method public getData()V
    .locals 4

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getData()V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lbez$g;->description_txt:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTotalSong(I)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->setTotalSong(I)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "showCount"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$d;->tag_type:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$d;->tag_type:I

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTag(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->total_song_txt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->setView()V

    return-void
.end method
