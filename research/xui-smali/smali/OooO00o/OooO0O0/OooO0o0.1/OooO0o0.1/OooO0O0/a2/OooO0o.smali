.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;
.super LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0OO:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0Oo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;-><init>()V

    .line 7
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0O0:Lkotlin/Lazy;

    .line 12
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO00o/OooO00o/OooO0O0;-><init>()V

    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO00o(Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    .line 1
    invoke-super {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO00o()V

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    return-void
.end method

.method public OooO00o(I)V
    .locals 0

    return-void
.end method

.method public final OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;
    .locals 3

    .line 9
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " ------> createCommand, START_STOP, status = "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoNormalMode"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    .line 11
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 12
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 14
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 15
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(II)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()V
    .locals 9

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SoNormalMode"

    const-string v2, " ------> START_STOP, start"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0O0()V

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    .line 4
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0OO:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0o0()V

    :cond_0
    const-string v1, "SoNormalMode"

    const-string v2, "startCheck"

    .line 6
    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0OO:Ljava/util/Timer;

    .line 8
    new-instance v4, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;)V

    const-wide/16 v5, 0x1f4

    const-wide/16 v7, 0x7530

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public OooO0OO()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SoNormalMode"

    const-string v2, " ------> START_STOP, stop"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0OO()V

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0o0()V

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo:I

    return-void
.end method

.method public final OooO0Oo()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    return-object v0
.end method

.method public final OooO0o0()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SoNormalMode"

    const-string v2, "stopCheck"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0OO:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3
    :goto_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0OO:Ljava/util/Timer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0OO:Ljava/util/Timer;

    return-void
.end method
