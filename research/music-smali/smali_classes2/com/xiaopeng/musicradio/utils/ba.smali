.class public Lcom/xiaopeng/musicradio/utils/ba;
.super Ljava/lang/Object;
.source "ProgramMediaStatUtil.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/ba$a;,
        Lcom/xiaopeng/musicradio/utils/ba$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static c:Lcom/xiaopeng/musicradio/utils/ba$b;

.field private static d:Lblu;

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lblr;",
            ">;"
        }
    .end annotation
.end field

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Lblu;

    invoke-direct {v0}, Lblu;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/ba;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/ba$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/ba;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/ba;
    .locals 1

    .line 65
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba$a;->a:Lcom/xiaopeng/musicradio/utils/ba;

    return-object v0
.end method

.method public static a(Lblr;)V
    .locals 3

    .line 257
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {v0}, Lblu;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPlayTrackRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lblr;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProgramMediaStatUtil"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object p0, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {p0}, Lblu;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 261
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ba;->b()V

    :cond_0
    return-void
.end method

.method private static a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 208
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openid"

    invoke-interface {p0, v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "album_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_id"

    const-string v1, "P0001"

    .line 232
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x3

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "voice_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "button_id"

    const-string v1, "B0001"

    .line 234
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 236
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {}, Lbsa;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 239
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    const-string v2, "para"

    .line 240
    invoke-interface {v1, v2, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    const-string v1, "music_album_view"

    .line 241
    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    .line 242
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p0

    .line 243
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 244
    new-instance v1, Lcom/xiaopeng/musicradio/utils/ba$3;

    invoke-direct {v1, v0, p0}, Lcom/xiaopeng/musicradio/utils/ba$3;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    invoke-static {v1}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 250
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProgramMediaStatUtil"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/xiaopeng/musicradio/utils/ba$b;)V
    .locals 4

    .line 121
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->c:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->e:Ljava/lang/String;

    const-string v2, "voice_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "album_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "voice_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page_id"

    const-string v2, "P0001"

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button_id"

    const-string v2, "B0002"

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "music_source"

    const-string v2, "qq"

    .line 136
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->h:Ljava/lang/String;

    const-string v2, "play_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 141
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lbsa;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 144
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "para"

    .line 145
    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    const-string v2, "music_voice_playtime"

    .line 146
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 149
    new-instance v2, Lcom/xiaopeng/musicradio/utils/ba$1;

    invoke-direct {v2, v1, v0}, Lcom/xiaopeng/musicradio/utils/ba$1;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    invoke-static {v2}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 156
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->a:I

    if-nez v1, :cond_2

    .line 157
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->b(Lcom/xiaopeng/musicradio/utils/ba$b;)V

    .line 159
    :cond_2
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProgramMediaStatUtil"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 3

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    sget-object v1, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {v1}, Lblu;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveRecords"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {v1}, Lblu;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackRecords"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {v1}, Lblu;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "radioRecords"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/xiaopeng/musicradio/utils/ba;->e:Ljava/util/List;

    sget-object v2, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {v2}, Lblu;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    sget-object v1, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    invoke-virtual {v1}, Lblu;->d()V

    .line 276
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/utils/ba$4;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/utils/ba$4;-><init>()V

    invoke-virtual {v1, v0, v2}, Lbmv;->a(Ljava/util/Map;Lbkv;)V

    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "headspeech"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 87
    :goto_0
    new-instance v1, Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/utils/ba$b;-><init>(I)V

    sput-object v1, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    .line 88
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->b:J

    .line 89
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->e:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->f:J

    .line 91
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->g:J

    goto :goto_1

    .line 93
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->d:J

    .line 94
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    iget-wide v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->d:J

    sget-object v3, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    iget-wide v3, v3, Lcom/xiaopeng/musicradio/utils/ba$b;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->c:J

    .line 95
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->h:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/musicradio/utils/ba$b;)V

    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    .line 98
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    .line 102
    :goto_1
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->d(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    return-void
.end method

.method private static b(Lcom/xiaopeng/musicradio/utils/ba$b;)V
    .locals 7

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "playtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->g:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "songtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->c:J

    iget-wide v5, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->g:J

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

    .line 217
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->e:Ljava/lang/String;

    const-string v2, "hash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->i:Ljava/lang/String;

    const-string v2, "song"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->j:Ljava/lang/String;

    const-string v2, "singer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget p0, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->k:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "source"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v0}, Lbrw;->e(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->e:Ljava/util/List;

    return-object v0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/ba$b;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 111
    sget-object p0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->d:J

    .line 112
    sget-object p0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->d:J

    sget-object v2, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/utils/ba$b;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->c:J

    .line 113
    sget-object p0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    invoke-virtual {v0}, Lbrx;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/ba$b;->h:Ljava/lang/String;

    .line 114
    sget-object p0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/musicradio/utils/ba$b;)V

    const/4 p0, 0x0

    .line 115
    sput-object p0, Lcom/xiaopeng/musicradio/utils/ba;->c:Lcom/xiaopeng/musicradio/utils/ba$b;

    :cond_1
    return-void
.end method

.method static synthetic d()Lblu;
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ba;->d:Lblu;

    return-object v0
.end method

.method private static d(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    return-void

    .line 173
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    sget v1, Lcom/xiaopeng/musicradio/utils/ba;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "voice_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "album_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p0

    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object p0

    const-string v1, "headspeech"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, "voice_type"

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "page_id"

    const-string v1, "P0001"

    .line 184
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "button_id"

    const-string v1, "B0003"

    .line 185
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "music_source"

    const-string v1, "qq"

    .line 186
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 188
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {}, Lbsa;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 191
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    const-string v2, "para"

    .line 192
    invoke-interface {v1, v2, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    const-string v1, "music_voice_play"

    .line 193
    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    .line 194
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p0

    .line 195
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 196
    new-instance v1, Lcom/xiaopeng/musicradio/utils/ba$2;

    invoke-direct {v1, v0, p0}, Lcom/xiaopeng/musicradio/utils/ba$2;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    invoke-static {v1}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 203
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProgramMediaStatUtil"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 5

    .line 330
    sget-wide v0, Lcom/xiaopeng/musicradio/utils/ba;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/musicradio/utils/ba;->h:J

    .line 332
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->t()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/xiaopeng/musicradio/utils/ba;->j:J

    .line 333
    new-instance v0, Lblr;

    invoke-direct {v0}, Lblr;-><init>()V

    .line 334
    sget-wide v1, Lcom/xiaopeng/musicradio/utils/ba;->g:J

    invoke-virtual {v0, v1, v2}, Lblr;->d(J)V

    .line 335
    sget-wide v1, Lcom/xiaopeng/musicradio/utils/ba;->h:J

    invoke-virtual {v0, v1, v2}, Lblr;->e(J)V

    .line 336
    sget-wide v1, Lcom/xiaopeng/musicradio/utils/ba;->j:J

    invoke-virtual {v0, v1, v2}, Lblr;->c(J)V

    .line 337
    sget-wide v1, Lcom/xiaopeng/musicradio/utils/ba;->h:J

    sget-wide v3, Lcom/xiaopeng/musicradio/utils/ba;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lblr;->b(J)V

    .line 338
    sget-wide v1, Lcom/xiaopeng/musicradio/utils/ba;->f:J

    invoke-virtual {v0, v1, v2}, Lblr;->a(J)V

    .line 339
    sget-boolean v1, Lcom/xiaopeng/musicradio/utils/ba;->k:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lblr;->a(I)V

    .line 340
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lblr;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillinPlayRecord trackId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/xiaopeng/musicradio/utils/ba;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMediaStatUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealAudioInfo.. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMediaStatUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 306
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v2

    sget-wide v4, Lcom/xiaopeng/musicradio/utils/ba;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealAudioInfo.. trackid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/ba;->e()V

    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/musicradio/utils/ba;->f:J

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/musicradio/utils/ba;->g:J

    .line 315
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->r()Z

    move-result p1

    sput-boolean p1, Lcom/xiaopeng/musicradio/utils/ba;->k:Z

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    :cond_2
    :goto_0
    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState.. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMediaStatUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 350
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->getPosition()I

    move-result p1

    int-to-long v0, p1

    sput-wide v0, Lcom/xiaopeng/musicradio/utils/ba;->i:J

    :cond_1
    return-void
.end method
