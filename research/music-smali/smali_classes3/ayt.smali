.class public Layt;
.super Ljava/lang/Object;
.source "MusicFetchModel.java"

# interfaces
.implements Laxy$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layt$a;,
        Layt$b;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/concurrent/atomic/AtomicLong;

.field protected b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Layt$a;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Layt;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Layt;->c:J

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicFetchModel init : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Layt;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicFetchModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a()Layt;
    .locals 1

    .line 96
    sget-object v0, Layt$b;->a:Layt;

    return-object v0
.end method

.method private a(ILjava/lang/String;J)V
    .locals 4

    .line 237
    iget-object v0, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 238
    iget v0, p0, Layt;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Layt;->b:I

    .line 240
    iget v0, p0, Layt;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 243
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",time="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicFetchModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance p1, Lbfh$f;

    invoke-direct {p1, v2, v1}, Lbfh$f;-><init>(ZZ)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Layt;ILjava/lang/String;J)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Layt;->a(ILjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a(II)J
    .locals 2

    .line 229
    iget-wide v0, p0, Layt;->c:J

    mul-int/lit8 p1, p1, 0x32

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method protected a(ILjava/util/List;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "MusicFetchModel"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 194
    invoke-static {}, Lare;->d()Lare;

    move-result-object v3

    invoke-virtual {v3}, Lare;->m()Ljava/util/List;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v2

    .line 196
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 197
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 198
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "music_love"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v6

    invoke-virtual {v6, p3}, Lbaf;->a(I)Lbae;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lbae;->a(Ljava/lang/String;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v6

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInsertList:reissueInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " tempInfo = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    .line 202
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    invoke-interface {v0, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 210
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 211
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 212
    invoke-static {v4, p3}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 216
    :cond_2
    iget-wide v5, p0, Layt;->c:J

    mul-int/lit8 v7, p1, 0x32

    add-int/2addr v7, v3

    int-to-long v7, v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInsertList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " sMax = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Layt;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " page = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " create = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 219
    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 220
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 221
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 262
    iget-object v0, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x36ee80

    cmp-long v0, v2, v0

    const-string v1, "onDataFetch"

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 264
    invoke-virtual {p0, v2, v1}, Layt;->a(ZLjava/lang/String;)V

    .line 266
    :cond_0
    iget-object v0, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v0, "onNetWorkValid"

    .line 267
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p0, v2, v1}, Layt;->a(ILjava/lang/String;)Z

    return-void
.end method

.method protected a(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(I)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const-wide/16 v1, 0x7530

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0xea60

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x3e8

    .line 148
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Layt;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0, p2}, Layt;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Layt;->c()Lben;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 156
    invoke-virtual {p0}, Layt;->b()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchCollectedMusic:openId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicFetchModel"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Layt;->c()Lben;

    move-result-object p1

    invoke-interface {p1}, Lben;->g()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 159
    iget-object p1, p0, Layt;->e:Layt$a;

    if-eqz p1, :cond_0

    const-string p1, "fetchCollectedMusic:dispose:logout"

    .line 160
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Layt;->e:Layt$a;

    invoke-virtual {p1}, Layt$a;->d()V

    .line 162
    iput-object v2, p0, Layt;->e:Layt$a;

    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object p1, p0, Layt;->e:Layt$a;

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {p1}, Layt$a;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Layt;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "fetchCollectedMusic:isRunning"

    .line 168
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_2
    iget-object p1, p0, Layt;->e:Layt$a;

    invoke-virtual {p1}, Layt$a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "fetchCollectedMusic:dispose:changed"

    .line 171
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Layt;->e:Layt$a;

    invoke-virtual {p1}, Layt$a;->d()V

    .line 173
    iput-object v2, p0, Layt;->e:Layt$a;

    .line 176
    :cond_3
    iput-object v0, p0, Layt;->d:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    sub-long v4, v2, v4

    .line 178
    iput-wide v4, p0, Layt;->c:J

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchCollectedMusic: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Layt;->c:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 181
    invoke-virtual {p0, v0}, Layt;->c(Ljava/lang/String;)Layt$a;

    move-result-object p1

    iput-object p1, p0, Layt;->e:Layt$a;

    .line 182
    iget-object p1, p0, Layt;->e:Layt$a;

    invoke-virtual {p1}, Layt$a;->a()V

    return-void
.end method

.method protected c(Ljava/lang/String;)Layt$a;
    .locals 1

    .line 186
    new-instance v0, Layt$a;

    invoke-direct {v0, p0, p1}, Layt$a;-><init>(Layt;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c()Lben;
    .locals 1

    .line 112
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    return-object v0
.end method

.method protected d()Lbci;
    .locals 1

    .line 116
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 1

    .line 248
    iget-object v0, p0, Layt;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e()V
    .locals 3

    .line 124
    iget-object v0, p0, Layt;->e:Layt$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Layt$a;->d()V

    .line 126
    iput-object v1, p0, Layt;->e:Layt$a;

    .line 128
    :cond_0
    iput-object v1, p0, Layt;->d:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "clear"

    .line 129
    invoke-virtual {p0, v0, v1}, Layt;->a(ZLjava/lang/String;)V

    .line 130
    iget-object v0, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method protected f()V
    .locals 3

    .line 233
    iget-object v0, p0, Layt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method protected g()V
    .locals 1

    .line 279
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->i()V

    .line 280
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->h()V

    .line 281
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->l()V

    return-void
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected i()Lbae;
    .locals 1

    .line 356
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    return-object v0
.end method

.method protected j()Layq;
    .locals 1

    .line 360
    invoke-static {}, Layq;->a()Layq;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 272
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    const-string v0, "NetWorkValid"

    invoke-virtual {p0, p1, v0}, Layt;->a(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Layt;->g()V

    :cond_0
    return-void
.end method
