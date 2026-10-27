.class public Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;
.super Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;
.source "FindCoverBy163Impl.java"


# static fields
.field private static final URL:Ljava/lang/String; = "http://music.163.com/api/search/pc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;-><init>()V

    return-void
.end method


# virtual methods
.method public findSongCover(Ljava/lang/String;Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;)V
    .locals 3
    .param p1, "songName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "s"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "offset"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "limit"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "http://music.163.com/api/search/pc"

    new-instance v2, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    invoke-direct {v2, p0, p2}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;->httpRequest(Ljava/lang/String;Ljava/util/Map;Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;)V

    .line 59
    return-void
.end method
