.class public Lbcr;
.super Lcom/xiaopeng/musicradio/model/music/n;
.source "NeteaseUserDataProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;-><init>()V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_user_song_id"

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_user_play_list_sign"

    return-object v0
.end method

.method protected x()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_user_next_song_id"

    return-object v0
.end method

.method public y()I
    .locals 1

    const v0, 0x20210

    return v0
.end method
