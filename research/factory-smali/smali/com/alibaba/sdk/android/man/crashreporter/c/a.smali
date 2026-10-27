.class public Lcom/alibaba/sdk/android/man/crashreporter/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;
    }
.end annotation


# instance fields
.field private final B:I

.field private final C:I

.field private a:Landroid/content/Context;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 35
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 36
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    .line 37
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    .line 38
    const v0, 0x36ee80

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->B:I

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->C:I

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/a/b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/man/crashreporter/c/a;)Lcom/alibaba/sdk/android/man/crashreporter/d/c;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;Ljava/util/Map;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const-string v0, "send err because sendPools or crashReportStorage or context is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;

    iget-object v5, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/c/a;ILcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;Landroid/content/Context;Ljava/util/Map;)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/a/b;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/d/c;)Z
    .locals 1

    .line 48
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 49
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    .line 50
    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 51
    iput-object p4, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 52
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 p1, 0x1

    return p1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    const-string p2, "init sender failure!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    const-string v0, "send all err because sendPools or crashReportStorage ot context is null!"

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/man/crashreporter/c/a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/c/a;ILcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;Landroid/content/Context;Ljava/util/Map;)V

    .line 72
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    :cond_2
    return-void
.end method
