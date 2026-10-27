.class Lnn;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lnn;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llz;
    .locals 8

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->c()V

    const/4 v0, 0x2

    move v1, v0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 34
    sget-object v2, Lnn;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/c;->a(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->h()V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->l()I

    move-result v1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_3

    return-object v4

    :cond_3
    const/4 v5, -0x1

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xca7

    if-eq v6, v7, :cond_11

    const/16 v7, 0xcc6

    if-eq v6, v7, :cond_10

    const/16 v7, 0xcdf

    if-eq v6, v7, :cond_f

    const/16 v7, 0xda0

    if-eq v6, v7, :cond_e

    const/16 v7, 0xe3e

    if-eq v6, v7, :cond_d

    const/16 v7, 0xe55

    if-eq v6, v7, :cond_c

    const/16 v7, 0xe5f

    if-eq v6, v7, :cond_b

    const/16 v7, 0xe61

    if-eq v6, v7, :cond_a

    const/16 v3, 0xe79

    if-eq v6, v3, :cond_9

    const/16 v3, 0xe7e

    if-eq v6, v3, :cond_8

    const/16 v3, 0xceb

    if-eq v6, v3, :cond_7

    const/16 v3, 0xcec

    if-eq v6, v3, :cond_6

    const/16 v0, 0xe31

    if-eq v6, v0, :cond_5

    const/16 v0, 0xe32

    if-eq v6, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v0, "rd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    goto/16 :goto_3

    :cond_5
    const-string v0, "rc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x8

    goto/16 :goto_3

    :cond_6
    const-string v3, "gs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_3

    :cond_7
    const-string v0, "gr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_8
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    goto/16 :goto_3

    :cond_9
    const-string v0, "tm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    goto :goto_3

    :cond_a
    const-string v0, "st"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto :goto_3

    :cond_b
    const-string v0, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    goto :goto_3

    :cond_c
    const-string v0, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x6

    goto :goto_3

    :cond_d
    const-string v0, "rp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    goto :goto_3

    :cond_e
    const-string v0, "mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    goto :goto_3

    :cond_f
    const-string v0, "gf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    goto :goto_3

    :cond_10
    const-string v0, "fl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto :goto_3

    :cond_11
    const-string v0, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    goto :goto_3

    :cond_12
    :goto_2
    move v0, v5

    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lox;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 96
    :pswitch_0
    invoke-static {p0, p1}, Lol;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmj;

    move-result-object v4

    goto :goto_4

    .line 93
    :pswitch_1
    invoke-static {p0, p1}, Lok;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmi;

    move-result-object v4

    goto :goto_4

    .line 87
    :pswitch_2
    invoke-static {p0}, Loe;->a(Lcom/airbnb/lottie/parser/moshi/c;)Lmf;

    move-result-object v4

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 88
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 84
    :pswitch_3
    invoke-static {p0, p1, v1}, Loi;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;I)Lmg;

    move-result-object v4

    goto :goto_4

    .line 81
    :pswitch_4
    invoke-static {p0, p1}, Los;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmp;

    move-result-object v4

    goto :goto_4

    .line 78
    :pswitch_5
    invoke-static {p0, p1}, Loj;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmh;

    move-result-object v4

    goto :goto_4

    .line 75
    :pswitch_6
    invoke-static {p0, p1, v1}, Lnl;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;I)Lly;

    move-result-object v4

    goto :goto_4

    .line 72
    :pswitch_7
    invoke-static {p0, p1}, Loq;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmn;

    move-result-object v4

    goto :goto_4

    .line 69
    :pswitch_8
    invoke-static {p0, p1}, Lni;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Llu;

    move-result-object v4

    goto :goto_4

    .line 66
    :pswitch_9
    invoke-static {p0, p1}, Lnv;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmb;

    move-result-object v4

    goto :goto_4

    .line 63
    :pswitch_a
    invoke-static {p0, p1}, Loo;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lml;

    move-result-object v4

    goto :goto_4

    .line 60
    :pswitch_b
    invoke-static {p0, p1}, Lnw;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmc;

    move-result-object v4

    goto :goto_4

    .line 57
    :pswitch_c
    invoke-static {p0, p1}, Lor;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmo;

    move-result-object v4

    goto :goto_4

    .line 54
    :pswitch_d
    invoke-static {p0, p1}, Lop;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/d;)Lmm;

    move-result-object v4

    .line 102
    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->e()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 103
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->m()V

    goto :goto_4

    .line 105
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->d()V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
