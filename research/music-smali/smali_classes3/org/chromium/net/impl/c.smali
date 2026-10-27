.class public abstract Lorg/chromium/net/impl/c;
.super Lorg/chromium/net/h;
.source "CronetEngineBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/chromium/net/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/s$a;)Lorg/chromium/net/impl/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/w$b;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/s$a;",
            ")",
            "Lorg/chromium/net/impl/n;"
        }
    .end annotation
.end method

.method public synthetic a(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/w$a;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/c;->b(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;
    .locals 1

    .line 102
    new-instance v0, Lorg/chromium/net/impl/o;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/chromium/net/impl/o;-><init>(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/c;)V

    return-object v0
.end method
