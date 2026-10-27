.class Lcom/xiaopeng/musicradio/service/ProgramService$1;
.super Lbkv;
.source "ProgramService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/ProgramService;->searchReadingKeyword(Ljava/lang/String;Lbfg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbfg;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/ProgramService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/ProgramService;Lbfg;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->c:Lcom/xiaopeng/musicradio/service/ProgramService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->a:Lbfg;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->a:Lbfg;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lbfg;->a(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/ProgramService$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;)V
    .locals 8

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 79
    new-instance v3, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;-><init>()V

    .line 80
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPlayCount()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(J)V

    .line 81
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->d(Ljava/lang/String;)V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->b(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getIntro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->e(Ljava/lang/String;)V

    .line 84
    invoke-static {v2}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->c(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v4

    invoke-virtual {v4}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 86
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v4

    invoke-virtual {v4}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 87
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v4

    invoke-virtual {v4}, Lbmt;->getPlayState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    .line 89
    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->a(I)V

    .line 91
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->a:Lbfg;

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    .line 95
    iget-object v3, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lbfg;->a(Ljava/util/List;ILjava/lang/String;)V

    .line 97
    :cond_2
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/ProgramService$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lbmt;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
