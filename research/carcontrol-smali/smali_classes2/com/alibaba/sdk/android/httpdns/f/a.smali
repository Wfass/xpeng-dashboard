.class public Lcom/alibaba/sdk/android/httpdns/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/f/a$c;,
        Lcom/alibaba/sdk/android/httpdns/f/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/httpdns/f/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "None_Network"

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/util/ArrayList;

    const-string v0, "network"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/n/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/httpdns/f/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/f/a;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/f/a;
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/f/a$b;->a()Lcom/alibaba/sdk/android/httpdns/f/a;

    move-result-object v0

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const-string v0, "None_Network"

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[detectCurrentNetwork] - Network name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subType name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/f/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/f/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/f/a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    const-string v1, "check network info permission fail"

    invoke-static {v1, p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Landroid/content/Context;

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/f/a$a;

    invoke-direct {p1, p0}, Lcom/alibaba/sdk/android/httpdns/f/a$a;-><init>(Lcom/alibaba/sdk/android/httpdns/f/a;)V

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/f/a$c;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
