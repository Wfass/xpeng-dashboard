.class public Lasp;
.super Ljava/lang/Object;
.source "XpModelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasp$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lasp;
    .locals 1

    .line 25
    invoke-static {}, Lasp$a;->a()Lasp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 72
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPageSize(I)V

    .line 73
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPageSize()I

    move-result v0

    invoke-virtual {p1, p2, v0, p3}, Lbev;->a(IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(ILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 79
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 80
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lbev;->a(ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILbkv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;",
            ">;)V"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 134
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 135
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAreaCode(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setTypeCode(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 138
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v2

    .line 139
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getTypeCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v5

    move-object v6, p5

    .line 138
    invoke-virtual/range {v1 .. v6}, Lbev;->a(ILjava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 152
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAreaCode(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setTypeCode(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result p2

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAreaCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getTypeCode()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1, p2, p3, v0, p4}, Lbev;->a(ILjava/lang/String;Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(IZLbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setNeedCache(Z)V

    .line 55
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v0

    const-string v1, "XpModelHelper"

    invoke-virtual {p1, p2, v0, v1, p3}, Lbev;->b(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(IZLjava/lang/String;Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 45
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setNeedCache(Z)V

    .line 46
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setTag(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result p3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0, p4}, Lbev;->a(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbev;->b(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IIIILbkv;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setType(I)V

    .line 100
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setSort(I)V

    .line 101
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 102
    invoke-virtual {v0, p5}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 103
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getSort()I

    move-result v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v5

    .line 104
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v6

    const-string v7, "XpModelHelper"

    move-object v8, p6

    .line 103
    invoke-virtual/range {v1 .. v8}, Lbev;->a(Ljava/lang/String;IIIILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IIIIZLbkv;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    move v1, p5

    .line 162
    invoke-virtual {v0, p5}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    move v1, p3

    .line 163
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    move v1, p4

    .line 164
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPageSize(I)V

    move-object v1, p1

    .line 165
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    move v1, p2

    .line 166
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setType(I)V

    move/from16 v1, p6

    .line 167
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setNeedCache(Z)V

    .line 168
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v4

    .line 169
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPageSize()I

    move-result v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v6

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v7

    const-string v8, "XpModelHelper"

    move-object/from16 v9, p7

    .line 168
    invoke-virtual/range {v1 .. v9}, Lbev;->b(Ljava/lang/String;IIIIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IIILbkv;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setVersion(I)V

    .line 36
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 37
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 38
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getVersion()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v4

    .line 39
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v6

    move-object v7, p5

    .line 38
    invoke-virtual/range {v1 .. v7}, Lbev;->a(Ljava/lang/String;IIIZLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IILbkv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 63
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v3

    .line 66
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v6

    const-string v4, "XpModelHelper"

    move-object v5, p4

    .line 65
    invoke-virtual/range {v1 .. v6}, Lbev;->a(Ljava/lang/String;ILjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IIZLbkv;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 86
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 88
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setNeedCache(Z)V

    .line 89
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v4

    .line 91
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v5

    const-string v6, "XpModelHelper"

    move-object v7, p5

    .line 90
    invoke-virtual/range {v1 .. v7}, Lbev;->a(Ljava/lang/String;IIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IZLbkv;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;I)V"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 117
    invoke-virtual {v0, p5}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 118
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setNeedCache(Z)V

    .line 121
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v4

    .line 122
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v7

    const-string v5, "XpModelHelper"

    move-object v6, p4

    .line 121
    invoke-virtual/range {v1 .. v7}, Lbev;->a(Ljava/lang/String;IZLjava/lang/String;Lbkv;I)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;",
            ">;)V"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 182
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lbev;->e(Ljava/lang/String;Lbkv;)V

    return-void
.end method

.method public b(ILbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 110
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 111
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v0

    const-string v1, "XpModelHelper"

    invoke-virtual {p1, v0, v1, p2}, Lbev;->d(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(Lbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbev;->a(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(Ljava/lang/String;IILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;)V"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 196
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 198
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPageSize(I)V

    .line 199
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result p3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPageSize()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0, p4}, Lbev;->c(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(Ljava/lang/String;IIZLbkv;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;)V"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 228
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 229
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setNeedCache(Z)V

    .line 230
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v4

    .line 231
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v5

    const-string v6, "XpModelHelper"

    move-object v7, p5

    .line 230
    invoke-virtual/range {v1 .. v7}, Lbev;->b(Ljava/lang/String;IIZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c(ILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 127
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setType(I)V

    .line 128
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lbev;->b(ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c(Ljava/lang/String;IILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;)V"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 205
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPage(I)V

    .line 207
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setPageSize(I)V

    .line 208
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result p3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPageSize()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0, p4}, Lbev;->b(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public d(ILbkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 146
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lbev;->c(ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public e(ILbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;",
            ">;)V"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 175
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setAccountType(I)V

    .line 176
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v0

    const-string v1, "XpModelHelper"

    invoke-virtual {p1, v0, v1, p2}, Lbev;->c(ILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public f(ILbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;-><init>()V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->setId(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lbev;->c(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
