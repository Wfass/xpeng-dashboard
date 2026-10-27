.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;

    .line 4
    iget-object v2, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0OO:Ljava/util/Timer;

    if-nez v2, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget v2, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo:I

    add-int/lit8 v3, v2, 0x1

    .line 6
    iput v3, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 7
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "SoNormalMode"

    const-string v4, "retry start so"

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v2

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v0

    invoke-virtual {v2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    goto :goto_2

    .line 9
    :cond_1
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "SoNormalMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v4, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo:I

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", retry too many times, stopCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0o0()V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;

    .line 14
    iget v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO0o;->OooO0Oo:I

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    move-object v0, p0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o()V

    :goto_2
    return-void
.end method
