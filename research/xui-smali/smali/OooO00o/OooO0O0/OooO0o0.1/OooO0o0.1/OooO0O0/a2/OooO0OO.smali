.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;
.super LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;
.source "SourceFile"


# instance fields
.field public final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;-><init>()V

    .line 7
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    .line 12
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    .line 17
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO00o/OooO00o/OooO0OO;-><init>()V

    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO00o(Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0Oo()LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o(I)V

    return-void
.end method

.method public final OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;
    .locals 2

    .line 5
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    .line 6
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 7
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 9
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 10
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 11
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(II)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()V
    .locals 3

    .line 1
    invoke-super {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0O0()V

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    .line 3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v2

    invoke-virtual {v0, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0Oo()LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0(I)I

    return-void
.end method

.method public OooO0OO()V
    .locals 3

    .line 1
    invoke-super {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0OO()V

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    .line 3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0Oo()LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v0, Lcom/loostone/libcore/jni/JniCall;->OooO00o:Lcom/loostone/libcore/jni/JniCall;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/loostone/libcore/jni/JniCall;->exec(II)I

    .line 49
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0Oo()LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0(I)I

    .line 50
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0Oo()LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o(I)V

    return-void
.end method

.method public final OooO0Oo()LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;

    return-object v0
.end method
