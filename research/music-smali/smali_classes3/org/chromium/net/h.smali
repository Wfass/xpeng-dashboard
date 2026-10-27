.class public abstract Lorg/chromium/net/h;
.super Lorg/chromium/net/d;
.source "ExperimentalCronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/chromium/net/d;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/w$a;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/h;->b(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;
.end method
