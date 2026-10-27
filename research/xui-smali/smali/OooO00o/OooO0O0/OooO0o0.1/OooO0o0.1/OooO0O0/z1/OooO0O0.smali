.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "echo "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " > /sys/class/pmkaraoke/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/String;ZZ)LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;

    move-result-object p0

    const-string p1, "execCmd(\n                \"echo $value > ${Constant.KO_PATH}$node\",\n                false, true\n            )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO00o:I

    if-eqz p1, :cond_0

    iget-object p0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO00o;->OooO0OO:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p1, "shell set:"

    .line 9
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DNodeCommunication"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const/4 v0, -0x1

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 11
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/-$$Lambda$k2xvP7jD-MoqGQxd5jJ8b56gorg;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/-$$Lambda$k2xvP7jD-MoqGQxd5jJ8b56gorg;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
