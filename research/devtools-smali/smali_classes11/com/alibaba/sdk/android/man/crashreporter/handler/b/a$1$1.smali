.class Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "crash_anr"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/c/a;->d(Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    const-string v0, "-"

    .line 45
    :cond_1
    const-string v1, "crash_anr"

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string p1, "stuck: crash manager is null!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    const-string v0, "ANR handler error."

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    const-string p1, "ANR handler end."

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 60
    nop

    .line 61
    return-void

    .line 59
    :goto_1
    const-string v0, "ANR handler end."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    throw p1
.end method
