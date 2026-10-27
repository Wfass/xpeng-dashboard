.class public Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;
.super Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;
.source "FavMsRankDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/fav_rank_detail"
.end annotation


# instance fields
.field private mDescription:Lcom/xiaopeng/xui/widget/XTextView;

.field private mFrom:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findView()V
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->findView()V

    .line 23
    sget v0, Lbez$d;->description:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    .line 24
    sget v0, Lbez$d;->from:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public setView()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->setView()V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lbez$g;->update_txt:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x40

    .line 34
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/FavMsRankDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
