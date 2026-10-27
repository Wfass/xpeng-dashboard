.class public Lw;
.super Ly;
.source "ArchTaskExecutor.java"


# static fields
.field private static volatile a:Lw;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private b:Ly;

.field private c:Ly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lw$1;

    invoke-direct {v0}, Lw$1;-><init>()V

    sput-object v0, Lw;->d:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Lw$2;

    invoke-direct {v0}, Lw$2;-><init>()V

    sput-object v0, Lw;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ly;-><init>()V

    .line 58
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Lw;->c:Ly;

    .line 59
    iget-object v0, p0, Lw;->c:Ly;

    iput-object v0, p0, Lw;->b:Ly;

    return-void
.end method

.method public static a()Lw;
    .locals 2

    .line 69
    sget-object v0, Lw;->a:Lw;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lw;->a:Lw;

    return-object v0

    .line 72
    :cond_0
    const-class v0, Lw;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lw;->a:Lw;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lw;

    invoke-direct {v1}, Lw;-><init>()V

    sput-object v1, Lw;->a:Lw;

    .line 76
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lw;->a:Lw;

    return-object v0

    :catchall_0
    move-exception v1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lw;->b:Ly;

    invoke-virtual {v0, p1}, Ly;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lw;->b:Ly;

    invoke-virtual {v0, p1}, Ly;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lw;->b:Ly;

    invoke-virtual {v0}, Ly;->b()Z

    move-result v0

    return v0
.end method
