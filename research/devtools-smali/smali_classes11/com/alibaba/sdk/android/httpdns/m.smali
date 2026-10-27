.class Lcom/alibaba/sdk/android/httpdns/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static final a:Ljava/lang/Object;

.field private static hostManager:Lcom/alibaba/sdk/android/httpdns/d;


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/o;

.field private d:I

.field private d:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private hostName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d;->a()Lcom/alibaba/sdk/android/httpdns/d;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/m;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/f;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:J

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/m;->a:Lcom/alibaba/sdk/android/httpdns/o;

    return-void
.end method

.method static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    :cond_0
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:J

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already resolving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:[Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/d;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    const v2, 0xa005

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_2
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->a:Lcom/alibaba/sdk/android/httpdns/o;

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/t;->a(Lcom/alibaba/sdk/android/httpdns/o;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverIp is null, give up query for hostname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v3

    goto/16 :goto_6

    :cond_3
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->a()Lcom/alibaba/sdk/android/httpdns/c/a;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/m;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/c/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->a()Lcom/alibaba/sdk/android/httpdns/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/c/a;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/sign_d?host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&sdk=android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1.2.3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alibaba/sdk/android/httpdns/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&sid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&net="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&bssid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/sign_d?host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&sdk=android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1.2.3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alibaba/sdk/android/httpdns/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&sid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&net="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->a()Lcom/alibaba/sdk/android/httpdns/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/c/a;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/d?host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sdk=android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1.2.3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&net="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&bssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/f;->PROTOCOL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/d?host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sdk=android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1.2.3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&net="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e/a;->a()Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolve url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    sget v3, Lcom/alibaba/sdk/android/httpdns/f;->a:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v3, Lcom/alibaba/sdk/android/httpdns/f;->a:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/m$1;

    invoke-direct {v4, p0}, Lcom/alibaba/sdk/android/httpdns/m$1;-><init>(Lcom/alibaba/sdk/android/httpdns/m;)V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " expect 200. response body is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/g;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/alibaba/sdk/android/httpdns/g;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/h;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v5}, Lcom/alibaba/sdk/android/httpdns/h;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_8

    :catchall_2
    move-exception v1

    move-object v4, v0

    goto/16 :goto_7

    :catch_1
    move-exception v4

    move-object v11, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v11

    goto/16 :goto_8

    :cond_9
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolve host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/alibaba/sdk/android/httpdns/e;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/d;->a()I

    move-result v0

    const/16 v6, 0x64

    if-ge v0, v6, :cond_d

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/alibaba/sdk/android/httpdns/d;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/e;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:J

    sub-long/2addr v7, v9

    invoke-static {v0, v6, v7, v8}, Lcom/alibaba/sdk/android/httpdns/t;->a(Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/alibaba/sdk/android/httpdns/d;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/e;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_c

    :cond_d
    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "the total number of hosts is exceed 100"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_7
    move-object v0, v2

    goto :goto_d

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_8

    :catchall_4
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    goto :goto_d

    :catch_3
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    :goto_8
    :try_start_a
    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/i;->a(Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/alibaba/sdk/android/httpdns/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    if-lez v2, :cond_e

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/m;->d:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/m;->b()[Ljava/lang/String;

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/httpdns/t;->reportHttpDnsSuccess(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_9
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    if-eqz v3, :cond_10

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_c

    :goto_b
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->a(Ljava/lang/Throwable;)V

    :cond_11
    :goto_c
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/m;->hostManager:Lcom/alibaba/sdk/android/httpdns/d;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/m;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/m;->e:[Ljava/lang/String;

    return-object v0

    :catchall_5
    move-exception v1

    :goto_d
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v3, :cond_13

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_f

    :cond_13
    :goto_e
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_10

    :goto_f
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->a(Ljava/lang/Throwable;)V

    :cond_14
    :goto_10
    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/m;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
