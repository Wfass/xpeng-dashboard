.class public Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;,
        Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

.field private static final a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

.field private static final y:I = 0x1388


# instance fields
.field private volatile A:I

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/lang/Runnable;

.field private b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

.field private b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

.field private b:Z

.field private s:Ljava/lang/String;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$1;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    .line 35
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$2;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$2;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    .line 42
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Landroid/os/Handler;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->s:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Z

    .line 50
    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->A:I

    .line 52
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$3;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$3;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Ljava/lang/Runnable;

    .line 73
    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->z:I

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->A:I

    return p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->A:I

    return p1
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->s:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;)Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;
    .locals 0

    .line 84
    if-nez p1, :cond_0

    .line 85
    sget-object p1, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    goto :goto_0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    .line 90
    :goto_0
    return-object p0
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;)Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;
    .locals 0

    .line 101
    if-nez p1, :cond_0

    .line 102
    sget-object p1, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    goto :goto_0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    .line 107
    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;
    .locals 0

    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string p1, ""

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->s:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Z

    .line 136
    return-void
.end method

.method public run()V
    .locals 7

    .line 140
    const-string v0, "ANR-WatchDog"

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->setName(Ljava/lang/String;)V

    .line 143
    nop

    .line 144
    const/4 v0, 0x1

    move v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    iget v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->A:I

    .line 146
    iget-object v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    nop

    .line 149
    :try_start_0
    iget v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->z:I

    div-int/lit16 v3, v3, 0x3e8

    .line 150
    move v4, v0

    :goto_0
    if-gt v4, v3, :cond_3

    .line 151
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 152
    iget v5, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->A:I

    if-eq v5, v2, :cond_2

    .line 153
    iget-object v5, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;->a(Ljava/lang/String;I)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    const/4 v5, 0x3

    if-le v1, v5, :cond_1

    .line 157
    nop

    .line 158
    const-wide/32 v3, 0xea60

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 169
    move v1, v0

    goto :goto_1

    .line 160
    :cond_1
    sub-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_1

    .line 150
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_3
    :goto_1
    nop

    .line 172
    iget v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->A:I

    if-ne v3, v2, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getCrashReporterState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$a;->c(Ljava/lang/String;)V

    .line 174
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->b:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$b;->a(Ljava/lang/InterruptedException;)V

    .line 168
    return-void

    .line 177
    :cond_4
    return-void
.end method
