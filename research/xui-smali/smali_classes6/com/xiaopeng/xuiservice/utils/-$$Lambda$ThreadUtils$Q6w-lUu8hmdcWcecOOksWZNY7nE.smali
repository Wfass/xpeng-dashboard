.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Q6w-lUu8hmdcWcecOOksWZNY7nE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Q6w-lUu8hmdcWcecOOksWZNY7nE;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Q6w-lUu8hmdcWcecOOksWZNY7nE;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->lambda$static$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
