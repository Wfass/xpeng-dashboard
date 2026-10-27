.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;
.super Ljava/lang/Object;
.source "CollectVersionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private favouriteSongVersion:I

.field private otherCollectVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavouriteSongVersion()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->favouriteSongVersion:I

    return v0
.end method

.method public getOtherCollectVersion()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->otherCollectVersion:I

    return v0
.end method

.method public setFavouriteSongVersion(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->favouriteSongVersion:I

    return-void
.end method

.method public setOtherCollectVersion(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->otherCollectVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBean{favouriteSongVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->favouriteSongVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", otherCollectVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->otherCollectVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
