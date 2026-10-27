.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;
.super Ljava/lang/Object;
.source "VipMusicMoreInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo;
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

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollect()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public isLock()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;->isLock:I

    return v0
.end method

.method public setCollect(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;->collect:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setLock(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectBean;->isLock:I

    return-void
.end method
