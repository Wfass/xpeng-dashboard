.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;
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

.field public final synthetic OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    .line 2
    iget-boolean v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0O0:Z

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    .line 4
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    .line 5
    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    .line 8
    iget-object v1, v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0o:Lcom/loostone/libtuning/inf/extern/IFFTReadListener;

    if-nez v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v1, v0}, Lcom/loostone/libtuning/inf/extern/IFFTReadListener;->read([I)V

    .line 12
    :cond_1
    :goto_1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    .line 13
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method
