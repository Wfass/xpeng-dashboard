.class public Lcom/xiaopeng/musicradio/model/common/a;
.super Ljava/lang/Object;
.source "AppLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/common/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/os/Handler;

.field private d:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/model/common/a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/common/a$1;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/common/a;->c:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/xiaopeng/musicradio/model/common/a$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/model/common/a$7;-><init>(Lcom/xiaopeng/musicradio/model/common/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/common/a;->d:Landroid/database/ContentObserver;

    const-string v0, "AppLogic"

    const-string v1, "AppLogic: ==========="

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/common/a;->a:Landroid/content/Context;

    .line 98
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/common/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/common/a;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/xiaopeng/musicradio/model/common/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/common/a;->b:I

    return v0
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/common/a;
    .locals 1

    .line 72
    sget-object v0, Lcom/xiaopeng/musicradio/model/common/a$a;->a:Lcom/xiaopeng/musicradio/model/common/a;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/common/a;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/xiaopeng/musicradio/model/common/a;->b:I

    return p0
.end method

.method private b()V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/common/a;->c()V

    .line 104
    new-instance v0, Lcom/xiaopeng/musicradio/model/common/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/common/a$2;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 113
    new-instance v0, Lcom/xiaopeng/musicradio/model/common/a$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/common/a$3;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 120
    new-instance v0, Lcom/xiaopeng/musicradio/model/common/a$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/common/a$4;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 127
    new-instance v0, Lcom/xiaopeng/musicradio/model/common/a$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/common/a$5;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 138
    new-instance v0, Lcom/xiaopeng/musicradio/model/common/a$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/common/a$6;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/common/a;->d()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/model/common/a;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/common/a;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "XpMainDriverMode"

    .line 203
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/common/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/common/a;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/model/common/a;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/common/a;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "AppLogic"

    const-string v1, "killSelf: "

    .line 253
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/common/a;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 256
    const-class v1, Ljava/lang/String;

    const-string v2, "forceStopPackage"

    const-string v3, "com.xiaopeng.musicradio"

    invoke-static {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .locals 8

    const-string v0, "AppLogic"

    const-string v1, "killSelfAndRestart() called"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->b()V

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.ACTION_KEEP_ALIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    .line 275
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive -\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLogic"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.xiaopeng.MUSIC_REPLAY"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/common/a;->f()V

    .line 215
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/model/common/a$8;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/common/a$8;-><init>(Lcom/xiaopeng/musicradio/model/common/a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "com.xiaopeng.MUSIC_EXIT"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 224
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 225
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->u()V

    .line 228
    :cond_2
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 229
    invoke-interface {p1}, Laqt;->getPlayState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 230
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 231
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 232
    invoke-static {}, Lbrw;->b()V

    .line 237
    :cond_3
    :try_start_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ba;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "error = %s"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 242
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/an;->c()V

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a;->c:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method
