.class final Lkotlin/text/MatcherMatchResult$groups$1$a;
.super Lccg;
.source "Regex.kt"

# interfaces
.implements Lcas;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/MatcherMatchResult$groups$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccg;",
        "Lcas<",
        "Ljava/lang/Integer;",
        "Lkotlin/text/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/text/MatcherMatchResult$groups$1;


# direct methods
.method constructor <init>(Lkotlin/text/MatcherMatchResult$groups$1;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$groups$1$a;->a:Lkotlin/text/MatcherMatchResult$groups$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lccg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lkotlin/text/f;
    .locals 1

    .line 362
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult$groups$1$a;->a:Lkotlin/text/MatcherMatchResult$groups$1;

    invoke-virtual {v0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 362
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1$a;->a(I)Lkotlin/text/f;

    move-result-object p1

    return-object p1
.end method
