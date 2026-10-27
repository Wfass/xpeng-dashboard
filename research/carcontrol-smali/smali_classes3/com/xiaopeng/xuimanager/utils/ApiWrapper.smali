.class public Lcom/xiaopeng/xuimanager/utils/ApiWrapper;
.super Ljava/lang/Object;
.source "ApiWrapper.java"


# static fields
.field private static final DEFAULT_THRESHOLD_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "ApiWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkElapsed(Ljava/lang/Object;JJ)V
    .locals 2

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-ltz p1, :cond_3

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "api cost ms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",info="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 35
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "unknown"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ",stack="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/OsUtil;->isReleaseVersion()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/ApiWrapper;->getStack()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiWrapper"

    .line 34
    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static getStack()Ljava/lang/String;
    .locals 6

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 43
    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    array-length v3, v0

    const/16 v4, 0xa

    if-gt v3, v4, :cond_0

    .line 47
    array-length v4, v0

    :cond_0
    :goto_0
    if-ge v2, v4, :cond_1

    .line 50
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v0, v2

    .line 52
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "() "

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "unknown"

    return-object v0
.end method

.method public static monitor(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 20
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v2, 0x64

    .line 21
    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/utils/ApiWrapper;->checkElapsed(Ljava/lang/Object;JJ)V

    return-object p0
.end method

.method public static monitor(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 27
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v2, 0x64

    .line 28
    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/utils/ApiWrapper;->checkElapsed(Ljava/lang/Object;JJ)V

    return-void
.end method
