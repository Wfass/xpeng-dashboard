.class public Lcom/xiaopeng/musicradio/bean/xpbean/XingHaiPlay;
.super Ljava/lang/Object;
.source "XingHaiPlay.java"


# instance fields
.field currentScreen:I

.field private videoId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentScreen()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XingHaiPlay;->currentScreen:I

    return v0
.end method

.method public getVideoId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XingHaiPlay;->videoId:J

    return-wide v0
.end method

.method public setCurrentScreen(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XingHaiPlay;->currentScreen:I

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/XingHaiPlay;->videoId:J

    return-void
.end method
