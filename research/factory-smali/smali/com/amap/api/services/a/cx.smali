.class public Lcom/amap/api/services/a/cx;
.super Lcom/amap/api/services/a/cs;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/cx$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/a/cx;


# instance fields
.field private b:Lcom/amap/api/services/a/df;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/amap/api/services/a/cs;-><init>()V

    .line 104
    if-eqz p1, :cond_0

    .line 106
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/a/df;->a(I)Lcom/amap/api/services/a/df;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/cx;->b:Lcom/amap/api/services/a/df;

    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    goto :goto_2

    .line 108
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_1

    .line 109
    new-instance p1, Lcom/amap/api/services/a/cx$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/amap/api/services/a/cx$a;-><init>(Landroid/os/Looper;Lcom/amap/api/services/a/cx$1;)V

    iput-object p1, p0, Lcom/amap/api/services/a/cx;->c:Landroid/os/Handler;

    goto :goto_1

    .line 111
    :cond_1
    new-instance p1, Lcom/amap/api/services/a/cx$a;

    invoke-direct {p1}, Lcom/amap/api/services/a/cx$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/a/cx;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    goto :goto_3

    .line 113
    :goto_2
    nop

    .line 115
    const-string p2, "NetManger"

    const-string v0, "NetManger1"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/bj;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :goto_3
    return-void
.end method

.method public static a(Z)Lcom/amap/api/services/a/cx;
    .locals 1

    .line 52
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/services/a/cx;->a(ZI)Lcom/amap/api/services/a/cx;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/services/a/cx;
    .locals 2

    const-class v0, Lcom/amap/api/services/a/cx;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/amap/api/services/a/cx;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/cx;-><init>(ZI)V

    sput-object v1, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    goto :goto_0

    .line 78
    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    iget-object p0, p0, Lcom/amap/api/services/a/cx;->b:Lcom/amap/api/services/a/df;

    if-nez p0, :cond_1

    .line 79
    sget-object p0, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    invoke-static {p1}, Lcom/amap/api/services/a/df;->a(I)Lcom/amap/api/services/a/df;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/cx;->b:Lcom/amap/api/services/a/df;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    :goto_0
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 82
    :catch_0
    move-exception p0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :goto_1
    sget-object p0, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 74
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/amap/api/services/a/au;Lcom/amap/api/services/a/cz;)V
    .locals 1

    .line 411
    new-instance v0, Lcom/amap/api/services/a/db;

    invoke-direct {v0}, Lcom/amap/api/services/a/db;-><init>()V

    .line 412
    iput-object p1, v0, Lcom/amap/api/services/a/db;->a:Lcom/amap/api/services/a/au;

    .line 413
    iput-object p2, v0, Lcom/amap/api/services/a/db;->b:Lcom/amap/api/services/a/cz;

    .line 414
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 415
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    .line 417
    iget-object p2, p0, Lcom/amap/api/services/a/cx;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/cx;Lcom/amap/api/services/a/au;Lcom/amap/api/services/a/cz;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/cx;->a(Lcom/amap/api/services/a/au;Lcom/amap/api/services/a/cz;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/cx;Lcom/amap/api/services/a/da;Lcom/amap/api/services/a/cz;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/cx;->a(Lcom/amap/api/services/a/da;Lcom/amap/api/services/a/cz;)V

    return-void
.end method

.method private a(Lcom/amap/api/services/a/da;Lcom/amap/api/services/a/cz;)V
    .locals 1

    .line 422
    iget-object v0, p1, Lcom/amap/api/services/a/da;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/amap/api/services/a/da;->a:[B

    invoke-interface {p2, v0, p1}, Lcom/amap/api/services/a/cz;->a(Ljava/util/Map;[B)V

    .line 423
    new-instance p1, Lcom/amap/api/services/a/db;

    invoke-direct {p1}, Lcom/amap/api/services/a/db;-><init>()V

    .line 424
    iput-object p2, p1, Lcom/amap/api/services/a/db;->b:Lcom/amap/api/services/a/cz;

    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 426
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    const/4 p1, 0x0

    iput p1, p2, Landroid/os/Message;->what:I

    .line 428
    iget-object p1, p0, Lcom/amap/api/services/a/cx;->c:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method


# virtual methods
.method public b(Lcom/amap/api/services/a/cy;Z)Lcom/amap/api/services/a/da;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 343
    nop

    .line 346
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/cx;->c(Lcom/amap/api/services/a/cy;)V

    .line 348
    iget-object v0, p1, Lcom/amap/api/services/a/cy;->g:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p1, Lcom/amap/api/services/a/cy;->g:Ljava/net/Proxy;

    .line 353
    :goto_0
    new-instance v1, Lcom/amap/api/services/a/cv;

    iget v2, p1, Lcom/amap/api/services/a/cy;->e:I

    iget v3, p1, Lcom/amap/api/services/a/cy;->f:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/services/a/cv;-><init>(IILjava/net/Proxy;Z)V

    .line 356
    invoke-virtual {p1}, Lcom/amap/api/services/a/cy;->g()Ljava/lang/String;

    move-result-object p2

    .line 357
    invoke-virtual {p1}, Lcom/amap/api/services/a/cy;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/cy;->b()Ljava/util/Map;

    move-result-object p1

    .line 356
    invoke-virtual {v1, p2, v0, p1}, Lcom/amap/api/services/a/cv;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/services/a/da;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    nop

    .line 365
    return-object p1

    .line 360
    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :catch_1
    move-exception p1

    .line 359
    throw p1
.end method

.method public b(Lcom/amap/api/services/a/cy;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 271
    nop

    .line 273
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/cx;->a(Lcom/amap/api/services/a/cy;Z)Lcom/amap/api/services/a/da;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p1, Lcom/amap/api/services/a/da;->a:[B

    return-object p1

    .line 284
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 276
    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    invoke-static {}, Lcom/amap/api/services/a/bj;->a()Lcom/amap/api/services/a/bj;

    move-result-object v0

    const-string v1, "NetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/services/a/bj;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :catch_1
    move-exception p1

    .line 275
    throw p1
.end method

.method public d(Lcom/amap/api/services/a/cy;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 296
    nop

    .line 298
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/cx;->b(Lcom/amap/api/services/a/cy;Z)Lcom/amap/api/services/a/da;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    nop

    .line 304
    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p1, Lcom/amap/api/services/a/da;->a:[B

    return-object p1

    .line 307
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 301
    :catch_0
    move-exception p1

    .line 302
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :catch_1
    move-exception p1

    .line 300
    throw p1
.end method
