.class public Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;
.super Ljava/lang/Object;
.source "ProgramListBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private extData:Ljava/lang/String;

.field private keyWord:Ljava/lang/String;

.field private listed:I

.field private metaDataList:Ljava/lang/String;

.field private metadata:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private searchType:I

.field private semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

.field private source:Ljava/lang/String;

.field private tracks:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;
    .locals 4

    const-string v0, "from"

    const-string v1, "param"

    const/4 v2, 0x0

    .line 33
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 36
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dui_xp"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v2

    :cond_1
    move-object p0, v3

    .line 45
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;
    .locals 2

    .line 53
    new-instance v0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "params"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setParams(Ljava/lang/String;)V

    const-string v1, "tracks"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setTracks(Ljava/lang/String;)V

    const-string v1, "page"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setPage(Ljava/lang/String;)V

    const-string v1, "metadata"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setMetadata(Ljava/lang/String;)V

    const-string v1, "source"

    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setSource(Ljava/lang/String;)V

    const-string v1, "keyWord"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setKeyWord(Ljava/lang/String;)V

    const-string v1, "searchType"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setSearchType(I)V

    const-string v1, "listed"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setListed(I)V

    const-string v1, "extData"

    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setExtData(Ljava/lang/String;)V

    const-string v1, "metaDataList"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setMetaDataList(Ljava/lang/String;)V

    const-string v1, "query"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setQuery(Ljava/lang/String;)V

    const-string v1, "semantic"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-class v1, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    invoke-static {p0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setSemantic(Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getListed()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->listed:I

    return v0
.end method

.method public getMetaDataList()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->metaDataList:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->metadata:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->searchType:I

    return v0
.end method

.method public getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->tracks:Ljava/lang/String;

    return-object v0
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->extData:Ljava/lang/String;

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public setListed(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->listed:I

    return-void
.end method

.method public setMetaDataList(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->metaDataList:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->metadata:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->page:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->params:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->query:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->searchType:I

    return-void
.end method

.method public setSemantic(Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTracks(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->tracks:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramListBean{params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tracks=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->tracks:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", page=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->page:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", metadata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->metadata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->searchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->listed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->extData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
