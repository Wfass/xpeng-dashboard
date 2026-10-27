.class Lkotlin/text/l;
.super Lkotlin/text/k;
.source "Indent.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method private static final a(Ljava/lang/String;)Lcas;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcas<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lkotlin/text/l$a;->INSTANCE:Lkotlin/text/l$a;

    check-cast p0, Lcas;

    goto :goto_1

    .line 105
    :cond_1
    new-instance v0, Lkotlin/text/l$b;

    invoke-direct {v0, p0}, Lkotlin/text/l$b;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Lcas;

    :goto_1
    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 27
    invoke-static {p0, v0, p1}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string/jumbo p1, "|"

    .line 26
    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marginPrefix"

    invoke-static {v6, v1}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v1, v6

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/j;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 36
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/j;->g(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v7, v0, v3

    invoke-static/range {p1 .. p1}, Lkotlin/text/l;->a(Ljava/lang/String;)Lcas;

    move-result-object v8

    .line 125
    invoke-static {v1}, Lkotlin/collections/l;->b(Ljava/util/List;)I

    move-result v9

    .line 126
    check-cast v1, Ljava/lang/Iterable;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    .line 139
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v13, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/l;->b()V

    .line 137
    :cond_0
    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_2

    .line 140
    :cond_1
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/j;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v14, v15

    goto :goto_4

    .line 39
    :cond_2
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    .line 144
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v12

    :goto_1
    const/4 v3, -0x1

    if-ge v2, v1, :cond_4

    .line 145
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 39
    invoke-static {v4}, Lkotlin/text/a;->a(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_2
    if-ne v5, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p2

    move v2, v5

    move/from16 v17, v5

    move-object/from16 v5, v16

    .line 43
    invoke-static/range {v0 .. v5}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v17, v0

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v14, v0}, Lccf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {v15, v0}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v15, :cond_8

    .line 143
    invoke-interface {v8, v15}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v14, v0

    :cond_8
    :goto_4
    if-eqz v14, :cond_9

    .line 137
    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    move v0, v13

    goto :goto_0

    .line 152
    :cond_a
    check-cast v10, Ljava/util/List;

    .line 127
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    check-cast v12, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7c

    const/16 v20, 0x0

    invoke-static/range {v11 .. v20}, Lkotlin/collections/l;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcas;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "marginPrefix must be non-blank string."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
