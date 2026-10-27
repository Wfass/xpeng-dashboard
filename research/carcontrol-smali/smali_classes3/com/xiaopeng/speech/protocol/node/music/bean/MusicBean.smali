.class public Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "MusicBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extData:Ljava/lang/String;

.field private keyWord:Ljava/lang/String;

.field private listed:I

.field private metaDataList:Ljava/lang/String;

.field private metadata:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field private searchType:I

.field private source:Ljava/lang/String;

.field private tracks:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    .locals 4

    const-string v0, "from"

    const-string v1, "param"

    const/4 v2, 0x0

    .line 47
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dui_xp"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v2

    .line 58
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    .locals 2

    .line 66
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "params"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setParams(Ljava/lang/String;)V

    const-string v1, "tracks"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setTracks(Ljava/lang/String;)V

    const-string v1, "page"

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setPage(Ljava/lang/String;)V

    const-string v1, "metadata"

    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setMetadata(Ljava/lang/String;)V

    const-string v1, "source"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setSource(Ljava/lang/String;)V

    const-string v1, "keyWord"

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setKeyWord(Ljava/lang/String;)V

    const-string v1, "searchType"

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setSearchType(I)V

    const-string v1, "listed"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setListed(I)V

    const-string v1, "extData"

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setExtData(Ljava/lang/String;)V

    const-string v1, "metaDataList"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setMetaDataList(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getListed()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    return v0
.end method

.method public getMetaDataList()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    return-object v0
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public setListed(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    return-void
.end method

.method public setMetaDataList(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTracks(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicBean{params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tracks=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", page=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", metadata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 84
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
