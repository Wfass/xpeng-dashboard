.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;
.super Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;
.source "FavMsSingerCollectDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/fav_singer_collect_detail"
.end annotation


# instance fields
.field private mDescription:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findView()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->findView()V

    .line 21
    sget v0, Lbez$d;->description:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getData()V
    .locals 4

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->getData()V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lbez$g;->description_txt:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->getString(I)Ljava/lang/String;

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

    .line 40
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectDetailActivity;->setTotalSong(I)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "showCount"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$d;->tag_type:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$d;->tag_type:I

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTag(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->total_song_txt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsSingerCollectDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
