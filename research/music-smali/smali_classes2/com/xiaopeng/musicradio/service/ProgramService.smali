.class public Lcom/xiaopeng/musicradio/service/ProgramService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "ProgramService.java"

# interfaces
.implements Lblp;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgramService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 198
    invoke-static {}, Lbmm;->b()Lbmm;

    return-void
.end method

.method public addPlayRecord(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    const-class p1, Lblq;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblq;

    goto :goto_0

    .line 164
    :cond_1
    const-class p1, Lblt;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblt;

    goto :goto_0

    .line 167
    :cond_2
    const-class p1, Lblr;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblr;

    .line 168
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lblr;)V

    :goto_0
    return-void
.end method

.method public favMusicOrNot(Z)Z
    .locals 5

    .line 216
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 218
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lbmp;->c(J)Z

    move-result v2

    if-eqz p1, :cond_1

    if-nez v2, :cond_2

    .line 221
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v2, v0}, Lbmn;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 225
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public getListSign()Ljava/lang/String;
    .locals 1

    .line 154
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogo4TodayNews(J)Ljava/lang/String;
    .locals 1

    .line 177
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbmq;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbmq;->b(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getNextInfo()Lbls;
    .locals 1

    .line 67
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->w()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lbls;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingInfo()Lbls;
    .locals 4

    .line 52
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lbls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v1

    invoke-virtual {v0}, Lbls;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbmp;->c(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Lbls;->a(Z)V

    :cond_0
    return-object v0
.end method

.method public getPreInfo()Lbls;
    .locals 1

    .line 61
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->x()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lbls;

    move-result-object v0

    return-object v0
.end method

.method public isCanCollected()Z
    .locals 2

    .line 186
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/service/ProgramService;->getListSign()Ljava/lang/String;

    move-result-object v0

    const-string v1, "headspeech"

    .line 189
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openGuessLike()V
    .locals 2

    .line 204
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->guess_like_title_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/program/fragment/sub/guess_you_like?"

    .line 205
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openProgramHistory()V
    .locals 1

    const-string v0, "/program/fragment/sub/history"

    .line 211
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 149
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 144
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->play()V

    return-void
.end method

.method public playReading(JLjava/lang/String;Z)V
    .locals 4

    .line 111
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbmt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 114
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    if-eqz p4, :cond_1

    .line 116
    new-instance p1, Lash$f;

    invoke-direct {p1, v1}, Lash$f;-><init>(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p2}, Lash$f;->b(Z)V

    .line 118
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 125
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "search"

    const-string p4, "keyboard"

    .line 126
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "voice"

    const-string p4, "reading"

    .line 127
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "keyword"

    .line 128
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "name"

    const-string p3, "common"

    .line 129
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lbrw;->b(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public playReading(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    .line 139
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method public searchReadingKeyword(Ljava/lang/String;Lbfg;)V
    .locals 3

    .line 73
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/service/ProgramService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/musicradio/service/ProgramService$1;-><init>(Lcom/xiaopeng/musicradio/service/ProgramService;Lbfg;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/16 v2, 0x32

    invoke-virtual {v0, p1, p2, v2, v1}, Lbmv;->a(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public updateAlbumInfo4TodayNews(J)V
    .locals 3

    .line 234
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/service/ProgramService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/service/ProgramService$2;-><init>(Lcom/xiaopeng/musicradio/service/ProgramService;)V

    new-instance v2, Lcom/xiaopeng/musicradio/service/ProgramService$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/service/ProgramService$3;-><init>(Lcom/xiaopeng/musicradio/service/ProgramService;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lbmq;->a(JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
