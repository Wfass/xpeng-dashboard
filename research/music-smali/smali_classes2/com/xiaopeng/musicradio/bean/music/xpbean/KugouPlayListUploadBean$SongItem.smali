.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;
.super Ljava/lang/Object;
.source "KugouPlayListUploadBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SongItem"
.end annotation


# instance fields
.field private hash:Ljava/lang/String;

.field private insertTime:J

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertTime()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->insertTime:J

    return-wide v0
.end method

.method public getOffset()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->offset:I

    return v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->hash:Ljava/lang/String;

    return-void
.end method

.method public setInsertTime(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->insertTime:J

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouPlayListUploadBean$SongItem;->offset:I

    return-void
.end method
