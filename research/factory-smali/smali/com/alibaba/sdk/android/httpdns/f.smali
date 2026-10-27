.class Lcom/alibaba/sdk/android/httpdns/f;
.super Ljava/lang/Object;


# static fields
.field static PROTOCOL:Ljava/lang/String;

.field static a:I

.field static a:Ljava/lang/String;

.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/probe/IPProbeItem;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/String;

.field static b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "203.107.1.1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/f;->b:[Ljava/lang/String;

    const-string v0, "203.107.1.97"

    const-string v1, "203.107.1.100"

    const-string v2, "httpdns-sc.aliyuncs.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/f;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/f;->d:[Ljava/lang/String;

    const-string v0, "80"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/f;->b:Ljava/lang/String;

    const-string v0, "http://"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    const/16 v0, 0x3a98

    sput v0, Lcom/alibaba/sdk/android/httpdns/f;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/util/List;

    return-void
.end method

.method static declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/probe/IPProbeItem;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alibaba/sdk/android/httpdns/f;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a([Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/f;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    array-length v1, p0

    if-eqz v1, :cond_0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/f;->b:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/f;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setHTTPSRequestEnabled(Z)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/f;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "https://"

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    const-string p0, "443"

    :goto_0
    sput-object p0, Lcom/alibaba/sdk/android/httpdns/f;->b:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "http://"

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    const-string p0, "80"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setTimeoutInterval(I)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/f;

    monitor-enter v0

    if-lez p0, :cond_0

    :try_start_0
    sput p0, Lcom/alibaba/sdk/android/httpdns/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method
