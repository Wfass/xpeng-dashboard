.class final Lkotlin/text/g;
.super Ljava/lang/Object;
.source "Regex.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:Ljava/util/regex/Matcher;


# direct methods
.method private final a()Ljava/util/regex/MatchResult;
    .locals 1

    .line 352
    iget-object v0, p0, Lkotlin/text/g;->a:Ljava/util/regex/Matcher;

    check-cast v0, Ljava/util/regex/MatchResult;

    return-object v0
.end method

.method public static final synthetic a(Lkotlin/text/g;)Ljava/util/regex/MatchResult;
    .locals 0

    .line 351
    invoke-direct {p0}, Lkotlin/text/g;->a()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method
