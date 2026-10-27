.class public final Lcom/alibaba/mtl/appmonitor/AppMonitor;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/AppMonitor$b;,
        Lcom/alibaba/mtl/appmonitor/AppMonitor$a;,
        Lcom/alibaba/mtl/appmonitor/AppMonitor$c;
    }
.end annotation


# static fields
.field private static W:Landroid/app/Application;

.field private static a:Landroid/os/HandlerThread;

.field private static a:Ljava/lang/Object;

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/AppMonitor$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z

.field protected static aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

.field protected static ab:Lcom/alibaba/mtl/appmonitor/b;

.field private static ae:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

.field private static af:Landroid/content/ServiceConnection;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    .line 49
    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    .line 50
    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Landroid/os/HandlerThread;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b:Z

    .line 60
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->at:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ae:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    .line 1205
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$3;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$3;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->af:Landroid/content/ServiceConnection;

    .line 1421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 45
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;
    .locals 7

    .line 1403
    new-instance v6, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 1414
    return-object v6
.end method

.method private static a()V
    .locals 2

    .line 1338
    new-instance v0, Lcom/alibaba/mtl/appmonitor/c;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/c;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ab:Lcom/alibaba/mtl/appmonitor/b;

    .line 1339
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->at:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ae:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    .line 1340
    const-string v0, "AppMonitor"

    const-string v1, "Start AppMonitor Service failed,AppMonitor run in local Mode..."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1341
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .locals 6

    const-class v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;

    monitor-enter v0

    .line 67
    :try_start_0
    const-string v1, "AppMonitor"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[init]"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Z

    if-nez v1, :cond_3

    .line 70
    sput-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    .line 71
    sget-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    if-eqz p0, :cond_0

    .line 72
    sget-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->mContext:Landroid/content/Context;

    .line 74
    :cond_0
    new-instance p0, Landroid/os/HandlerThread;

    const-string v1, "AppMonitor_Client"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Landroid/os/HandlerThread;

    .line 75
    sget-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    .line 77
    sget-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ae:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->at:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    if-ne p0, v1, :cond_1

    .line 78
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Z

    move-result p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    sget-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {p0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Z)V

    .line 85
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->n()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 87
    sput-boolean v2, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_3
    goto :goto_1

    .line 89
    :catch_0
    move-exception p0

    .line 91
    :goto_1
    monitor-exit v0

    return-void

    .line 66
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .line 1292
    const-string v0, "AppMonitor"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1294
    instance-of p0, p0, Landroid/os/DeadObjectException;

    if-eqz p0, :cond_0

    .line 1295
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->restart()V

    .line 1298
    :cond_0
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1129
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    return-void

    .line 1132
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 1133
    sput-boolean p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->c:Z

    .line 1134
    sput-object p1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->g:Ljava/lang/String;

    .line 1135
    sput-object p2, Lcom/alibaba/mtl/appmonitor/AppMonitor;->h:Ljava/lang/String;

    .line 1136
    sput-object p3, Lcom/alibaba/mtl/appmonitor/AppMonitor;->i:Ljava/lang/String;

    .line 1137
    return-void
.end method

.method private static a()Z
    .locals 6

    .line 1193
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1194
    return v1

    .line 1196
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/alibaba/mtl/appmonitor/AppMonitor;->W:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/AppMonitorService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/alibaba/mtl/appmonitor/AppMonitor;->af:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1197
    if-nez v0, :cond_1

    .line 1198
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()V

    .line 1200
    :cond_1
    const-string v2, "AppMonitor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "bindsuccess:"

    aput-object v5, v3, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    return v0
.end method

.method private static b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 1377
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$5;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-object v0
.end method

.method static synthetic b()V
    .locals 0

    .line 45
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->restart()V

    return-void
.end method

.method static synthetic b(Ljava/lang/Exception;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b:Z

    return v0
.end method

.method static synthetic c()V
    .locals 0

    .line 45
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()V

    return-void
.end method

.method static synthetic e(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b:Z

    return p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 1390
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$6;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$6;-><init>(Ljava/lang/String;)V

    .line 1399
    return-object v0
.end method

.method public static l()Z
    .locals 4

    .line 1352
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Z

    if-nez v0, :cond_0

    .line 1353
    const-string v0, "AppMonitor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Please call UTAnalytics.getInstance().setAppApplicationInstance()||.setAppApplicationInstance4sdk() before call other method"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1355
    :cond_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Z

    return v0
.end method

.method private static n()Ljava/lang/Runnable;
    .locals 1

    .line 1359
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$4;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$4;-><init>()V

    .line 1373
    return-object v0
.end method

.method static synthetic o()Lcom/alibaba/mtl/appmonitor/AppMonitor$b;
    .locals 1

    .line 45
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ae:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    return-object v0
.end method

.method private static declared-synchronized restart()V
    .locals 8

    const-class v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;

    monitor-enter v0

    .line 1301
    :try_start_0
    const-string v1, "AppMonitor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[restart]"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1303
    :try_start_1
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b:Z

    if-eqz v1, :cond_2

    .line 1304
    sput-boolean v4, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b:Z

    .line 1315
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()V

    .line 1316
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->n()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1317
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->c:Z

    sget-object v2, Lcom/alibaba/mtl/appmonitor/AppMonitor;->g:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/mtl/appmonitor/AppMonitor;->h:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/mtl/appmonitor/AppMonitor;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1318
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->l(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1319
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1320
    :goto_0
    :try_start_2
    sget-object v2, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 1321
    sget-object v2, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/AppMonitor$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1322
    if-eqz v2, :cond_0

    .line 1324
    :try_start_3
    iget-object v3, v2, Lcom/alibaba/mtl/appmonitor/AppMonitor$a;->o:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/mtl/appmonitor/AppMonitor$a;->p:Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/mtl/appmonitor/AppMonitor$a;->aj:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v7, v2, Lcom/alibaba/mtl/appmonitor/AppMonitor$a;->ak:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v2, v2, Lcom/alibaba/mtl/appmonitor/AppMonitor$a;->g:Z

    invoke-static {v3, v5, v6, v7, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1326
    goto :goto_1

    .line 1325
    :catch_0
    move-exception v2

    .line 1320
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    :try_start_4
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1333
    :cond_2
    :goto_2
    goto :goto_3

    .line 1332
    :catch_1
    move-exception v1

    .line 1335
    :goto_3
    monitor-exit v0

    return-void

    .line 1300
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 2

    .line 1145
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    return-void

    .line 1148
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->l(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 1149
    sput-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->f:Ljava/lang/String;

    .line 1150
    return-void
.end method

.method public static turnOffRealTimeDebug()V
    .locals 2

    .line 1176
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    return-void

    .line 1179
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$2;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$2;-><init>()V

    .line 1189
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 1190
    return-void
.end method

.method public static turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1158
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    return-void

    .line 1161
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$1;-><init>(Ljava/util/Map;)V

    .line 1172
    sget-object p0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->aa:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 1173
    return-void
.end method
