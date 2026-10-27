.class public abstract Lnet/lingala/zip4j/c/f;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final alo:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/c/f$a;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lnet/lingala/zip4j/c/f$a;->a(Lnet/lingala/zip4j/c/f$a;)Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 17
    invoke-static {p1}, Lnet/lingala/zip4j/c/f$a;->b(Lnet/lingala/zip4j/c/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/c/f;->alo:Z

    .line 18
    invoke-static {p1}, Lnet/lingala/zip4j/c/f$a;->c(Lnet/lingala/zip4j/c/f$a;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/c/f;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 19
    return-void
.end method

.method static synthetic a(Lnet/lingala/zip4j/c/f;)Lnet/lingala/zip4j/progress/ProgressMonitor;
    .locals 0

    .line 9
    iget-object p0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-object p0
.end method

.method static synthetic a(Lnet/lingala/zip4j/c/f;Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/c/f;->b(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method static synthetic b(Lnet/lingala/zip4j/c/f;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 9
    iget-object p0, p0, Lnet/lingala/zip4j/c/f;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private b(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/c/f;->a(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 52
    invoke-virtual {p2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->tY()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->e(Ljava/lang/Exception;)V

    .line 58
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 53
    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->e(Ljava/lang/Exception;)V

    .line 55
    throw p1
.end method

.method private uf()V
    .locals 2

    .line 73
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->tZ()V

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->apu:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V

    .line 75
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {p0}, Lnet/lingala/zip4j/c/f;->uc()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lnet/lingala/zip4j/c/f;->alo:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->apu:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iget-object v1, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->ua()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/lingala/zip4j/c/f;->uf()V

    .line 28
    iget-boolean v0, p0, Lnet/lingala/zip4j/c/f;->alo:Z

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/c/f;->q(Ljava/lang/Object;)J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->K(J)V

    .line 32
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/lingala/zip4j/c/f$1;

    invoke-direct {v1, p0, p1}, Lnet/lingala/zip4j/c/f$1;-><init>(Lnet/lingala/zip4j/c/f;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/c/f;->b(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 47
    :goto_1
    return-void
.end method

.method protected abstract q(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation
.end method

.method protected abstract uc()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
.end method

.method protected ue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->ub()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->apr:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/c/f;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->apt:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V

    .line 69
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v1, Lnet/lingala/zip4j/exception/ZipException$Type;->alV:Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v2, "Task cancelled"

    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v0
.end method
