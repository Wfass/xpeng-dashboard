.class public Laoy;
.super Ljava/lang/Object;
.source "BlockHandler.java"


# static fields
.field private static f:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lapa;

.field private c:Laoz$b;

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Laoy;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lapa;Laoz$b;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Laoy;->d:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoy;->e:Ljava/util/List;

    .line 35
    iput-object p1, p0, Laoy;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Laoy;->b:Lapa;

    .line 37
    iput-object p3, p0, Laoy;->c:Laoz$b;

    return-void
.end method

.method private varargs a([[Ljava/lang/StackTraceElement;[IZ[J)Ljava/lang/Runnable;
    .locals 7

    .line 54
    new-instance v6, Laoy$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Laoy$1;-><init>(Laoy;Z[[Ljava/lang/StackTraceElement;[I[J)V

    return-object v6
.end method

.method static synthetic a(Laoy;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0}, Laoy;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Laoy;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Laoy;->e:Ljava/util/List;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 96
    iget-object v0, p0, Laoy;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 100
    iget v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget-object v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlockHandler"

    invoke-static {v2, v1}, Lapb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method static synthetic c(Laoy;)Ljava/lang/StringBuilder;
    .locals 0

    .line 20
    iget-object p0, p0, Laoy;->d:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic d(Laoy;)Laoz$b;
    .locals 0

    .line 20
    iget-object p0, p0, Laoy;->c:Laoz$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 118
    iget-object v0, p0, Laoy;->b:Lapa;

    invoke-interface {v0}, Lapa;->b()V

    return-void
.end method

.method public varargs a(Z[J)V
    .locals 3

    .line 43
    iget-object v0, p0, Laoy;->c:Laoz$b;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Laoy;->b:Lapa;

    invoke-interface {v0}, Lapa;->e()[[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 46
    iget-object v1, p0, Laoy;->b:Lapa;

    invoke-interface {v1}, Lapa;->d()[I

    move-result-object v1

    .line 48
    sget-object v2, Laoy;->f:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0, v1, p1, p2}, Laoy;->a([[Ljava/lang/StackTraceElement;[IZ[J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 122
    iget-object v0, p0, Laoy;->b:Lapa;

    invoke-interface {v0}, Lapa;->c()V

    return-void
.end method
