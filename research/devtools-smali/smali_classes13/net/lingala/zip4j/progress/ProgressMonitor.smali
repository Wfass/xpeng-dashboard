.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/progress/ProgressMonitor$Task;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$Result;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    }
.end annotation


# instance fields
.field private apg:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field private aph:J

.field private api:J

.field private apj:I

.field private apk:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field private apl:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field private apm:Z

.field private apn:Z

.field private exception:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 41
    return-void
.end method

.method private reset()V
    .locals 1

    .line 83
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apw:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apk:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 84
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->apt:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apg:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 85
    return-void
.end method


# virtual methods
.method public J(J)V
    .locals 2

    .line 44
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->api:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->api:J

    .line 46
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->aph:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 47
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->api:J

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->aph:J

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apj:I

    .line 48
    iget p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apj:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 49
    iput p2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apj:I

    .line 53
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apn:Z

    if-eqz p1, :cond_1

    .line 55
    const-wide/16 p1, 0x96

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method

.method public K(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->aph:J

    .line 101
    return-void
.end method

.method public a(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apl:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 137
    return-void
.end method

.method public a(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apg:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 93
    return-void
.end method

.method public a(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apk:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 121
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 69
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->apq:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apl:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    .line 71
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 72
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public tY()V
    .locals 1

    .line 63
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->apo:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apl:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apj:I

    .line 65
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 66
    return-void
.end method

.method public tZ()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->aph:J

    .line 78
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->api:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apj:I

    .line 80
    return-void
.end method

.method public ua()Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1

    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apg:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.method public ub()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->apm:Z

    return v0
.end method
