.class Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;Ljava/util/concurrent/atomic/AtomicBoolean;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

.field final synthetic x:I


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;IZLandroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    iput p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->x:I

    iput-boolean p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->a:Z

    iput-object p4, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->b:Landroid/content/Context;

    iput-object p5, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 28
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;

    iget v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->x:I

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;-><init>(I)V

    .line 30
    iget-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a()Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;

    .line 33
    :cond_0
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1$1;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;)Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->start()V

    .line 63
    return-void
.end method
