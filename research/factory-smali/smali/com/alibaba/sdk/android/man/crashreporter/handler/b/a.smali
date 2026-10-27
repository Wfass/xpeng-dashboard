.class public Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;Ljava/util/concurrent/atomic/AtomicBoolean;IZ)V
    .locals 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->timer:Ljava/util/Timer;

    .line 25
    new-instance p3, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;

    move-object v0, p3

    move-object v1, p0

    move v2, p4

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;IZLandroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->timer:Ljava/util/Timer;

    const-wide/16 p4, 0x4e20

    invoke-virtual {p1, p3, p4, p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 71
    return-void
.end method
