.class public Lbry;
.super Ljava/lang/Object;
.source "SpeechSearchStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbry$c;,
        Lbry$b;,
        Lbry$a;
    }
.end annotation


# static fields
.field private static a:Lbry$a;

.field private static b:Z

.field private static c:Lbry$b;

.field private static d:J

.field private static e:Z

.field private static f:J

.field private static g:J

.field private static h:J


# direct methods
.method public static a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReportProgramInfo query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSearchStatUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lbry$b;

    invoke-direct {v0}, Lbry$b;-><init>()V

    sput-object v0, Lbry;->c:Lbry$b;

    .line 45
    sget-object v0, Lbry;->c:Lbry$b;

    iput-wide p2, v0, Lbry$b;->e:J

    .line 46
    iput-wide p0, v0, Lbry$b;->d:J

    .line 47
    iput-object p4, v0, Lbry$b;->f:Ljava/lang/String;

    .line 48
    iput-object p5, v0, Lbry$b;->a:Ljava/lang/String;

    .line 49
    iput-object p6, v0, Lbry$b;->b:Ljava/lang/String;

    .line 50
    iput-object p7, v0, Lbry$b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbry$c;)V
    .locals 1

    const-string v0, "change"

    .line 107
    invoke-static {p0, v0, p1}, Lbry;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Lbry$c;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Lbry$c;)V
    .locals 2

    .line 82
    sget-object v0, Lbry;->a:Lbry$a;

    if-eqz v0, :cond_6

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 86
    :cond_0
    iget-object v0, v0, Lbry$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbry;->a:Lbry$a;

    iget-object v1, v1, Lbry$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_5

    sget-object v0, Lbry;->a:Lbry$a;

    iget-object v0, v0, Lbry$a;->f:Ljava/lang/String;

    .line 87
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 88
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 89
    sget-object v0, Lbry;->a:Lbry$a;

    iget-object v0, v0, Lbry$a;->a:Ljava/lang/String;

    const-string v1, "query"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lbry;->a:Lbry$a;

    iget-object v0, v0, Lbry$a;->b:Ljava/lang/String;

    const-string v1, "intent"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lbry;->a:Lbry$a;

    iget-object v0, v0, Lbry$a;->c:Ljava/lang/String;

    const-string v1, "slot"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "albumName"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p0

    const-string v0, "artist"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 96
    invoke-interface {p2}, Lbry$c;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "collect"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    invoke-static {p1}, Lbry;->a(Ljava/util/Map;)V

    :cond_5
    const/4 p0, 0x0

    .line 100
    sput-object p0, Lbry;->a:Lbry$a;

    :cond_6
    :goto_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lbry$c;)V
    .locals 1

    const-string v0, "change"

    .line 205
    invoke-static {p0, v0, p1}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;Lbry$c;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;JLbry$c;)V
    .locals 4

    .line 170
    sget-object v0, Lbry;->c:Lbry$b;

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    sget-object v2, Lbry;->c:Lbry$b;

    iget-wide v2, v2, Lbry$b;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lbry;->c:Lbry$b;

    iget-wide v2, v2, Lbry$b;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    sget-object v0, Lbry;->c:Lbry$b;

    iget-object v0, v0, Lbry$b;->f:Ljava/lang/String;

    .line 176
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 177
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 178
    sget-object v0, Lbry;->c:Lbry$b;

    iget-object v0, v0, Lbry$b;->a:Ljava/lang/String;

    const-string v1, "query"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lbry;->c:Lbry$b;

    iget-object v0, v0, Lbry$b;->b:Ljava/lang/String;

    const-string v1, "intent"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lbry;->c:Lbry$b;

    iget-object v0, v0, Lbry$b;->c:Ljava/lang/String;

    const-string v1, "slot"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "albumName"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "artist"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "position"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "chapter"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-wide p2, Lbry;->f:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    sput-wide p2, Lbry;->f:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "id"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    .line 188
    invoke-interface {p4}, Lbry$c;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "collect"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "forground"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "P10242"

    const-string p2, "B001"

    const-string p3, "speech_program_play"

    .line 191
    invoke-static {p0, p2, p3, p1}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    const/4 p0, 0x1

    .line 194
    sput-boolean p0, Lbry;->e:Z

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lbry;->h:J

    const/4 p0, 0x0

    .line 196
    sput-object p0, Lbry;->c:Lbry$b;

    :cond_4
    :goto_0
    return-void
.end method

.method private static a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;Lbry$c;)V
    .locals 4

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lbry;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    sget-boolean v0, Lbry;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 229
    sput-wide v0, Lbry;->h:J

    const/4 v0, 0x0

    .line 230
    sput-boolean v0, Lbry;->e:Z

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "albumName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "artist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 237
    invoke-interface {p2}, Lbry$c;->a()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "collect"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "chapter"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-wide v1, Lbry;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "lastId"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    .line 241
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "source"

    const-string p1, "qq"

    .line 242
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "forground"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "P10243"

    const-string p1, "B001"

    const-string p2, "speech_program_change"

    .line 244
    invoke-static {p0, p1, p2, v0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    new-instance v0, Lbry$a;

    invoke-direct {v0}, Lbry$a;-><init>()V

    sput-object v0, Lbry;->a:Lbry$a;

    .line 36
    sget-object v0, Lbry;->a:Lbry$a;

    iput-object p0, v0, Lbry$a;->f:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lbry$a;->a:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lbry$a;->b:Ljava/lang/String;

    .line 39
    iput-object p3, v0, Lbry$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    new-instance v0, Lbry$a;

    invoke-direct {v0}, Lbry$a;-><init>()V

    sput-object v0, Lbry;->a:Lbry$a;

    .line 27
    sget-object v0, Lbry;->a:Lbry$a;

    iput-object p1, v0, Lbry$a;->d:Ljava/lang/String;

    .line 28
    iput-object p0, v0, Lbry$a;->e:Ljava/lang/String;

    .line 29
    iput-object p2, v0, Lbry$a;->a:Ljava/lang/String;

    .line 30
    iput-object p3, v0, Lbry$a;->b:Ljava/lang/String;

    .line 31
    iput-object p4, v0, Lbry$a;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Lbry;->b:Z

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lbry;->a:Lbry$a;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbry;->g:J

    .line 75
    sget-wide v0, Lbry;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbry;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    const-string v1, "qq"

    .line 76
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "forground"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "P10240"

    const-string v1, "B001"

    const-string v2, "speech_music_play"

    .line 78
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbry$c;)V
    .locals 1

    const-string v0, "pause"

    .line 112
    invoke-static {p0, v0, p1}, Lbry;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Lbry$c;)V

    return-void
.end method

.method private static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Lbry$c;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lbry;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    sget-boolean v0, Lbry;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    sput-boolean v0, Lbry;->b:Z

    const-wide/16 v0, 0x0

    .line 132
    sput-wide v0, Lbry;->g:J

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "albumName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p0

    const-string v1, "artist"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 138
    invoke-interface {p2}, Lbry$c;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "collect"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, "type"

    .line 140
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "source"

    const-string p1, "qq"

    .line 141
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "forground"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-wide p0, Lbry;->d:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "lastId"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "P10241"

    const-string p1, "B001"

    const-string p2, "speech_music_change"

    .line 144
    invoke-static {p0, p1, p2, v0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lbry$c;)V
    .locals 1

    const-string v0, "pause"

    .line 210
    invoke-static {p0, v0, p1}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;Lbry$c;)V

    return-void
.end method
