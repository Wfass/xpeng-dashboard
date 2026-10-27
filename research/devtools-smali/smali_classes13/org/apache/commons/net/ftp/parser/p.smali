.class public Lorg/apache/commons/net/ftp/parser/p;
.super Lorg/apache/commons/net/ftp/parser/o;
.source "VMSVersioningFTPEntryParser.java"


# instance fields
.field private final ati:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/p;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/parser/o;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/p;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 85
    :try_start_0
    const-string p1, "(.*?);([0-9]+)\\s*.*"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/p;->ati:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 93
    return-void

    .line 87
    :catch_0
    move-exception p1

    .line 89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unparseable regex supplied:  (.*?);([0-9]+)\\s*.*"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public G(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 108
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 110
    nop

    .line 111
    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/p;->ati:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 114
    invoke-interface {v2, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 117
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 118
    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v5, v3, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 121
    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    nop

    .line 135
    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/p;->ati:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 138
    invoke-interface {v2, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 142
    if-eqz v5, :cond_3

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 144
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 149
    :cond_3
    goto :goto_1

    .line 150
    :cond_4
    return-object p1
.end method

.method protected vd()Z
    .locals 1

    .line 156
    const/4 v0, 0x1

    return v0
.end method
