.class public Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;
.super Ljava/lang/Object;
.source "PlayInfo.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final ERROR_CURRENT_NOT_PLAY:I = 0x4e21

.field public static final ERROR_SUPPORT_PLAY_TYPE_GET:I = 0x4e22

.field public static final TYPE_AUDIO_BOOK:I = 0x2

.field public static final TYPE_BT_FM:I = 0x5

.field public static final TYPE_DAB:I = 0x7

.field public static final TYPE_FM:I = 0x3

.field public static final TYPE_NETWORK_FM:I = 0x4

.field public static final TYPE_SONG:I = 0x1

.field public static final TYPE_SPOTIFY:I = 0x8

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USB_MUSIC:I = 0x6


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private error:I

.field private playTime:J

.field private playType:I

.field private remainingTime:J

.field private songId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->error:I

    return v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->playTime:J

    return-wide v0
.end method

.method public getPlayType()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->playType:I

    return v0
.end method

.method public getRemainingTime()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->remainingTime:J

    return-wide v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->album:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->artist:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 203
    iput p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->error:I

    .line 204
    return-void
.end method

.method public setPlayTime(J)V
    .locals 0
    .param p1, "playTime"    # J

    .line 146
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->playTime:J

    .line 147
    return-void
.end method

.method public setPlayType(I)V
    .locals 0
    .param p1, "playType"    # I

    .line 181
    iput p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->playType:I

    .line 182
    return-void
.end method

.method public setRemainingTime(J)V
    .locals 0
    .param p1, "remainingTime"    # J

    .line 160
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->remainingTime:J

    .line 161
    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0
    .param p1, "songId"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->songId:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->title:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayInfo{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", album=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", playTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->playTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->remainingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->playType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", songId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->songId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
