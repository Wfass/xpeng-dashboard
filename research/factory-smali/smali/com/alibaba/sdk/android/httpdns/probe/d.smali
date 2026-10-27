.class public final Lcom/alibaba/sdk/android/httpdns/probe/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/probe/d;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;

    return-void
.end method

.method public static declared-synchronized a(Lcom/alibaba/sdk/android/httpdns/probe/b;)Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/probe/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/probe/d;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/probe/e;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/probe/d;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/probe/d;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;

    invoke-interface {v1, p0}, Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;->setIPListUpdateCallback(Lcom/alibaba/sdk/android/httpdns/probe/b;)V

    :cond_0
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/probe/d;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
