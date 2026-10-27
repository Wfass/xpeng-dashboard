.class public Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;
.super Ljava/lang/Object;
.source "MusicRadioInfo.java"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->songs:Ljava/util/List;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setSongs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicRadioInfo;->songs:Ljava/util/List;

    return-void
.end method
