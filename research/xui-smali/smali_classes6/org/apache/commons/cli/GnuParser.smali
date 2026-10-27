.class public Lorg/apache/commons/cli/GnuParser;
.super Lorg/apache/commons/cli/Parser;
.source "GnuParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/cli/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p1, "options"    # Lorg/apache/commons/cli/Options;
    .param p2, "arguments"    # [Ljava/lang/String;
    .param p3, "stopAtNonOption"    # Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "tokens":Ljava/util/List;
    const/4 v1, 0x0

    .line 55
    .local v1, "eatTheRest":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "eatTheRest":Z
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_7

    .line 57
    aget-object v4, p2, v1

    .line 59
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "--"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const/4 v3, 0x1

    .line 62
    const-string v5, "--"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 64
    :cond_0
    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    const-string v5, "-"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    :cond_1
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    invoke-static {v4}, Lorg/apache/commons/cli/Util;->stripLeadingHyphens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "opt":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_2
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_4
    move v3, p3

    .line 93
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v5    # "opt":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 99
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_2
    if-eqz v3, :cond_6

    .line 104
    :goto_3
    add-int/lit8 v1, v1, 0x1

    array-length v5, p2

    if-ge v1, v5, :cond_6

    .line 106
    aget-object v5, p2, v1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 55
    .end local v4    # "arg":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
