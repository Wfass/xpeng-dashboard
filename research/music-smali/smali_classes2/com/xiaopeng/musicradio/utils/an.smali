.class public Lcom/xiaopeng/musicradio/utils/an;
.super Ljava/lang/Object;
.source "MediaStatUtil.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/an$c;,
        Lcom/xiaopeng/musicradio/utils/an$a;,
        Lcom/xiaopeng/musicradio/utils/an$b;,
        Lcom/xiaopeng/musicradio/utils/an$e;,
        Lcom/xiaopeng/musicradio/utils/an$d;
    }
.end annotation


# static fields
.field private static a:I

.field private static c:Lcom/xiaopeng/musicradio/utils/an$e;

.field private static d:Lcom/xiaopeng/musicradio/utils/an$e;

.field private static e:Lcom/xiaopeng/musicradio/utils/an$b;

.field private static f:Lcom/xiaopeng/musicradio/utils/an$a;

.field private static g:Lcom/xiaopeng/musicradio/utils/an$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/an$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/an;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/an;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an$d;->a:Lcom/xiaopeng/musicradio/utils/an;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/utils/an$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/an$1;-><init>(I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 414
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/an$a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 415
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->d()V

    const/4 p0, 0x0

    .line 416
    sput-object p0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    :cond_1
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 95
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 100
    :cond_1
    new-instance v1, Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/utils/an$e;-><init>(I)V

    sput-object v1, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    .line 101
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    .line 102
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->e:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->f:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    .line 105
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->i:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->j:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->k:I

    .line 108
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->l:I

    .line 109
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iput p1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->m:I

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    .line 112
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    sget-object v3, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v3, v3, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    .line 113
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v0, v0, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v0, v0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 114
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    mul-long/2addr v1, v4

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    .line 116
    :cond_3
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->h:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/utils/an$e;)V

    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    .line 120
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 124
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/an;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 357
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/an$b;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 358
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/an;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 359
    sput-object p0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    :cond_1
    return-void
.end method

.method private static a(Lcom/xiaopeng/musicradio/utils/an$e;)V
    .locals 4

    .line 199
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->e:Ljava/lang/String;

    const-string v2, "voice_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->f:Ljava/lang/String;

    const-string v2, "album_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "voice_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page_id"

    const-string v2, "P0001"

    .line 212
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button_id"

    const-string v2, "B0002"

    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "music_source"

    const-string v2, "qq"

    .line 214
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->h:Ljava/lang/String;

    const-string v2, "play_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->l:I

    if-lez v1, :cond_2

    .line 219
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "music_quality"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 224
    new-instance v1, Lcom/xiaopeng/musicradio/utils/an$2;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/utils/an$2;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 243
    iget v0, p0, Lcom/xiaopeng/musicradio/utils/an$e;->a:I

    if-nez v0, :cond_3

    .line 244
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/utils/an$e;)V

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 11

    .line 364
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/utils/an$b;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 369
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget v3, v2, Lcom/xiaopeng/musicradio/utils/an$b;->d:I

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget v4, v2, Lcom/xiaopeng/musicradio/utils/an$b;->b:I

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-wide v5, v2, Lcom/xiaopeng/musicradio/utils/an$b;->a:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-object v6, v2, Lcom/xiaopeng/musicradio/utils/an$b;->c:Ljava/lang/String;

    .line 370
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-object v9, v0, Lcom/xiaopeng/musicradio/utils/an$b;->e:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v10

    const-string v2, "play"

    move-object v8, p0

    .line 369
    invoke-virtual/range {v1 .. v10}, Lbev;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    .line 33
    sput p0, Lcom/xiaopeng/musicradio/utils/an;->a:I

    return p0
.end method

.method public static b()V
    .locals 5

    .line 168
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 170
    new-instance v1, Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/utils/an$e;-><init>(I)V

    sput-object v1, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    .line 171
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    .line 172
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    const-string v1, "0"

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->e:Ljava/lang/String;

    .line 173
    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->f:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    .line 176
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    sget-object v3, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v3, v3, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    .line 177
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/utils/an$e;)V

    const/4 v0, 0x0

    .line 178
    sput-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    .line 180
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->b()V

    :goto_0
    return-void
.end method

.method private static b(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 83
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openid"

    invoke-interface {p0, v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 446
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    const/16 v1, 0x3d

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    if-ne v0, v1, :cond_1

    return-void

    .line 450
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/utils/an$c;-><init>(Lcom/xiaopeng/musicradio/utils/an$1;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    .line 451
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$c;->a:J

    .line 452
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$c;->b:Ljava/lang/String;

    .line 453
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$c;->c:Ljava/lang/String;

    .line 454
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/utils/an$c;->d:I

    .line 455
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFrom()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/utils/an$c;->e:I

    .line 456
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/musicradio/utils/an$c;->f:Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->e()V

    .line 459
    sput-object v2, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    .line 461
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 462
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 4

    .line 128
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    if-nez p0, :cond_0

    return-void

    .line 133
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/utils/an$e;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 134
    sget-object p0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    .line 135
    sget-object p0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    sget-object p1, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v2, p1, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    .line 136
    sget-object p0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object p1

    invoke-virtual {p1}, Lbrx;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->h:Ljava/lang/String;

    .line 137
    sget-object p0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/utils/an$e;)V

    const/4 p0, 0x0

    .line 138
    sput-object p0, Lcom/xiaopeng/musicradio/utils/an;->c:Lcom/xiaopeng/musicradio/utils/an$e;

    :cond_1
    return-void
.end method

.method private static b(Lcom/xiaopeng/musicradio/utils/an$e;)V
    .locals 7

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "playtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "songtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    iget-wide v5, p0, Lcom/xiaopeng/musicradio/utils/an$e;->g:J

    mul-long/2addr v5, v3

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    const-string v1, "incomplete"

    goto :goto_0

    :cond_0
    const-string v1, "complete"

    :goto_0
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->e:Ljava/lang/String;

    const-string v2, "hash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->i:Ljava/lang/String;

    const-string v2, "song"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->j:Ljava/lang/String;

    const-string v2, "singer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "netease"

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-string v1, "kugou"

    goto :goto_1

    :cond_2
    const-string v1, "qq"

    :goto_1
    const-string v2, "mediasource"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/an$e;->l:I

    if-lez v1, :cond_3

    .line 316
    iget p0, p0, Lcom/xiaopeng/musicradio/utils/an$e;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "quality"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_3
    invoke-static {v0}, Lbrw;->e(Ljava/util/Map;)V

    return-void
.end method

.method public static c()V
    .locals 5

    .line 185
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    .line 187
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->d:J

    sget-object v3, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    iget-wide v3, v3, Lcom/xiaopeng/musicradio/utils/an$e;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$e;->c:J

    .line 188
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/utils/an$e;)V

    const/4 v0, 0x0

    .line 189
    sput-object v0, Lcom/xiaopeng/musicradio/utils/an;->d:Lcom/xiaopeng/musicradio/utils/an$e;

    :cond_0
    return-void
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 471
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/an$c;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 472
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->e()V

    const/4 p0, 0x0

    .line 473
    sput-object p0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    :cond_1
    return-void
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 0

    .line 194
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method private static d()V
    .locals 19

    .line 421
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/utils/an$a;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 425
    sget-object v1, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/xiaopeng/musicradio/utils/an$a;->e:J

    .line 426
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v4

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/utils/an$a;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-wide v6, v0, Lcom/xiaopeng/musicradio/utils/an$a;->b:J

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget v8, v0, Lcom/xiaopeng/musicradio/utils/an$a;->c:I

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-object v9, v0, Lcom/xiaopeng/musicradio/utils/an$a;->d:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-wide v10, v0, Lcom/xiaopeng/musicradio/utils/an$a;->e:J

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget v12, v0, Lcom/xiaopeng/musicradio/utils/an$a;->f:I

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget v13, v0, Lcom/xiaopeng/musicradio/utils/an$a;->g:I

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-wide v14, v0, Lcom/xiaopeng/musicradio/utils/an$a;->h:J

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/an$a;->i:Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iget v1, v1, Lcom/xiaopeng/musicradio/utils/an$a;->j:I

    .line 427
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v18

    move-object/from16 v16, v0

    move/from16 v17, v1

    .line 426
    invoke-virtual/range {v4 .. v18}, Lbev;->a(Ljava/lang/String;JILjava/lang/String;JIIJLjava/lang/String;II)V

    return-void
.end method

.method private static d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    return-void

    .line 259
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayBy()I

    move-result v2

    const-string v3, "play_type"

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayBy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_2
    sget v2, Lcom/xiaopeng/musicradio/utils/an;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    const-string v3, "voice_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "album_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    const/16 v3, 0x3d

    const-string v4, "voice_type"

    if-ne v2, v3, :cond_3

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v1

    if-lez v1, :cond_4

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "music_quality"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p0, "page_id"

    const-string v1, "P0001"

    .line 277
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "button_id"

    const-string v1, "B0003"

    .line 278
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "music_source"

    const-string v1, "qq"

    .line 279
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 283
    new-instance p0, Lcom/xiaopeng/musicradio/utils/an$3;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/utils/an$3;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 12

    if-nez p0, :cond_0

    return-void

    .line 336
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcom/xiaopeng/musicradio/utils/an$b;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/utils/an$b;-><init>(Lcom/xiaopeng/musicradio/utils/an$1;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    .line 338
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$b;->a:J

    .line 339
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$b;->c:Ljava/lang/String;

    .line 340
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iput p1, v0, Lcom/xiaopeng/musicradio/utils/an$b;->b:I

    .line 341
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/utils/an$b;->d:I

    .line 342
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$b;->e:Ljava/lang/String;

    .line 343
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v4

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-wide v0, v0, Lcom/xiaopeng/musicradio/utils/an$b;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    iget-object v7, v0, Lcom/xiaopeng/musicradio/utils/an$b;->c:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v11

    const-string v3, "startplay"

    const-string v8, ""

    const-string v9, ""

    move v5, p1

    .line 343
    invoke-virtual/range {v2 .. v11}, Lbev;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "ui"

    .line 346
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/an;->a(Ljava/lang/String;)V

    .line 347
    sput-object v1, Lcom/xiaopeng/musicradio/utils/an;->e:Lcom/xiaopeng/musicradio/utils/an$b;

    .line 349
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/an;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    :goto_0
    return-void
.end method

.method private static e()V
    .locals 11

    .line 478
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    iget v0, v0, Lcom/xiaopeng/musicradio/utils/an$c;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x0

    :cond_1
    move v7, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget v0, v0, Lcom/xiaopeng/musicradio/utils/an$c;->d:I

    if-ne v0, v1, :cond_1

    move v7, v2

    .line 482
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/utils/an$c;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v6, v0

    .line 483
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v3

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget-object v4, v0, Lcom/xiaopeng/musicradio/utils/an$c;->b:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget-object v5, v0, Lcom/xiaopeng/musicradio/utils/an$c;->c:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget v8, v0, Lcom/xiaopeng/musicradio/utils/an$c;->e:I

    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->g:Lcom/xiaopeng/musicradio/utils/an$c;

    iget-object v9, v0, Lcom/xiaopeng/musicradio/utils/an$c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v10

    invoke-virtual/range {v3 .. v10}, Lbev;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    return-void
.end method

.method public static e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 391
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Lcom/xiaopeng/musicradio/utils/an$a;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/utils/an$a;-><init>(Lcom/xiaopeng/musicradio/utils/an$1;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    .line 393
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/an$a;->b:J

    .line 394
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$a;->a:Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/musicradio/utils/an$a;->c:I

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/an$a;->d:Ljava/lang/String;

    .line 397
    sget-object v0, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    iput p1, v0, Lcom/xiaopeng/musicradio/utils/an$a;->f:I

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p1

    iput p1, v0, Lcom/xiaopeng/musicradio/utils/an$a;->g:I

    .line 399
    sget-object p1, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/xiaopeng/musicradio/utils/an$a;->h:J

    .line 400
    sget-object p1, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/utils/an$a;->i:Ljava/lang/String;

    .line 401
    sget-object p1, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput p0, p1, Lcom/xiaopeng/musicradio/utils/an$a;->j:I

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->d()V

    .line 404
    sput-object v1, Lcom/xiaopeng/musicradio/utils/an;->f:Lcom/xiaopeng/musicradio/utils/an$a;

    .line 406
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/an;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dealAudioEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 156
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 158
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->b()V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 160
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealAudioTypeChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->getPlayState()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 147
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->b()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->b()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 150
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->c()V

    :cond_1
    :goto_0
    return-void
.end method
