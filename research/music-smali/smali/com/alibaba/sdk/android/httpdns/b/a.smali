.class public Lcom/alibaba/sdk/android/httpdns/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpdns_config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()[Lcom/alibaba/sdk/android/httpdns/b/d;

    move-result-object p2

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-interface {v2, p1}, Lcom/alibaba/sdk/android/httpdns/b/d;->a(Landroid/content/SharedPreferences;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/b/a$a;

    invoke-direct {v2, p1, p2, p0}, Lcom/alibaba/sdk/android/httpdns/b/a$a;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/b/a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    return-void
.end method
