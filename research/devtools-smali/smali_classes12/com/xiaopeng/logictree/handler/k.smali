.class public Lcom/xiaopeng/logictree/handler/k;
.super Lcom/xiaopeng/logictree/handler/h;
.source "ShellCmd.java"


# instance fields
.field private final vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

.field private final vp:Lcom/xiaopeng/aftersales/ShellCmdListener;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 22
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$k$f7GTfXKCAretnnjEpOkLsq6VUUY;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$k$f7GTfXKCAretnnjEpOkLsq6VUUY;-><init>(Lcom/xiaopeng/logictree/handler/k;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->vp:Lcom/xiaopeng/aftersales/ShellCmdListener;

    .line 157
    const-string p1, "ShellCmd"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->CLASS_NAME:Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->context:Landroid/content/Context;

    const-string v0, "xiaopeng_aftersales"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/k;->vp:Lcom/xiaopeng/aftersales/ShellCmdListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->registerShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V

    .line 161
    return-void
.end method

.method private synthetic a(ILjava/lang/String;Z)V
    .locals 8

    .line 23
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x61f

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "9"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x9

    goto/16 :goto_1

    :pswitch_1
    const-string v1, "8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    goto :goto_1

    :pswitch_2
    const-string v1, "7"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x7

    goto :goto_1

    :pswitch_3
    const-string v1, "6"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :pswitch_4
    const-string v1, "5"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_1

    :pswitch_5
    const-string v1, "4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v5

    goto :goto_1

    :pswitch_6
    const-string v1, "3"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v6

    goto :goto_1

    :pswitch_7
    const-string v1, "2"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v7

    goto :goto_1

    :pswitch_8
    const-string v1, "1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_0
    const-string v1, "10"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, -0x1

    :goto_1
    const/16 v1, 0xa

    packed-switch p3, :pswitch_data_1

    goto/16 :goto_18

    .line 115
    :pswitch_9
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c

    .line 117
    :try_start_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 118
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p3, p3

    sub-int/2addr p3, v7

    div-int/2addr p3, v7

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v7

    rem-int/2addr v2, v7

    if-lez v2, :cond_2

    .line 120
    add-int/lit8 p3, p3, 0x1

    .line 122
    :cond_2
    if-nez p3, :cond_6

    .line 123
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p3, p3

    if-le p3, v7, :cond_3

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v7

    goto :goto_2

    .line 124
    :cond_3
    const-string p3, ""

    .line 125
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v6, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_4
    const-string v0, ""

    .line 123
    :goto_3
    invoke-static {p2, p3, v0}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p3, p3

    if-le p3, v5, :cond_5

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    :cond_5
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_8

    .line 128
    :cond_6
    :goto_4
    if-ge v0, p3, :cond_a

    .line 129
    mul-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v7

    .line 130
    add-int/lit8 v3, v2, 0x1

    .line 131
    add-int/lit8 v4, v2, 0x2

    .line 132
    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length v5, v5

    if-le v5, v2, :cond_7

    .line 133
    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v2, v5, v2

    goto :goto_5

    :cond_7
    const-string v2, ""

    .line 134
    :goto_5
    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length v5, v5

    if-le v5, v3, :cond_8

    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v3, v5, v3

    goto :goto_6

    :cond_8
    const-string v3, ""

    .line 132
    :goto_6
    invoke-static {p2, v2, v3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v4, :cond_9

    .line 136
    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_7

    .line 135
    :cond_9
    move v3, v1

    :goto_7
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 139
    :cond_a
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 140
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/logictree/handler/-$$Lambda$k$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/logictree/handler/-$$Lambda$k$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->d([I)V

    goto :goto_9

    .line 142
    :cond_b
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 144
    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 147
    :goto_9
    goto/16 :goto_18

    .line 149
    :cond_c
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    goto/16 :goto_18

    .line 101
    :pswitch_a
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_10

    .line 103
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v7, :cond_d

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v7

    goto :goto_a

    :cond_d
    const-string p1, ""

    .line 104
    :goto_a
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p3, p3

    if-le p3, v6, :cond_e

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v6

    goto :goto_b

    :cond_e
    const-string p3, ""

    .line 103
    :goto_b
    invoke-static {p2, p1, p3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p2, p2

    if-le p2, v5, :cond_f

    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    :cond_f
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    .line 106
    :catch_1
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 109
    :goto_c
    goto/16 :goto_18

    .line 111
    :cond_10
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 113
    goto/16 :goto_18

    .line 87
    :pswitch_b
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_13

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v6, :cond_11

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v7

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v6

    invoke-static {p2, p1, p3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    .line 90
    :cond_11
    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/i;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 91
    :goto_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 92
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    goto :goto_e

    .line 94
    :cond_12
    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->dT(Ljava/lang/String;)V

    .line 96
    :goto_e
    goto/16 :goto_18

    .line 97
    :cond_13
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 99
    goto/16 :goto_18

    .line 73
    :pswitch_c
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_17

    .line 75
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v6, :cond_14

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v6

    goto :goto_f

    :cond_14
    const-string p1, ""

    .line 76
    :goto_f
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p3, p3

    if-le p3, v5, :cond_15

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v5

    goto :goto_10

    :cond_15
    const-string p3, ""

    .line 75
    :goto_10
    invoke-static {p2, p1, p3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p2, p2

    if-le p2, v3, :cond_16

    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    :cond_16
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    .line 78
    :catch_2
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 81
    :goto_11
    goto/16 :goto_18

    .line 83
    :cond_17
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 85
    goto/16 :goto_18

    .line 64
    :pswitch_d
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_19

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v5, :cond_18

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v6

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v5

    invoke-static {p2, p1, p3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    .line 67
    :cond_18
    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/i;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    :goto_12
    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->dT(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 69
    :cond_19
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 71
    goto/16 :goto_18

    .line 50
    :pswitch_e
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1d

    .line 52
    :try_start_3
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v4, :cond_1a

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v4

    goto :goto_13

    :cond_1a
    const-string p1, ""

    .line 53
    :goto_13
    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p3, p3

    if-le p3, v7, :cond_1b

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v7

    goto :goto_14

    :cond_1b
    const-string p3, ""

    .line 52
    :goto_14
    invoke-static {p2, p1, p3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p2, p2

    if-le p2, v6, :cond_1c

    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p2, p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    :cond_1c
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_15

    .line 55
    :catch_3
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 58
    :goto_15
    goto :goto_18

    .line 60
    :cond_1d
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 62
    goto :goto_18

    .line 36
    :pswitch_f
    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_20

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v7, :cond_1e

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v4

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p3, p3, v7

    invoke-static {p2, p1, p3}, Lcom/xiaopeng/commonfunc/utils/i;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    .line 39
    :cond_1e
    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/i;->aV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 40
    :goto_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 41
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    goto :goto_17

    .line 43
    :cond_1f
    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->dT(Ljava/lang/String;)V

    .line 45
    :goto_17
    goto :goto_18

    .line 46
    :cond_20
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 48
    goto :goto_18

    .line 33
    :pswitch_10
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    .line 34
    goto :goto_18

    .line 26
    :pswitch_11
    if-nez p1, :cond_21

    .line 27
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_18

    .line 29
    :cond_21
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 31
    nop

    .line 153
    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x31
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$f7GTfXKCAretnnjEpOkLsq6VUUY(Lcom/xiaopeng/logictree/handler/k;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/logictree/handler/k;->a(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 166
    nop

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_4

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "shellcmd : %s"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    invoke-static {p1, v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x61f

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v3, "9"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto/16 :goto_1

    :pswitch_1
    const-string v3, "8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :pswitch_2
    const-string v3, "7"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :pswitch_3
    const-string v3, "6"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :pswitch_4
    const-string v3, "5"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :pswitch_5
    const-string v3, "4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :pswitch_6
    const-string v3, "3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_1

    :pswitch_7
    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :pswitch_8
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_0
    const-string v3, "10"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    .line 189
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    const-string v2, "/cache/aftersales"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v2, "tempCmdFile_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v6, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {p1, v2}, Lcom/xiaopeng/commonfunc/utils/i;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v2, v2, v1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {v2, v0, p1, v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 199
    goto :goto_4

    .line 180
    :pswitch_a
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v4, p1, v1

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v6, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v5, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object p1, p1, v5

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    move-object v6, p1

    const/4 v7, 0x0

    .line 180
    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmdWithLimitLine(ILjava/lang/String;ILjava/lang/String;Z)V

    .line 183
    nop

    .line 184
    goto :goto_4

    .line 174
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/k;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/k;->YB:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v0, v2, v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V

    .line 176
    nop

    .line 177
    goto :goto_4

    .line 205
    :cond_4
    :goto_3
    move v1, v0

    :goto_4
    if-nez v1, :cond_5

    .line 206
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_5
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 164
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x31
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public destroy()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/k;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/k;->vp:Lcom/xiaopeng/aftersales/ShellCmdListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->unregisterShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V

    .line 214
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 215
    return-void
.end method
