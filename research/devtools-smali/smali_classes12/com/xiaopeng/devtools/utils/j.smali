.class public final Lcom/xiaopeng/devtools/utils/j;
.super Ljava/lang/Object;
.source "IndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/utils/j$a;
    }
.end annotation


# static fields
.field private static BR:Lcom/xiaopeng/devtools/utils/j$a;

.field private static BT:Lcom/xiaopeng/devtools/utils/a/a;

.field private static pl:Lcom/xiaopeng/lib/security/a;

.field private static pn:Z

.field private static pp:Z

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/xiaopeng/lib/security/c;->ok()Lcom/xiaopeng/lib/security/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    .line 61
    invoke-static {}, Lcom/xiaopeng/devtools/utils/a/b;->lE()Lcom/xiaopeng/devtools/utils/a/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/utils/j;->BT:Lcom/xiaopeng/devtools/utils/a/a;

    .line 62
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

    const-class v0, Lcom/xiaopeng/devtools/utils/j;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/devtools/utils/j;->pn:Z

    if-eqz v1, :cond_0

    .line 71
    const-string p0, "IndivHelper"

    const-string v1, "irdeto sdk has init"

    invoke-static {p0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/devtools/utils/j;->sContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->er()V

    .line 81
    sget-object p0, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->sContext:Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/security/a;->ao(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;

    .line 83
    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaopeng/devtools/utils/j;->pn:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :goto_0
    monitor-exit v0

    return-void

    .line 69
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

    .line 426
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/j;->n(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 427
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

.method static synthetic eA()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->ev()V

    return-void
.end method

.method static synthetic eB()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->ew()V

    return-void
.end method

.method static synthetic eD()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->et()V

    return-void
.end method

.method private static er()V
    .locals 2

    .line 105
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->BR:Lcom/xiaopeng/devtools/utils/j$a;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecureSdkSampleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v1, Lcom/xiaopeng/devtools/utils/j$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/devtools/utils/j$a;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/devtools/utils/j;->BR:Lcom/xiaopeng/devtools/utils/j$a;

    .line 110
    :cond_0
    return-void
.end method

.method private static et()V
    .locals 5

    .line 147
    sget-boolean v0, Lcom/xiaopeng/devtools/utils/j;->pn:Z

    if-nez v0, :cond_0

    .line 148
    const-string v0, "IndivHelper"

    const-string v1, "irdeto sdk not init"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/a;->og()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->eu()V

    .line 156
    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->BR:Lcom/xiaopeng/devtools/utils/j$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/utils/j$a;->removeMessages(I)V

    .line 158
    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->BR:Lcom/xiaopeng/devtools/utils/j$a;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/devtools/utils/j$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 161
    :cond_1
    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/security/a;->aP(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    sput-boolean v0, Lcom/xiaopeng/devtools/utils/j;->pp:Z

    .line 167
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

    .line 200
    sget-boolean v0, Lcom/xiaopeng/devtools/utils/j;->pp:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "IndivHelper"

    const-string v1, "irdeto sdk indiv is initing"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/devtools/utils/j;->pp:Z

    .line 207
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->BT:Lcom/xiaopeng/devtools/utils/a/a;

    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/utils/a/a;->a(Landroid/content/Context;Lcom/xiaopeng/lib/security/a;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 208
    if-nez v0, :cond_1

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/devtools/utils/j;->pp:Z

    .line 210
    return-void

    .line 213
    :cond_1
    new-instance v1, Lcom/xiaopeng/devtools/utils/j$1;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/utils/j$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 236
    return-void
.end method

.method private static ev()V
    .locals 3

    .line 243
    :try_start_0
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->BT:Lcom/xiaopeng/devtools/utils/a/a;

    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/utils/a/a;->b(Landroid/content/Context;Lcom/xiaopeng/lib/security/a;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 245
    const-string v0, "IndivHelper"

    const-string v1, "No need to post individual saving request."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->ew()V

    .line 247
    return-void

    .line 250
    :cond_0
    new-instance v1, Lcom/xiaopeng/devtools/utils/j$2;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/utils/j$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    :goto_0
    return-void
.end method

.method private static ew()V
    .locals 2

    .line 283
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->oh()V

    .line 284
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/security/a;->aP(Z)V

    .line 285
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->ex()V

    .line 286
    return-void
.end method

.method private static ex()V
    .locals 2

    .line 292
    const-string v0, "IndivHelper"

    const-string v1, "notifyIndivFinished"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->BT:Lcom/xiaopeng/devtools/utils/a/a;

    sget-object v1, Lcom/xiaopeng/devtools/utils/j;->sContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/utils/a/a;->Z(Landroid/content/Context;)V

    .line 294
    return-void
.end method

.method static synthetic ez()Lcom/xiaopeng/lib/security/a;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->pl:Lcom/xiaopeng/lib/security/a;

    return-object v0
.end method

.method static synthetic lb()Lcom/xiaopeng/devtools/utils/a/a;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->BT:Lcom/xiaopeng/devtools/utils/a/a;

    return-object v0
.end method

.method static synthetic lc()Lcom/xiaopeng/devtools/utils/j$a;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/devtools/utils/j;->BR:Lcom/xiaopeng/devtools/utils/j$a;

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

    .line 437
    if-nez p0, :cond_0

    .line 438
    const-string p0, ""

    return-object p0

    .line 441
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    goto :goto_0

    .line 449
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 453
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

    .line 454
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

    .line 455
    goto :goto_1

    .line 457
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    goto :goto_1

    .line 462
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Z)Z
    .locals 0

    .line 42
    sput-boolean p0, Lcom/xiaopeng/devtools/utils/j;->pp:Z

    return p0
.end method
