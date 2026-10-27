.class public Lbap;
.super Ljava/lang/Object;
.source "KugouHistoryMigration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbap$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0}, Lbap;->b()V

    return-void
.end method

.method public static a()Lbap;
    .locals 1

    .line 44
    sget-object v0, Lbap$a;->a:Lbap;

    return-object v0
.end method

.method static synthetic a(Lbap;Ljava/util/List;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lbap;->b(Ljava/util/List;I)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertAlbumListToV2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouHistoryMigration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbap$1;

    invoke-direct {v2, p0, p2, p1}, Lbap$1;-><init>(Lbap;ILjava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lbev;->e(Ljava/lang/String;Lbkv;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lbap;->d()V

    .line 60
    invoke-direct {p0}, Lbap;->c()V

    return-void
.end method

.method static synthetic b(Lbap;Ljava/util/List;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lbap;->a(Ljava/util/List;I)V

    return-void
.end method

.method private b(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Lbap$2;

    invoke-direct {v0, p0, p1, p2}, Lbap$2;-><init>(Lbap;Ljava/util/List;I)V

    const-wide/16 p1, 0x7d0

    invoke-static {v0, p1, p2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private c()V
    .locals 11

    const-string v0, "SP_MIRGATION_ALBUM"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v1

    invoke-virtual {v1}, Lbek;->k()J

    move-result-wide v1

    .line 69
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v3

    invoke-virtual {v3}, Lbdm;->e()Lbej;

    move-result-object v3

    invoke-virtual {v3}, Lbej;->n()Ljava/lang/String;

    move-result-object v3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrationAlbum: sysUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KugouHistoryMigration"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-static {}, Lbav;->a()Lbav;

    move-result-object v4

    invoke-virtual {v4}, Lbav;->g()Ljava/util/List;

    move-result-object v4

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    .line 75
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    const-string v7, "migrationAlbum: start========= "

    .line 76
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    .line 78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "migrationAlbum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v8, v3}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "listsign_local_rm_music"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "listsign_user_album"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "listsign_recommend_music"

    .line 82
    invoke-virtual {v8, v9}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v3, "migrationAlbum: end========="

    .line 88
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lbav;->a()Lbav;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbav;->b(Ljava/util/List;)V

    .line 90
    invoke-direct {p0, v1, v6}, Lbap;->a(Ljava/util/List;I)V

    .line 92
    :cond_4
    invoke-static {v0, v6}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$m;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$m;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method static synthetic c(Lbap;Ljava/util/List;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lbap;->d(Ljava/util/List;I)V

    return-void
.end method

.method private c(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertMusicListToV2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouHistoryMigration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbap$3;

    invoke-direct {v2, p0, p2, p1}, Lbap$3;-><init>(Lbap;ILjava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lbev;->d(Ljava/lang/String;Lbkv;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 10

    const-string v0, "SP_MIRGATION_MUSIC"

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v1

    invoke-virtual {v1}, Lbek;->k()J

    move-result-wide v1

    .line 149
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v3

    invoke-virtual {v3}, Lbdm;->e()Lbej;

    move-result-object v3

    invoke-virtual {v3}, Lbej;->n()Ljava/lang/String;

    move-result-object v3

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrationMusic: sysUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KugouHistoryMigration"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 152
    invoke-static {}, Lbaq;->a()Lbaq;

    move-result-object v1

    invoke-virtual {v1}, Lbaq;->i()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "migrationMusic: start========= "

    .line 154
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "migrationMusic: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v7, v3}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v8

    const-string v9, "local_prefix_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "migrationMusic: end========="

    .line 166
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lbaq;->a()Lbaq;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbaq;->d(Ljava/util/List;)V

    .line 168
    invoke-direct {p0, v5, v4}, Lbap;->c(Ljava/util/List;I)V

    .line 170
    :cond_3
    invoke-static {v0, v4}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 171
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$x;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$x;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method static synthetic d(Lbap;Ljava/util/List;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lbap;->c(Ljava/util/List;I)V

    return-void
.end method

.method private d(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Lbap$4;

    invoke-direct {v0, p0, p1, p2}, Lbap$4;-><init>(Lbap;Ljava/util/List;I)V

    const-wide/16 p1, 0x7d0

    invoke-static {v0, p1, p2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public onBindedSuccess(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "KugouHistoryMigration"

    const-string v0, "onBindedSuccess: "

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lbap;->b()V

    return-void
.end method
