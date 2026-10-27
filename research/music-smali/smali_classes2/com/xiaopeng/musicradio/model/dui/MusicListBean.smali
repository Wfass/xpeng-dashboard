.class public Lcom/xiaopeng/musicradio/model/dui/MusicListBean;
.super Ljava/lang/Object;
.source "MusicListBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private extData:Ljava/lang/String;

.field private keyWord:Ljava/lang/String;

.field private listed:I

.field private metaDataList:Ljava/lang/String;

.field private metadata:Ljava/lang/String;

.field private page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

.field private params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

.field private query:Ljava/lang/String;

.field private searchType:I

.field private semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

.field private source:Ljava/lang/String;

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metadata:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->keyWord:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->source:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->extData:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metaDataList:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getListed()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->listed:I

    return v0
.end method

.method public getMetaDataList()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metaDataList:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metadata:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->searchType:I

    return v0
.end method

.method public getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->tracks:Ljava/util/List;

    return-object v0
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->extData:Ljava/lang/String;

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public setListed(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->listed:I

    return-void
.end method

.method public setMetaDataList(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metaDataList:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metadata:Ljava/lang/String;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-void
.end method

.method public setParams(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->query:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->searchType:I

    return-void
.end method

.method public setSemantic(Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->tracks:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicListBean{params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->tracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", searchType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->searchType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->listed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->extData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", metaDataList=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->metaDataList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", query=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->query:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", semantic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->semantic:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
