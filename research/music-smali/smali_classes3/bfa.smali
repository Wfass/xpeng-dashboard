.class public Lbfa;
.super Ljava/lang/Object;
.source "MusicAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfa$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lbfa;
    .locals 1

    .line 55
    sget-object v0, Lbfa$a;->a:Lbfa;

    return-object v0
.end method

.method static synthetic a(Lbfa;Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;)Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;
    .locals 0

    .line 45
    iput-object p1, p0, Lbfa;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    return-object p1
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSingleMusic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p3, Lbub$a;->login_invalidate:I

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    const-string p1, "playSingleMusic: postEvent ShowLoginDialog"

    .line 130
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    new-instance v1, Lbfa$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lbfa$1;-><init>(Lbfa;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lbdm;->a(Lbdm$b;)V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 251
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, p1, v0}, Lbfa;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playMusicAlbum id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bCollect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lbfa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lbub$a;->login_invalidate:I

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbdm;->a(Lbdm$b;)V

    return-void

    .line 229
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v2, "listsign_album"

    .line 230
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p2, "listsign_collect"

    .line 232
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 235
    :cond_2
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string p2, "music_extra_aisugest"

    .line 236
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMusicInternal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Laxz;

    const/16 v1, 0x32

    invoke-direct {v0, p2, v1}, Laxz;-><init>(Ljava/lang/String;I)V

    .line 240
    invoke-static {}, Layg;->a()Layg;

    move-result-object p2

    invoke-virtual {p2}, Layg;->c()V

    .line 241
    new-instance p2, Lbfa$4;

    invoke-direct {p2, p0, v0}, Lbfa$4;-><init>(Lbfa;Lass;)V

    invoke-static {p2}, Lbql;->j(Ljava/lang/Runnable;)V

    .line 247
    invoke-static {p1}, Lbru;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, v0}, Lbfa;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try openMusicAlbum id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lbfa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 166
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    new-instance v1, Lbfa$2;

    invoke-direct {v1, p0, p1}, Lbfa$2;-><init>(Lbfa;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lbev;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    .line 180
    invoke-static {p1}, Lbru;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try openMusicCollect id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lbfa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 192
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    new-instance v1, Lbfa$3;

    invoke-direct {v1, p0, p1}, Lbfa$3;-><init>(Lbfa;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lbev;->b(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 115
    iget-object p1, p1, Lasj$m;->a:Ljava/lang/String;

    const-string v0, "MusicAisuggest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbfa;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->getVoiceId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbfa;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lbfa;->a(Ljava/lang/String;J)V

    :cond_0
    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lbfa;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    return-void
.end method

.method public receiveAisuggest(Lart$a;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 69
    invoke-virtual {p1}, Lart$a;->a()Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const-string v1, ""

    const-string v2, "CMD error, cmd="

    const-string v3, "play"

    const-string v4, "onReceiveSuggest musicAlbumBean == null"

    const-string v5, "open"

    const-string v6, "MusicAisuggest"

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 71
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getObject()Ljava/lang/String;

    move-result-object v0

    const-class v7, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-static {v0, v7}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    if-nez v0, :cond_0

    .line 73
    invoke-static {v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceiveSuggest musicAlbumBean == "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbfa;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbfa;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v3, "replay"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_8

    .line 87
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getObject()Ljava/lang/String;

    move-result-object v0

    const-class v7, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    invoke-static {v0, v7}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;

    if-nez v0, :cond_5

    .line 89
    invoke-static {v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbfa;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 95
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicCollectBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbfa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveSuggest: SGST_TYPE_SINGLEMUSIC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getObject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getObject()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    if-nez v0, :cond_9

    return-void

    .line 105
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSuggest: SGST_TYPE_SINGLEMUSIC cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object v0, p0, Lbfa;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    .line 107
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->getVoiceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lbfa;->a(Ljava/lang/String;J)V

    :cond_a
    :goto_0
    return-void
.end method

.method public receiveEgg(Lart$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->ASYNC:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 64
    invoke-virtual {p1}, Lart$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbfa;->a(Ljava/lang/String;)V

    return-void
.end method
