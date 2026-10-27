.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsDailyDetailActivity;
.super Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;
.source "FavMsDailyDetailActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/fav_daily_detail"
.end annotation


# instance fields
.field private mDescription:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findView()V
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->findView()V

    .line 18
    sget v0, Lbez$d;->description:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsDailyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsDailyDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public setView()V
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyDetailActivity;->setView()V

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsDailyDetailActivity;->mDescription:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->daily_txt:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/FavMsDailyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
