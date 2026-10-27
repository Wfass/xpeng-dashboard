.class public Lcom/xiaopeng/musicradio/utils/aw;
.super Ljava/lang/Object;
.source "NetRadioMediaStatUtil.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/aw$b;,
        Lcom/xiaopeng/musicradio/utils/aw$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static c:Lcom/xiaopeng/musicradio/utils/aw$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/aw$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/aw;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/aw;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw$a;->a:Lcom/xiaopeng/musicradio/utils/aw;

    return-object v0
.end method

.method private static a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 62
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openid"

    invoke-interface {p0, v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 5

    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 74
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/utils/aw$b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/utils/aw$b;-><init>(I)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    .line 76
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->b:J

    .line 77
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->e:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->f:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->h:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->i:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->d:J

    .line 84
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    iget-wide v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->d:J

    sget-object v3, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    iget-wide v3, v3, Lcom/xiaopeng/musicradio/utils/aw$b;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->c:J

    .line 85
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aw;->a(Lcom/xiaopeng/musicradio/utils/aw$b;)V

    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    .line 88
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 92
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aw;->d(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Lcom/xiaopeng/musicradio/utils/aw$b;)V
    .locals 4

    .line 111
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->c:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->e:Ljava/lang/String;

    const-string v2, "voice_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->f:Ljava/lang/String;

    const-string v2, "album_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "voice_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "time_duration"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_id"

    const-string v1, "P0001"

    .line 124
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "button_id"

    const-string v1, "B0002"

    .line 125
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "music_source"

    const-string v1, "qq"

    .line 126
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 128
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {}, Lbsa;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 131
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    const-string v2, "para"

    .line 132
    invoke-interface {v1, v2, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    const-string v1, "music_voice_playtime"

    .line 133
    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    .line 134
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aw;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 136
    new-instance v1, Lcom/xiaopeng/musicradio/utils/aw$1;

    invoke-direct {v1, v0, p0}, Lcom/xiaopeng/musicradio/utils/aw$1;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    invoke-static {v1}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 142
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetRadioMediaStatUtil"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 4

    .line 96
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/aw$b;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 102
    sget-object p0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->d:J

    .line 103
    sget-object p0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->d:J

    sget-object v2, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/utils/aw$b;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/utils/aw$b;->c:J

    .line 104
    sget-object p0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aw;->a(Lcom/xiaopeng/musicradio/utils/aw$b;)V

    const/4 p0, 0x0

    .line 105
    sput-object p0, Lcom/xiaopeng/musicradio/utils/aw;->c:Lcom/xiaopeng/musicradio/utils/aw$b;

    :cond_1
    return-void
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 184
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    return-void
.end method

.method private static d(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    return-void

    .line 156
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "album_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x6

    .line 160
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "voice_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "page_id"

    const-string v1, "P0001"

    .line 161
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "button_id"

    const-string v1, "B0003"

    .line 162
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "music_source"

    const-string v1, "qq"

    .line 163
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 165
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {}, Lbsa;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 168
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v1

    const-string v2, "para"

    .line 169
    invoke-interface {v1, v2, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    const-string v1, "music_voice_play"

    .line 170
    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    .line 171
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p0

    .line 172
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aw;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 173
    new-instance v1, Lcom/xiaopeng/musicradio/utils/aw$2;

    invoke-direct {v1, v0, p0}, Lcom/xiaopeng/musicradio/utils/aw$2;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    invoke-static {v1}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 180
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetRadioMediaStatUtil"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
