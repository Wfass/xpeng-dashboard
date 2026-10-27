.class public Lcom/xiaopeng/musicradio/music/rank/main/view/KugooRankMainFragment;
.super Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;
.source "KugooRankMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/kugoo_rank"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getFragmentPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/fragment/kugoo_rank"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kugou"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
