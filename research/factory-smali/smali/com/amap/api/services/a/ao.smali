.class public Lcom/amap/api/services/a/ao;
.super Ljava/lang/Object;
.source "NearbySearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/INearbySearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/ao$a;
    }
.end annotation


# static fields
.field private static e:J


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/a/q;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/amap/api/services/core/LatLonPoint;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/util/Timer;

.field private k:Lcom/amap/api/services/nearby/UploadInfoCallback;

.field private l:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/services/a/ao;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->a:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->g:Lcom/amap/api/services/core/LatLonPoint;

    .line 77
    iput-object v0, p0, Lcom/amap/api/services/a/ao;->h:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/ao;->i:Z

    .line 81
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->j:Ljava/util/Timer;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    .line 94
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/a/q;

    .line 95
    return-void
.end method

.method private a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/services/a/ao;->i:Z

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ao;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 160
    new-instance v0, Lcom/amap/api/services/a/r;

    iget-object v1, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ao;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Lcom/amap/api/services/a/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 157
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "USERID\u975e\u6cd5"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u5df2\u5f00\u542f\u81ea\u52a8\u4e0a\u4f20"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    throw v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/amap/api/services/a/ao;->i:Z

    if-eqz v0, :cond_0

    .line 224
    const/16 p1, 0x898

    return p1

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/a/q;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/a/q;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 p1, 0x0

    return p1

    .line 234
    :cond_0
    const-string v0, "^[a-z0-9A-Z_-]{1,32}$"

    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result p0

    return p0
.end method

.method private b(Lcom/amap/api/services/nearby/UploadInfo;)I
    .locals 6

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 240
    if-nez p1, :cond_0

    .line 241
    const/16 p1, 0x89a

    return p1

    .line 244
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 246
    sget-wide v2, Lcom/amap/api/services/a/ao;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1964

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 247
    const/16 p1, 0x89b

    return p1

    .line 249
    :cond_1
    sput-wide v0, Lcom/amap/api/services/a/ao;->e:J

    .line 251
    invoke-virtual {p1}, Lcom/amap/api/services/nearby/UploadInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ao;->a(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x899

    if-nez v1, :cond_2

    .line 257
    return v2

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/a/ao;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    iput-object v0, p0, Lcom/amap/api/services/a/ao;->h:Ljava/lang/String;

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/a/ao;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    return v2

    .line 266
    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/services/nearby/UploadInfo;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/amap/api/services/a/ao;->g:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 273
    :cond_5
    new-instance v1, Lcom/amap/api/services/a/t;

    iget-object v2, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/amap/api/services/a/t;-><init>(Landroid/content/Context;Lcom/amap/api/services/nearby/UploadInfo;)V

    .line 276
    invoke-virtual {v1}, Lcom/amap/api/services/a/t;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 277
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->copy()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ao;->g:Lcom/amap/api/services/core/LatLonPoint;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/16 p1, 0x3e8

    return p1

    .line 269
    :cond_6
    :goto_0
    const/16 p1, 0x89c

    return p1

    .line 281
    :catch_0
    move-exception p1

    .line 282
    const/16 p1, 0x76c

    return p1

    .line 279
    :catch_1
    move-exception p1

    .line 280
    invoke-virtual {p1}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/amap/api/services/a/ao;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amap/api/services/a/ao;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/services/a/ao;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/amap/api/services/a/ao;->a()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/nearby/UploadInfoCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amap/api/services/a/ao;->k:Lcom/amap/api/services/nearby/UploadInfoCallback;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 104
    :catch_0
    move-exception p1

    .line 105
    :try_start_1
    const-string v0, "NearbySearch"

    const-string v1, "addNearbyListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public clearUserInfoAsyn()V
    .locals 1

    .line 129
    new-instance v0, Lcom/amap/api/services/a/ao$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/ao$1;-><init>(Lcom/amap/api/services/a/ao;)V

    .line 147
    invoke-virtual {v0}, Lcom/amap/api/services/a/ao$1;->start()V

    .line 149
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "destryoy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 2

    monitor-enter p0

    .line 115
    if-nez p1, :cond_0

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 119
    :catch_0
    move-exception p1

    .line 120
    :try_start_1
    const-string v0, "NearbySearch"

    const-string v1, "removeNearbyListener"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 349
    new-instance v0, Lcom/amap/api/services/a/s;

    iget-object v1, p0, Lcom/amap/api/services/a/ao;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/s;-><init>(Landroid/content/Context;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    .line 351
    invoke-virtual {v0}, Lcom/amap/api/services/a/s;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/nearby/NearbySearchResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-object p1

    .line 355
    :catch_0
    move-exception p1

    .line 356
    const-string v0, "NearbySearch"

    const-string v1, "searchNearbyInfo"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :catch_1
    move-exception p1

    .line 354
    throw p1
.end method

.method public searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 1

    .line 318
    new-instance v0, Lcom/amap/api/services/a/ao$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ao$3;-><init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    .line 338
    invoke-virtual {v0}, Lcom/amap/api/services/a/ao$3;->start()V

    .line 339
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amap/api/services/a/ao;->b:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public declared-synchronized startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    .locals 7

    monitor-enter p0

    .line 187
    const/16 v0, 0x1b58

    if-ge p2, v0, :cond_0

    .line 188
    nop

    .line 190
    move p2, v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/services/a/ao;->k:Lcom/amap/api/services/nearby/UploadInfoCallback;

    .line 191
    iget-boolean p1, p0, Lcom/amap/api/services/a/ao;->i:Z

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 196
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/services/a/ao;->i:Z

    .line 197
    new-instance p1, Lcom/amap/api/services/a/ao$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/services/a/ao$a;-><init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/a/ao$1;)V

    iput-object p1, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;

    .line 199
    iget-object v1, p0, Lcom/amap/api/services/a/ao;->j:Ljava/util/Timer;

    iget-object v2, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    int-to-long v5, p2

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    goto :goto_0

    .line 186
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 200
    :catch_0
    move-exception p1

    .line 201
    :try_start_1
    const-string p2, "NearbySearch"

    const-string v0, "startUploadNearbyInfoAuto"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopUploadNearbyInfoAuto()V
    .locals 3

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_1
    const-string v1, "NearbySearch"

    const-string v2, "stopUploadNearbyInfoAuto"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/ao;->i:Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->l:Ljava/util/TimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 209
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 293
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->f:Ljava/util/concurrent/ExecutorService;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/services/a/ao$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/ao$2;-><init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/nearby/UploadInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 311
    return-void
.end method
