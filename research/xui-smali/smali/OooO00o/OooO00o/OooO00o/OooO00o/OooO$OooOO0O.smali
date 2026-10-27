.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0O"
.end annotation


# static fields
.field public static final OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = -0x7fcda7124588b1d6L


# instance fields
.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:I

.field public final OooO0Oo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-pool-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO00o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-thread-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO0O0:Ljava/lang/String;

    .line 5
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO0OO:I

    .line 6
    iput-boolean p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O$OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O$OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11
    iget-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO0Oo:Z

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 12
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O$OooO0O0;

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O$OooO0O0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 18
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0O;->OooO0OO:I

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'r\' of type Runnable (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
