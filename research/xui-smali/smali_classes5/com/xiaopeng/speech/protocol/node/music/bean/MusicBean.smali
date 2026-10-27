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

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

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

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 49
    const-string v2, "param"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 51
    :cond_0
    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "from":Ljava/lang/String;
    const-string v3, "dui_xp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    return-object v0

    .line 58
    .end local v2    # "from":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 59
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Lorg/json/JSONException;
    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 66
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;-><init>()V

    .line 67
    .local v0, "musicBean":Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    if-eqz p0, :cond_0

    .line 68
    const-string v1, "params"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setParams(Ljava/lang/String;)V

    .line 69
    const-string v1, "tracks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setTracks(Ljava/lang/String;)V

    .line 70
    const-string v1, "page"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setPage(Ljava/lang/String;)V

    .line 71
    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setMetadata(Ljava/lang/String;)V

    .line 72
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setSource(Ljava/lang/String;)V

    .line 73
    const-string v1, "keyWord"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setKeyWord(Ljava/lang/String;)V

    .line 74
    const-string v1, "searchType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setSearchType(I)V

    .line 75
    const-string v1, "listed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setListed(I)V

    .line 76
    const-string v1, "extData"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setExtData(Ljava/lang/String;)V

    .line 77
    const-string v1, "metaDataList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->setMetaDataList(Ljava/lang/String;)V

    .line 79
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
    .param p1, "extData"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setListed(I)V
    .locals 0
    .param p1, "listed"    # I

    .line 158
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    .line 159
    return-void
.end method

.method public setMetaDataList(Ljava/lang/String;)V
    .locals 0
    .param p1, "metaDataList"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 0
    .param p1, "metadata"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSearchType(I)V
    .locals 0
    .param p1, "searchType"    # I

    .line 142
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    .line 143
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTracks(Ljava/lang/String;)V
    .locals 0
    .param p1, "tracks"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicBean{params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tracks=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", page=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", metadata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->params:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->tracks:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->page:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metadata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->keyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->searchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->listed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->extData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;->metaDataList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method
