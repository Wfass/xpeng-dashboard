.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final OooO00o:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0Oo:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/loostone/libtuning/process/dongle/LocalDongleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDongleManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO00o:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0O0:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    .line 10
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o$OooO0O0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 15
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o$OooO00o;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0Oo:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final OooO0O0()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    return-object v0
.end method

.method public final OooO0OO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
