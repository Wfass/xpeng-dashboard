.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;
.super Ljava/lang/Object;
.source "VipMusicMoreDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectBean"
.end annotation


# instance fields
.field private collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private isLock:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollect()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public isLock()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;->isLock:I

    return v0
.end method

.method public setCollect(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setLock(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;->isLock:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectBean{collect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;->isLock:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
