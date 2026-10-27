.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0O0:Z

.field public final synthetic OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 2
    iget-boolean v1, v1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0:Z

    if-eqz v1, :cond_2

    .line 3
    :goto_1
    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0O0:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget-object v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 8
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :goto_3
    monitor-exit v1

    throw v2

    .line 10
    :cond_1
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 11
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0()[B

    move-result-object v1

    iget-object v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 14
    aget-byte v3, v1, v0

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    .line 15
    invoke-virtual {v2, v0, v3}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(II)V

    .line 16
    aget-byte v3, v1, v0

    .line 17
    invoke-virtual {v2, v4, v3}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(II)V

    .line 18
    aget-byte v1, v1, v4

    .line 19
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(II)V

    .line 20
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 23
    iget-object v5, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 24
    iget-object v5, v5, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    iget-object v5, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 26
    invoke-virtual {v5}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x3

    .line 104
    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v3}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[B[BI)[B

    move-result-object v5

    .line 105
    iget-object v6, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 106
    aget-byte v7, v5, v0

    invoke-static {v6, v4, v7}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;II)V

    .line 108
    aget-byte v4, v5, v4

    invoke-static {v6, v3, v4}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;II)V

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 117
    invoke-virtual {v1, v0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(II)V

    :cond_2
    return-void

    :array_0
    .array-data 1
        -0x10t
        0x2t
        0x0t
    .end array-data
.end method
