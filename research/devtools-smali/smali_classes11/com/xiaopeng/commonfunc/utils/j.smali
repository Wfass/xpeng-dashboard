.class public final Lcom/xiaopeng/commonfunc/utils/j;
.super Ljava/lang/Object;
.source "IndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/j$a;
    }
.end annotation


# static fields
.field private static final pl:Lcom/xiaopeng/lib/security/a;

.field private static final pm:Lcom/xiaopeng/commonfunc/utils/a/a;

.field private static pn:Z

.field private static po:Lcom/xiaopeng/commonfunc/utils/j$a;

.field private static pp:Z

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/lib/security/c;->ok()Lcom/xiaopeng/lib/security/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    .line 57
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/a/b;->eI()Lcom/xiaopeng/commonfunc/utils/a/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pm:Lcom/xiaopeng/commonfunc/utils/a/a;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized X(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/xiaopeng/commonfunc/utils/j;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/commonfunc/utils/j;->pn:Z

    if-eqz v1, :cond_0

    .line 67
    const-string p0, "IndivHelper"

    const-string v1, "irdeto sdk has init"

    invoke-static {p0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/commonfunc/utils/j;->sContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->er()V

    .line 77
    sget-object p0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->sContext:Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/security/a;->ao(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;

    .line 79
    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaopeng/commonfunc/utils/j;->pn:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :goto_0
    monitor-exit v0

    return-void

    .line 65
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 403
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/j;->n(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xmart:appid:002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B638C588DCAD7C1A43E6FB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/d;->dJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dP()V
    .locals 1

    .line 178
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->oi()V

    .line 179
    return-void
.end method

.method public static declared-synchronized dQ()V
    .locals 5

    const-class v0, Lcom/xiaopeng/commonfunc/utils/j;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    if-nez v1, :cond_0

    .line 113
    const-string v1, "IndivHelper"

    const-string v2, "sThreadHandler is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 116
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/j$a;->removeMessages(I)V

    .line 118
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/commonfunc/utils/j$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit v0

    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic eA()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->ev()V

    return-void
.end method

.method static synthetic eB()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->ew()V

    return-void
.end method

.method static synthetic eC()Lcom/xiaopeng/commonfunc/utils/j$a;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    return-object v0
.end method

.method static synthetic eD()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->et()V

    return-void
.end method

.method private static er()V
    .locals 2

    .line 101
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecureSdkSampleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/j$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/commonfunc/utils/j$a;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    .line 106
    :cond_0
    return-void
.end method

.method public static es()Z
    .locals 1

    .line 138
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->og()Z

    move-result v0

    return v0
.end method

.method private static et()V
    .locals 5

    .line 143
    sget-boolean v0, Lcom/xiaopeng/commonfunc/utils/j;->pn:Z

    if-nez v0, :cond_0

    .line 144
    const-string v0, "IndivHelper"

    const-string v1, "irdeto sdk not init"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/a;->og()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->eu()V

    .line 152
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/utils/j$a;->removeMessages(I)V

    .line 154
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->po:Lcom/xiaopeng/commonfunc/utils/j$a;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/commonfunc/utils/j$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 157
    :cond_1
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/security/a;->aP(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    sput-boolean v0, Lcom/xiaopeng/commonfunc/utils/j;->pp:Z

    .line 163
    :goto_1
    return-void
.end method

.method private static eu()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    sget-boolean v0, Lcom/xiaopeng/commonfunc/utils/j;->pp:Z

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "IndivHelper"

    const-string v1, "irdeto sdk indiv is initing"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/commonfunc/utils/j;->pp:Z

    .line 203
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pm:Lcom/xiaopeng/commonfunc/utils/a/a;

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/a/a;->a(Landroid/content/Context;Lcom/xiaopeng/lib/security/a;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 204
    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/commonfunc/utils/j;->pp:Z

    .line 206
    return-void

    .line 209
    :cond_1
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/j$1;

    invoke-direct {v1}, Lcom/xiaopeng/commonfunc/utils/j$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 232
    return-void
.end method

.method private static ev()V
    .locals 3

    .line 239
    :try_start_0
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pm:Lcom/xiaopeng/commonfunc/utils/a/a;

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/a/a;->b(Landroid/content/Context;Lcom/xiaopeng/lib/security/a;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 240
    if-nez v0, :cond_0

    .line 241
    const-string v0, "IndivHelper"

    const-string v1, "No need to post individual saving request."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->ew()V

    .line 243
    return-void

    .line 246
    :cond_0
    new-instance v1, Lcom/xiaopeng/commonfunc/utils/j$2;

    invoke-direct {v1}, Lcom/xiaopeng/commonfunc/utils/j$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    :goto_0
    return-void
.end method

.method private static ew()V
    .locals 2

    .line 279
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->oh()V

    .line 280
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/security/a;->aP(Z)V

    .line 281
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/j;->ex()V

    .line 282
    return-void
.end method

.method private static ex()V
    .locals 2

    .line 288
    const-string v0, "IndivHelper"

    const-string v1, "notifyIndivFinished"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pm:Lcom/xiaopeng/commonfunc/utils/a/a;

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/j;->sContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/xiaopeng/commonfunc/utils/a/a;->Z(Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method static synthetic ey()Lcom/xiaopeng/commonfunc/utils/a/a;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pm:Lcom/xiaopeng/commonfunc/utils/a/a;

    return-object v0
.end method

.method static synthetic ez()Lcom/xiaopeng/lib/security/a;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    return-object v0
.end method

.method private static n(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 414
    if-nez p0, :cond_0

    .line 415
    const-string p0, ""

    return-object p0

    .line 418
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 423
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    goto :goto_0

    .line 426
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 430
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 431
    const-string v3, "app_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "timestamp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "sign"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    goto :goto_1

    .line 434
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    goto :goto_1

    .line 439
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Z)Z
    .locals 0

    .line 42
    sput-boolean p0, Lcom/xiaopeng/commonfunc/utils/j;->pp:Z

    return p0
.end method
