.class public Lcom/xiaopeng/lib/bughunter/c;
.super Ljava/lang/Object;
.source "StackTraceCollector.java"

# interfaces
.implements Lapa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/c$a;
    }
.end annotation


# instance fields
.field private a:J

.field private volatile b:Lcom/xiaopeng/lib/bughunter/c$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private d:[I

.field private e:[Ljava/lang/StackTraceElement;

.field private f:Ljava/lang/Thread;

.field private g:I

.field private volatile h:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/c;->a:J

    .line 48
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "StackTraceCollector"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 50
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance p2, Lcom/xiaopeng/lib/bughunter/c$a;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/lib/bughunter/c$a;-><init>(Lcom/xiaopeng/lib/bughunter/c;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/xiaopeng/lib/bughunter/c;->b:Lcom/xiaopeng/lib/bughunter/c$a;

    const/4 p1, 0x3

    .line 53
    iput p1, p0, Lcom/xiaopeng/lib/bughunter/c;->g:I

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lcom/xiaopeng/lib/bughunter/c;->g:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    .line 55
    iget p1, p0, Lcom/xiaopeng/lib/bughunter/c;->g:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->b:Lcom/xiaopeng/lib/bughunter/c$a;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/bughunter/c$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 81
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    iput p1, v0, Landroid/os/Message;->what:I

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c;->b:Lcom/xiaopeng/lib/bughunter/c$a;

    iget-wide v1, p0, Lcom/xiaopeng/lib/bughunter/c;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/lib/bughunter/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/lib/bughunter/c;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/c;->f()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/lib/bughunter/c;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/bughunter/c;->a(I)V

    return-void
.end method

.method static synthetic a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)Z
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/bughunter/c;->b([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)Z

    move-result p0

    return p0
.end method

.method private static b([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    array-length v1, p0

    .line 233
    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 238
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method static synthetic b(Lcom/xiaopeng/lib/bughunter/c;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/c;->h()[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/lib/bughunter/c;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/c;->e:[Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/lib/bughunter/c;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/c;->g()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->e:[Ljava/lang/StackTraceElement;

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private g()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 72
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    iget-object v3, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private h()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->f:Ljava/lang/Thread;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/c;->e:[Ljava/lang/StackTraceElement;

    .line 125
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/c;->g:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    .line 127
    iget v1, p0, Lcom/xiaopeng/lib/bughunter/c;->g:I

    sub-int/2addr v1, v3

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    aget v2, v2, v1

    add-int/lit8 v4, v1, -0x1

    move v5, v1

    :goto_0
    if-lt v4, v3, :cond_1

    .line 132
    iget-object v6, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    aget v6, v6, v4

    if-le v2, v6, :cond_0

    .line 134
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    aget v2, v2, v4

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    if-ge v5, v1, :cond_2

    .line 142
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    iget-object v4, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v6

    aput v4, v2, v5

    move v5, v6

    goto :goto_1

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    aput v3, p1, v1

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/lib/bughunter/c;->h:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/xiaopeng/lib/bughunter/c;->h:Z

    const/16 v0, 0x36

    .line 95
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/bughunter/c;->a(I)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/xiaopeng/lib/bughunter/c;->h:Z

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->b:Lcom/xiaopeng/lib/bughunter/c$a;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/bughunter/c$a;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->b:Lcom/xiaopeng/lib/bughunter/c$a;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/bughunter/c$a;->removeMessages(I)V

    return-void
.end method

.method public d()[I
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/c;->d:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 110
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()[[Ljava/lang/StackTraceElement;
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/c;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    filled-new-array {v2, v2}, [I

    move-result-object v2

    const-class v3, Ljava/lang/StackTraceElement;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/StackTraceElement;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
