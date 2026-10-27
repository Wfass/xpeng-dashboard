.class public Lcan;
.super Lcam;
.source "JDK8PlatformImplementations.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcam;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lkotlin/text/f;
    .locals 4

    const-string v0, "matchResult"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 45
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 46
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    .line 47
    new-instance v1, Lkotlin/text/f;

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "matcher.group(name)"

    invoke-static {p1, p2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lkotlin/text/f;-><init>(Ljava/lang/String;Lkotlin/ranges/IntRange;)V

    :cond_1
    return-object v1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Retrieving groups by name is not supported on this platform."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
