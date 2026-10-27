.class Lod;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lme;
    .locals 12

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->g()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x6f

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v6, v7, :cond_3

    const/16 v7, 0xe04

    if-eq v6, v7, :cond_2

    const v7, 0x197f1

    if-eq v6, v7, :cond_1

    const v7, 0x3339a3

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v0

    goto :goto_2

    :cond_1
    const-string v6, "inv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v9

    goto :goto_2

    :cond_2
    const-string v6, "pt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v11

    goto :goto_2

    :cond_3
    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v10

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v8

    :goto_2
    if-eqz v6, :cond_8

    if-eq v6, v11, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->j()Z

    move-result v4

    goto :goto_0

    .line 53
    :cond_6
    invoke-static {p0, p1}, Lnj;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llm;

    move-result-object v3

    goto :goto_0

    .line 50
    :cond_7
    invoke-static {p0, p1}, Lnj;->e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llq;

    move-result-object v2

    goto :goto_0

    .line 29
    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_c

    const/16 v7, 0x69

    if-eq v6, v7, :cond_b

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_a

    const/16 v7, 0x73

    if-eq v6, v7, :cond_9

    goto :goto_3

    :cond_9
    const-string v6, "s"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v8, v11

    goto :goto_3

    :cond_a
    const-string v6, "n"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v8, v10

    goto :goto_3

    :cond_b
    const-string v6, "i"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v8, v9

    goto :goto_3

    :cond_c
    const-string v6, "a"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v8, v0

    :cond_d
    :goto_3
    if-eqz v8, :cond_11

    if-eq v8, v11, :cond_10

    if-eq v8, v10, :cond_f

    if-eq v8, v9, :cond_e

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mask mode "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Defaulting to Add."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lox;->b(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lme$a;->MASK_MODE_ADD:Lme$a;

    goto/16 :goto_0

    :cond_e
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 40
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lme$a;->MASK_MODE_INTERSECT:Lme$a;

    goto/16 :goto_0

    .line 37
    :cond_f
    sget-object v1, Lme$a;->MASK_MODE_NONE:Lme$a;

    goto/16 :goto_0

    .line 34
    :cond_10
    sget-object v1, Lme$a;->MASK_MODE_SUBTRACT:Lme$a;

    goto/16 :goto_0

    .line 31
    :cond_11
    sget-object v1, Lme$a;->MASK_MODE_ADD:Lme$a;

    goto/16 :goto_0

    .line 62
    :cond_12
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->d()V

    .line 64
    new-instance p0, Lme;

    invoke-direct {p0, v1, v2, v3, v4}, Lme;-><init>(Lme$a;Llq;Llm;Z)V

    return-object p0
.end method
