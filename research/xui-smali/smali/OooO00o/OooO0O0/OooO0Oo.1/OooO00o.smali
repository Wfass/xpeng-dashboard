.class public final LOooO00o/OooO0O0/OooO0Oo/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final OooO00o:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO00o:Landroid/content/Context;

    const-string v0, "<set-?>"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    .line 18
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    invoke-virtual {v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6e20\u9053\u4e3a\uff1a"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkMgr"

    invoke-virtual {v0, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAR_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "address_car.json"

    .line 21
    invoke-static {p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "address.json"

    .line 23
    invoke-static {p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_0
    invoke-static {p1}, Lcom/loostone/libserver/version1/entity/NetUrlConfig;->init(Ljava/lang/String;)V

    .line 28
    new-instance p1, LOooO00o/OooO0O0/OooO0Oo/OooO00o$OooO00o;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO00o$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;

    return-object v0
.end method
