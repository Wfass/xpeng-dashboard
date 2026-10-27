.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;
.super Ljava/lang/Object;
.source "AisuggestSingleMusicBean.java"


# instance fields
.field private id:J

.field private showWhat:I

.field private voiceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->id:J

    return-wide v0
.end method

.method public getShowWhat()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->showWhat:I

    return v0
.end method

.method public getVoiceId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->voiceId:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->id:J

    return-void
.end method

.method public setShowWhat(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->showWhat:I

    return-void
.end method

.method public setVoiceId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->voiceId:Ljava/lang/String;

    return-void
.end method
