.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

.field public OooO0O0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    const v0, 0x7fffffff

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO0O0:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 4
    const v0, 0x7fffffff

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO0O0:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 13
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO0O0:I

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;)LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    return-object p1
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 2
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO0O0:I

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooOO0;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'runnable\' of type Runnable (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0OO;->OooO00o(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
