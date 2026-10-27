.class public final synthetic Lorg/chromium/base/task/-$$Lambda$a$v7snGwYGi1w5LvzPYFzjp9BqsOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/chromium/base/task/a;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/task/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/task/-$$Lambda$a$v7snGwYGi1w5LvzPYFzjp9BqsOI;->f$0:Lorg/chromium/base/task/a;

    iput-object p2, p0, Lorg/chromium/base/task/-$$Lambda$a$v7snGwYGi1w5LvzPYFzjp9BqsOI;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/task/-$$Lambda$a$v7snGwYGi1w5LvzPYFzjp9BqsOI;->f$0:Lorg/chromium/base/task/a;

    iget-object v1, p0, Lorg/chromium/base/task/-$$Lambda$a$v7snGwYGi1w5LvzPYFzjp9BqsOI;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/chromium/base/task/a;->lambda$v7snGwYGi1w5LvzPYFzjp9BqsOI(Lorg/chromium/base/task/a;Ljava/lang/Object;)V

    return-void
.end method
