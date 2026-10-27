.class public Lnet/lingala/zip4j/c/f$a;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final alo:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;ZLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lnet/lingala/zip4j/c/f$a;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 91
    iput-boolean p2, p0, Lnet/lingala/zip4j/c/f$a;->alo:Z

    .line 92
    iput-object p3, p0, Lnet/lingala/zip4j/c/f$a;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 93
    return-void
.end method

.method static synthetic a(Lnet/lingala/zip4j/c/f$a;)Lnet/lingala/zip4j/progress/ProgressMonitor;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/lingala/zip4j/c/f$a;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-object p0
.end method

.method static synthetic b(Lnet/lingala/zip4j/c/f$a;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lnet/lingala/zip4j/c/f$a;->alo:Z

    return p0
.end method

.method static synthetic c(Lnet/lingala/zip4j/c/f$a;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 84
    iget-object p0, p0, Lnet/lingala/zip4j/c/f$a;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
