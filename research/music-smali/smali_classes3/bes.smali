.class public Lbes;
.super Ljava/lang/Object;
.source "RxConcentrationModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbes$a;,
        Lbes$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 33
    iput v0, p0, Lbes;->a:I

    const/4 v1, 0x5

    .line 34
    iput v1, p0, Lbes;->b:I

    const/16 v1, 0xc

    .line 35
    iput v1, p0, Lbes;->c:I

    .line 36
    iput v0, p0, Lbes;->d:I

    return-void
.end method

.method private a(Lbes$a;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lbes$a;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "RxConcentrationModel"

    if-eqz p2, :cond_10

    .line 95
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 96
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lbes;->a:I

    if-ge v2, v3, :cond_0

    goto/16 :goto_8

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p2

    .line 101
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "listsign_recommend_music"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 102
    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "recommentMusicResult success"

    .line 107
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v2, p0, Lbes;->a:I

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lbes$a;->a:Ljava/util/List;

    const-string p2, "rankMusicResult error"

    if-eqz p3, :cond_f

    .line 110
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 111
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_2

    goto/16 :goto_7

    .line 115
    :cond_2
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p3

    .line 116
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v7, "listsign_rank_music"

    .line 117
    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v7

    invoke-virtual {v7}, Lbdu;->d()I

    move-result v7

    if-eq v7, v5, :cond_3

    .line 124
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v7

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lbit;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_4
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {p3, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lbes$a;->b:Ljava/util/List;

    if-eqz p4, :cond_e

    .line 131
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 132
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p3, p0, Lbes;->b:I

    if-ge p2, p3, :cond_5

    goto/16 :goto_6

    .line 136
    :cond_5
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object p2

    .line 137
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 138
    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_6
    new-instance p3, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;-><init>()V

    .line 144
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCategoryId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->setCategoryId(Ljava/lang/String;)V

    .line 146
    iget p4, p0, Lbes;->b:I

    invoke-interface {p2, v3, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->setCollectList(Ljava/util/List;)V

    const-string/jumbo p2, "xpPlayMusicResult success"

    .line 147
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p3, p1, Lbes$a;->c:Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    if-eqz p5, :cond_d

    .line 150
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 151
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p3, p0, Lbes;->c:I

    if-ge p2, p3, :cond_7

    goto/16 :goto_5

    .line 155
    :cond_7
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object p2

    const-string p3, "mainHotSingerResultBean success"

    .line 156
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget p3, p0, Lbes;->c:I

    invoke-interface {p2, v3, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lbes$a;->d:Ljava/util/List;

    if-eqz p6, :cond_c

    .line 160
    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_4

    .line 164
    :cond_8
    invoke-virtual {p6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object p2

    .line 165
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;

    .line 167
    new-instance p6, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v0, "listsign_tags"

    .line 168
    invoke-virtual {p6, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioPic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    goto :goto_3

    .line 176
    :cond_9
    invoke-virtual {p5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string p4, "hotRadioResult success"

    .line 179
    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 181
    iget p4, p0, Lbes;->d:I

    if-lt p2, p4, :cond_b

    move p2, p4

    .line 184
    :cond_b
    invoke-virtual {p3, v3, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lbes$a;->e:Ljava/util/List;

    return-object p1

    :cond_c
    :goto_4
    const-string p1, "hotRadioResult error"

    .line 161
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_d
    :goto_5
    const-string p1, "mainHotSingerResultBean error"

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_e
    :goto_6
    const-string/jumbo p1, "xpPlayMusicResult error"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 112
    :cond_f
    :goto_7
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_10
    :goto_8
    const-string p1, "recommentMusicResult error"

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic a(Lbes;Lbes$a;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lbes$a;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p6}, Lbes;->a(Lbes$a;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lbes$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lbes;
    .locals 1

    .line 40
    invoke-static {}, Lbes$b;->a()Lbes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lber;Ljava/lang/String;IIII)V
    .locals 8

    const-string v0, "RxConcentrationModel"

    const-string v1, "getConcentrationData start"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p2, p3, p4, p5, p6}, Lbet;->a(Ljava/lang/String;IIII)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {p6}, Lbet;->a(I)Lio/reactivex/Observable;

    move-result-object v3

    invoke-static {p6}, Lbet;->b(I)Lio/reactivex/Observable;

    move-result-object v4

    invoke-static {p6}, Lbet;->c(I)Lio/reactivex/Observable;

    move-result-object v5

    .line 50
    invoke-static {p6}, Lbet;->d(I)Lio/reactivex/Observable;

    move-result-object v6

    new-instance v7, Lbes$3;

    invoke-direct {v7, p0}, Lbes$3;-><init>(Lbes;)V

    .line 49
    invoke-static/range {v2 .. v7}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function5;)Lio/reactivex/Observable;

    move-result-object p2

    .line 62
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lbes$1;

    invoke-direct {p3, p0, p1}, Lbes$1;-><init>(Lbes;Lber;)V

    new-instance p4, Lbes$2;

    invoke-direct {p4, p0, p1}, Lbes$2;-><init>(Lbes;Lber;)V

    .line 63
    invoke-virtual {p2, p3, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
