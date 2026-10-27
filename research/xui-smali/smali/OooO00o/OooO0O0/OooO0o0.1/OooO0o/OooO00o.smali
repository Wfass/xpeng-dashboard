.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IAudioFFTProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;,
        LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0O0:Z

.field public OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final OooO0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0o:Lcom/loostone/libtuning/inf/extern/IFFTReadListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final OooO0o0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;)V
    .locals 2
    .param p1    # LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    .line 11
    const/4 p1, 0x1

    iput-boolean p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0O0:Z

    .line 15
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    .line 16
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 17
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 18
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 19
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    invoke-virtual {p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 20
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    invoke-virtual {p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    .line 24
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0OO;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0OO;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0o0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FFTControl"

    const-string v2, "pause()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;

    return-void
.end method

.method public registerFFTReadListener(Lcom/loostone/libtuning/inf/extern/IFFTReadListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IFFTReadListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "iFFTReadListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0o:Lcom/loostone/libtuning/inf/extern/IFFTReadListener;

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FFTControl"

    const-string v2, "release()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->stop()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0o:Lcom/loostone/libtuning/inf/extern/IFFTReadListener;

    return-void
.end method

.method public resume()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FFTControl"

    const-string v2, "resume()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FFTControl"

    const-string v2, "start()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0O0:Z

    if-eqz v1, :cond_0

    const-string v1, "FFTControl"

    const-string v2, "already start()"

    .line 4
    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->stop()V

    .line 9
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0O0:Z

    .line 11
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0OO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0OO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooooOo()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooooOo()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooooo0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooooo0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooooo()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 46
    :goto_0
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FFTControl"

    const-string v2, "stop()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0O0:Z

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0OO:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;

    .line 6
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooooo()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public unRegisterFFTReadListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0o:Lcom/loostone/libtuning/inf/extern/IFFTReadListener;

    return-void
.end method
