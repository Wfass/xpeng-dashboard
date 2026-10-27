.class public Lcom/amap/api/services/a/p;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "/a/"

    sput-object v0, Lcom/amap/api/services/a/p;->a:Ljava/lang/String;

    .line 64
    const-string v0, "b"

    sput-object v0, Lcom/amap/api/services/a/p;->b:Ljava/lang/String;

    .line 65
    const-string v0, "c"

    sput-object v0, Lcom/amap/api/services/a/p;->c:Ljava/lang/String;

    .line 66
    const-string v0, "d"

    sput-object v0, Lcom/amap/api/services/a/p;->d:Ljava/lang/String;

    .line 67
    const-string v0, "e"

    sput-object v0, Lcom/amap/api/services/a/p;->e:Ljava/lang/String;

    .line 68
    const-string v0, "f"

    sput-object v0, Lcom/amap/api/services/a/p;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static G(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;"
        }
    .end annotation

    .line 87
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 95
    :pswitch_0
    const-class p0, Lcom/amap/api/services/a/aa;

    return-object p0

    .line 92
    :pswitch_1
    const-class p0, Lcom/amap/api/services/a/ad;

    return-object p0

    .line 89
    :pswitch_2
    const-class p0, Lcom/amap/api/services/a/ab;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H(I)Lcom/amap/api/services/a/ag;
    .locals 0

    .line 103
    packed-switch p0, :pswitch_data_0

    .line 114
    const/4 p0, 0x0

    return-object p0

    .line 111
    :pswitch_0
    new-instance p0, Lcom/amap/api/services/a/aa;

    invoke-direct {p0}, Lcom/amap/api/services/a/aa;-><init>()V

    return-object p0

    .line 108
    :pswitch_1
    new-instance p0, Lcom/amap/api/services/a/ad;

    invoke-direct {p0}, Lcom/amap/api/services/a/ad;-><init>()V

    return-object p0

    .line 105
    :pswitch_2
    new-instance p0, Lcom/amap/api/services/a/ab;

    invoke-direct {p0}, Lcom/amap/api/services/a/ab;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static I(I)Ljava/lang/String;
    .locals 0

    .line 122
    packed-switch p0, :pswitch_data_0

    .line 131
    const-string p0, ""

    return-object p0

    .line 124
    :pswitch_0
    sget-object p0, Lcom/amap/api/services/a/p;->d:Ljava/lang/String;

    return-object p0

    .line 128
    :pswitch_1
    sget-object p0, Lcom/amap/api/services/a/p;->b:Ljava/lang/String;

    return-object p0

    .line 126
    :pswitch_2
    sget-object p0, Lcom/amap/api/services/a/p;->c:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/content/Context;I)Lcom/amap/api/services/a/v;
    .locals 0

    .line 135
    nop

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 147
    const/4 p0, 0x0

    return-object p0

    .line 144
    :pswitch_0
    new-instance p0, Lcom/amap/api/services/a/s;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/s;-><init>(I)V

    .line 145
    goto :goto_0

    .line 141
    :pswitch_1
    new-instance p0, Lcom/amap/api/services/a/u;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/u;-><init>(I)V

    .line 142
    goto :goto_0

    .line 138
    :pswitch_2
    new-instance p0, Lcom/amap/api/services/a/t;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/t;-><init>(I)V

    .line 139
    nop

    .line 149
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object p0, Lcom/amap/api/services/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .line 229
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;I)Lcom/amap/api/services/a/v;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-virtual {v0, p0}, Lcom/amap/api/services/a/v;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    :goto_0
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 194
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/r;->bo()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/p$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/services/a/p$1;-><init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    :goto_1
    return-void

    .line 220
    :catch_1
    move-exception p0

    .line 221
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 2

    .line 244
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/r;->bo()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/p$2;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/p$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_1

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception p0

    .line 292
    const-string v0, "Log"

    const-string v1, "processLog"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_1
    return-void
.end method
