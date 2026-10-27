.class public Laqr;
.super Ljava/lang/Object;
.source "AudioTypeControlModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqr$a;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "AudioTypeControlModel"


# instance fields
.field a:Landroid/os/Handler;

.field private volatile d:I

.field private e:I

.field private f:Z

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Laqt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Laqr;->d:I

    .line 35
    iput v0, p0, Laqr;->e:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Laqr;->f:Z

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laqr;->g:Landroid/util/SparseArray;

    .line 51
    invoke-direct {p0}, Laqr;->i()V

    return-void
.end method

.method synthetic constructor <init>(Laqr$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Laqr;-><init>()V

    return-void
.end method

.method public static a()Laqr;
    .locals 1

    .line 47
    sget-object v0, Laqr$a;->a:Laqr;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "xiaopengmusic-player"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Laqr;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10

    .line 72
    iget v0, p0, Laqr;->d:I

    if-ne p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    sget-object v0, Laqr;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAudioType:newAudioType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAudioType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laqr;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Laqr;->d:I

    iput v0, p0, Laqr;->e:I

    .line 77
    iput p1, p0, Laqr;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 79
    :goto_0
    iget-object v3, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 80
    iget-object v3, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 81
    iget-object v4, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laqt;

    if-ne v3, p1, :cond_1

    .line 83
    invoke-interface {v4}, Laqt;->register()V

    move-object v2, v4

    goto :goto_4

    .line 85
    :cond_1
    iget v5, p0, Laqr;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 86
    invoke-interface {v4}, Laqt;->unregister()V

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3

    .line 89
    iget v7, p0, Laqr;->e:I

    if-eq v7, v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v6

    .line 92
    :goto_1
    sget-object v7, Laqr;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "old:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Laqr;->e:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", new:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Laqr;->d:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", shouldPause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-nez v3, :cond_4

    .line 96
    invoke-interface {v4}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v3, :cond_4

    .line 97
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v7, 0x3d

    if-ne v3, v7, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    if-eqz v6, :cond_5

    .line 102
    invoke-interface {v4}, Laqt;->stop()V

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    .line 104
    invoke-interface {v4}, Laqt;->pauseByLogic()V

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const-string v0, "msg_type"

    .line 108
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    iget v1, p0, Laqr;->e:I

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v2, :cond_8

    .line 111
    sget-object v0, Laqr;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAudioTypeInternal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Laqt;->getPlayState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    invoke-interface {v2}, Laqt;->getPlayState()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public a(ILaqt;)V
    .locals 1

    .line 63
    iget-object v0, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 162
    sget-object v0, Laqr;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shouldPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 174
    :cond_0
    sget-object v0, Laqr;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootPlay: + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Laqr;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "music_cache_url_start"

    .line 176
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    .line 179
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "music_cache_url_invalid"

    .line 180
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bh;->g(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, v5, v0

    if-lez v0, :cond_2

    .line 182
    invoke-static {v2, v4}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 183
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0}, Larg;->b()V

    .line 186
    :cond_2
    iget-boolean v0, p0, Laqr;->f:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, -0x1

    const-string v1, "msg_type"

    .line 189
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    .line 190
    sget-object v1, Laqr;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    iput-boolean v4, p0, Laqr;->f:Z

    .line 193
    iget-object v1, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqt;

    if-eqz v0, :cond_4

    .line 195
    invoke-interface {v0, p1}, Laqt;->rebootPlay(Z)V

    goto :goto_0

    .line 197
    :cond_4
    sget-object p1, Laqr;->c:Ljava/lang/String;

    const-string v0, "skip rebootplay as control model is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_5
    sget-object p1, Laqr;->c:Ljava/lang/String;

    const-string v0, "skip rebootplay as ig off"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    :goto_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$i;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_6
    :goto_1
    sget-object p1, Laqr;->c:Ljava/lang/String;

    const-string v0, "want to rebootPlay,but pm is not normal"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget v0, p0, Laqr;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 3

    .line 117
    sget-object v0, Laqr;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAudioType to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    new-instance v0, Laqr$1;

    invoke-direct {v0, p0, p1}, Laqr$1;-><init>(Laqr;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Laqr;->f:Z

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Laqr;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "msg_type"

    const/4 v1, -0x1

    .line 143
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)Laqt;
    .locals 1

    .line 212
    iget-object v0, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laqt;

    return-object p1
.end method

.method public d(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 259
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    invoke-interface {v0}, Lbfe;->switchUsbMusic()V

    return p1

    .line 262
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    invoke-interface {v0, p1}, Laqt;->playNext(I)I

    move-result p1

    return p1
.end method

.method public d()Laqt;
    .locals 1

    .line 217
    invoke-virtual {p0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Laqr;->f:Z

    return v0
.end method

.method public f()V
    .locals 3

    .line 229
    sget-object v0, Laqr;->c:Ljava/lang/String;

    const-string v1, "stopAllMedia: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->k()V

    const/4 v0, -0x1

    .line 233
    invoke-virtual {p0, v0}, Laqr;->b(I)V

    const/4 v0, 0x0

    .line 235
    :goto_0
    iget-object v1, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v1, p0, Laqr;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqt;

    .line 237
    invoke-interface {v1}, Laqt;->unregister()V

    .line 238
    invoke-interface {v1}, Laqt;->f()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    invoke-interface {v1, v2}, Laqt;->setVolume(F)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 244
    iget-object v0, p0, Laqr;->g:Landroid/util/SparseArray;

    iget v1, p0, Laqr;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqt;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Laqt;->b()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 251
    iget-object v0, p0, Laqr;->g:Landroid/util/SparseArray;

    iget v1, p0, Laqr;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqt;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Laqt;->a()V

    :cond_0
    return-void
.end method
