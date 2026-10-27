.class public final Lkotlin/text/i;
.super Ljava/lang/Object;
.source "Regex.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final synthetic a(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/text/i;->b(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;
    .locals 1

    .line 397
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/f;->b(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method
