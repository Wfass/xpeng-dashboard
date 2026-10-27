.class public Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "XpThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mNamePrefix:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "Navi_Pool"

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;->mNamePrefix:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;->mPriority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;->mNamePrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/xiewpreload/utils/XpThreadFactory;->mPriority:I

    if-eq p1, v0, :cond_1

    .line 35
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_1
    return-object v1
.end method
