.class public Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "SearchMusicBean.java"


# instance fields
.field private canDownload:Z

.field private canPlay:Z

.field private singers:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field private vip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;
    .locals 1

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;
    .locals 2

    .line 53
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "singers"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->setSingers(Ljava/lang/String;)V

    const-string v1, "songName"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->setSongName(Ljava/lang/String;)V

    const-string v1, "vip"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->setVip(Z)V

    const-string v1, "canDownload"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->setCanDownload(Z)V

    const-string v1, "canPlay"

    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->setCanPlay(Z)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSingers()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->singers:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public isCanDownload()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canDownload:Z

    return v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canPlay:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->vip:Z

    return v0
.end method

.method public setCanDownload(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canDownload:Z

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canPlay:Z

    return-void
.end method

.method public setSingers(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->singers:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->songName:Ljava/lang/String;

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->vip:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicBean{singers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->singers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", songName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->songName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", vip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->vip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", canDownload=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canDownload:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", canPlay=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canPlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->singers:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->songName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-boolean p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->vip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-boolean p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canDownload:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-boolean p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusicBean;->canPlay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
