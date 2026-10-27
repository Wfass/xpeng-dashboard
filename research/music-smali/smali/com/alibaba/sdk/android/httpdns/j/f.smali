.class public Lcom/alibaba/sdk/android/httpdns/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/j/i;


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/j/s;

.field private final a:Lcom/alibaba/sdk/android/httpdns/k/d;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/j/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/f;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/f;->a:Lcom/alibaba/sdk/android/httpdns/j/s;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/i/d;Lcom/alibaba/sdk/android/httpdns/i/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/e/b;",
            "Lcom/alibaba/sdk/android/httpdns/i/d;",
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "Lcom/alibaba/sdk/android/httpdns/j/l;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/c;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/j/o;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/j/o;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/alibaba/sdk/android/httpdns/i/c;-><init>(Lcom/alibaba/sdk/android/httpdns/i/d;Lcom/alibaba/sdk/android/httpdns/i/j;)V

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/i/g;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/i/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/h/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/h/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/httpdns/i/e;-><init>(Lcom/alibaba/sdk/android/httpdns/h/a;)V

    invoke-direct {p2, v0, v1}, Lcom/alibaba/sdk/android/httpdns/i/g;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/g;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/j/p;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/f;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/f;->a:Lcom/alibaba/sdk/android/httpdns/j/s;

    invoke-direct {v1, p1, v2, v3}, Lcom/alibaba/sdk/android/httpdns/j/p;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/j/s;)V

    invoke-direct {v0, p2, v1}, Lcom/alibaba/sdk/android/httpdns/i/g;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/i/k;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/alibaba/sdk/android/httpdns/i/k;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;I)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/f;

    invoke-direct {v0, p2, p3}, Lcom/alibaba/sdk/android/httpdns/i/f;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/httpdns/i/i;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
