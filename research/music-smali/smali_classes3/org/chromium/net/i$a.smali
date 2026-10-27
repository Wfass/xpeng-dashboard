.class public abstract Lorg/chromium/net/i$a;
.super Lorg/chromium/net/w$a;
.source "ExperimentalUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/chromium/net/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lorg/chromium/net/i$a;
.end method

.method public abstract a(I)Lorg/chromium/net/i$a;
.end method

.method public abstract a(Ljava/lang/String;)Lorg/chromium/net/i$a;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/i$a;
.end method

.method public abstract a(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;
.end method

.method public abstract b()Lorg/chromium/net/i;
.end method

.method public synthetic b(I)Lorg/chromium/net/w$a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/chromium/net/i$a;->a(I)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lorg/chromium/net/w$a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/chromium/net/i$a;->a(Ljava/lang/String;)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/w$a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/w$a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/i$a;->a(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c()Lorg/chromium/net/w;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/chromium/net/i$a;->b()Lorg/chromium/net/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lorg/chromium/net/w$a;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/chromium/net/i$a;->a()Lorg/chromium/net/i$a;

    move-result-object v0

    return-object v0
.end method
