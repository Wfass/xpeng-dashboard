.class public Lwy$a;
.super Ljava/lang/Object;
.source "ObjectReaderBaseModule.java"

# interfaces
.implements Lsl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lwy;


# direct methods
.method public constructor <init>(Lwy;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lwy$a;->a:Lwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 974
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fasterxml.jackson.databind.JsonDeserializer$None"

    .line 977
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.alibaba.fastjson2.adapter.jackson.databind.JsonDeserializer$None"

    .line 978
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lwk;

    .line 979
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic a(Ljava/lang/String;Lqg;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 837
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/high16 v0, 0x10000000000000L

    if-eqz p1, :cond_1

    .line 838
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 839
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 840
    invoke-virtual {p0, p2, p3, p6}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 842
    :cond_0
    iget-wide p3, p2, Lqg;->e:J

    or-long/2addr p3, v0

    iput-wide p3, p2, Lqg;->e:J

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 844
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 845
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 846
    invoke-virtual {p0, p2, p3, p6}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 848
    :cond_2
    iget-wide p3, p2, Lqg;->e:J

    or-long/2addr p3, v0

    iput-wide p3, p2, Lqg;->e:J

    goto :goto_0

    .line 849
    :cond_3
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 850
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 851
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 852
    invoke-virtual {p0, p2, p3, p6}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 854
    :cond_4
    iget-wide p3, p2, Lqg;->e:J

    or-long/2addr p3, v0

    iput-wide p3, p2, Lqg;->e:J

    :cond_5
    :goto_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 592
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 594
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "typeName"

    .line 595
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 596
    check-cast p0, Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 598
    iput-object p0, p1, Lqe;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 10

    const-string v0, "\'T\'"

    .line 1045
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1047
    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1048
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "deserialize"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_1
    const-string p2, "deserializeUsing"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_2
    const-string p2, "label"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_3
    const-string p2, "name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_4
    const-string p2, "alternateNames"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_5
    const-string p2, "defaultValue"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_6
    const-string p2, "parseFeatures"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_7
    const-string p2, "ordinal"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_8
    const-string p2, "format"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v4

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    .line 1131
    :pswitch_0
    check-cast p0, Ljava/lang/Class;

    .line 1132
    const-class p2, Lwk;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1133
    iput-object p0, p1, Lqg;->k:Ljava/lang/Class;

    goto/16 :goto_6

    .line 1112
    :pswitch_1
    check-cast p0, [Ljava/lang/Enum;

    .line 1113
    array-length p2, p0

    move v0, v2

    :goto_2
    if-ge v0, p2, :cond_a

    aget-object v1, p0, v0

    .line 1114
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x35496aab    # -5982890.5f

    if-eq v6, v7, :cond_3

    const v7, -0xbf831a8

    if-eq v6, v7, :cond_2

    const v7, 0x778dede2

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "InitStringFieldAsEmpty"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_2
    const-string v6, "SupportAutoType"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_3
    const-string v6, "SupportArrayToBean"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v4

    :goto_4
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v3, :cond_5

    goto :goto_5

    .line 1122
    :cond_5
    iget-wide v6, p1, Lqg;->e:J

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    iget-wide v8, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p1, Lqg;->e:J

    goto :goto_5

    .line 1119
    :cond_6
    iget-wide v6, p1, Lqg;->e:J

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide v8, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p1, Lqg;->e:J

    goto :goto_5

    .line 1116
    :cond_7
    iget-wide v6, p1, Lqg;->e:J

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v8, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p1, Lqg;->e:J

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1105
    :pswitch_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_a

    .line 1107
    iput-boolean v5, p1, Lqg;->f:Z

    goto/16 :goto_6

    .line 1098
    :pswitch_3
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_a

    .line 1100
    iput p0, p1, Lqg;->d:I

    goto/16 :goto_6

    .line 1084
    :pswitch_4
    check-cast p0, [Ljava/lang/String;

    .line 1085
    array-length p2, p0

    if-eqz p2, :cond_a

    .line 1086
    iget-object p2, p1, Lqg;->g:[Ljava/lang/String;

    if-nez p2, :cond_8

    .line 1087
    iput-object p0, p1, Lqg;->g:[Ljava/lang/String;

    goto :goto_6

    .line 1089
    :cond_8
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1090
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1091
    iget-object p0, p1, Lqg;->g:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1092
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, p1, Lqg;->g:[Ljava/lang/String;

    goto :goto_6

    .line 1077
    :pswitch_5
    check-cast p0, Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 1079
    iput-object p0, p1, Lqg;->n:Ljava/lang/String;

    goto :goto_6

    .line 1070
    :pswitch_6
    check-cast p0, Ljava/lang/String;

    .line 1071
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 1072
    iput-object p0, p1, Lqg;->c:Ljava/lang/String;

    goto :goto_6

    .line 1057
    :pswitch_7
    check-cast p0, Ljava/lang/String;

    .line 1058
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 1059
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x54

    .line 1061
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-eq p2, v4, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "T"

    .line 1062
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1065
    :cond_9
    iput-object p0, p1, Lqg;->b:Ljava/lang/String;

    goto :goto_6

    .line 1050
    :pswitch_8
    check-cast p0, Ljava/lang/String;

    .line 1051
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 1052
    iput-object p0, p1, Lqg;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ba00809 -> :sswitch_8
        -0x47f1458f -> :sswitch_7
        -0x4000fff0 -> :sswitch_6
        -0x27497450 -> :sswitch_5
        -0xd631d12 -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x61f7ef4 -> :sswitch_2
        0x3ecb2845 -> :sswitch_1
        0x6820db7f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private synthetic a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lwy$a;->a:Lwy;

    invoke-static {v0, p1, p2, p3}, Lwy;->a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method private synthetic a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lwy$a;->a:Lwy;

    invoke-static {v0, p1, p2, p3}, Lwy;->a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private a(Lqe;[Ljava/lang/annotation/Annotation;)V
    .locals 6

    .line 384
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 385
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 386
    const-class v4, Lqd;

    invoke-static {v2, v4}, Laax;->a(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lqd;

    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {p0, p1, v2}, Lwy$a;->a(Lqe;Ljava/lang/annotation/Annotation;)V

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    const-class v4, Lqa;

    if-ne v3, v4, :cond_1

    .line 395
    check-cast v2, Lqa;

    .line 396
    invoke-interface {v2}, Lqa;->a()Lqa$a;

    move-result-object v2

    sget-object v3, Lqa$a;->LAMBDA:Lqa$a;

    if-ne v2, v3, :cond_1

    .line 397
    iget-wide v2, p1, Lqe;->m:J

    const-wide/high16 v4, 0x40000000000000L

    or-long/2addr v2, v4

    iput-wide v2, p1, Lqe;->m:J

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lqg;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 933
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 938
    new-instance v1, L-$$Lambda$wy$a$4OY_YsRe8aIx4yqqEkkVRej4uIE;

    invoke-direct {v1, p0, p2, p1}, L-$$Lambda$wy$a$4OY_YsRe8aIx4yqqEkkVRej4uIE;-><init>(Lwy$a;Ljava/lang/annotation/Annotation;Lqg;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private a(Lqg;Lqc;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1151
    :cond_0
    invoke-interface {p2}, Lqc;->b()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1153
    iput-object v0, p1, Lqg;->a:Ljava/lang/String;

    .line 1156
    :cond_1
    invoke-interface {p2}, Lqc;->c()Ljava/lang/String;

    move-result-object v0

    .line 1157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1158
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    .line 1159
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "\'T\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "T"

    .line 1160
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    :cond_2
    iput-object v0, p1, Lqg;->b:Ljava/lang/String;

    .line 1166
    :cond_3
    invoke-interface {p2}, Lqc;->d()Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1168
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1169
    iput-object v0, p1, Lqg;->c:Ljava/lang/String;

    .line 1172
    :cond_4
    invoke-interface {p2}, Lqc;->o()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1174
    iput-object v0, p1, Lqg;->n:Ljava/lang/String;

    .line 1177
    :cond_5
    invoke-interface {p2}, Lqc;->p()Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    const-string v1, "_"

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1180
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 1181
    new-instance v1, Ljava/util/Locale;

    aget-object v4, v0, v2

    aget-object v0, v0, v3

    invoke-direct {v1, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lqg;->o:Ljava/util/Locale;

    .line 1185
    :cond_6
    invoke-interface {p2}, Lqc;->h()[Ljava/lang/String;

    move-result-object v0

    .line 1186
    array-length v1, v0

    if-eqz v1, :cond_8

    .line 1187
    iget-object v1, p1, Lqg;->g:[Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1188
    iput-object v0, p1, Lqg;->g:[Ljava/lang/String;

    goto :goto_0

    .line 1190
    :cond_7
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1191
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1192
    iget-object v0, p1, Lqg;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1193
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p1, Lqg;->g:[Ljava/lang/String;

    .line 1197
    :cond_8
    :goto_0
    iget-boolean v0, p1, Lqg;->f:Z

    if-nez v0, :cond_9

    .line 1198
    invoke-interface {p2}, Lqc;->f()Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p1, Lqg;->f:Z

    .line 1201
    :cond_9
    invoke-interface {p2}, Lqc;->l()[Lcom/alibaba/fastjson2/u$d;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_a

    aget-object v4, v0, v2

    .line 1202
    iget-wide v5, p1, Lqg;->e:J

    iget-wide v7, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long v4, v5, v7

    iput-wide v4, p1, Lqg;->e:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1205
    :cond_a
    invoke-interface {p2}, Lqc;->a()I

    move-result v0

    if-eqz v0, :cond_b

    .line 1207
    iput v0, p1, Lqg;->d:I

    .line 1210
    :cond_b
    invoke-interface {p2}, Lqc;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1212
    iget-wide v0, p1, Lqg;->e:J

    const-wide/high16 v4, 0x1000000000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lqg;->e:J

    .line 1215
    :cond_c
    invoke-interface {p2}, Lqc;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1216
    iget-wide v0, p1, Lqg;->e:J

    const-wide/high16 v4, 0x2000000000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lqg;->e:J

    .line 1219
    :cond_d
    invoke-interface {p2}, Lqc;->s()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1220
    iput-boolean v3, p1, Lqg;->q:Z

    .line 1223
    :cond_e
    invoke-interface {p2}, Lqc;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1225
    iput-object v0, p1, Lqg;->p:Ljava/lang/String;

    .line 1228
    :cond_f
    invoke-interface {p2}, Lqc;->k()Ljava/lang/Class;

    move-result-object p2

    .line 1229
    const-class v0, Lwk;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1230
    iput-object p2, p1, Lqg;->k:Ljava/lang/Class;

    :cond_10
    return-void
.end method

.method private a(Lqg;[Ljava/lang/annotation/Annotation;)V
    .locals 9

    .line 864
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 865
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 866
    const-class v5, Lqc;

    invoke-static {v3, v5}, Laax;->a(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lqc;

    if-eqz v5, :cond_0

    .line 868
    invoke-direct {p0, p1, v5}, Lwy$a;->a(Lqg;Lqc;)V

    if-ne v5, v3, :cond_0

    goto/16 :goto_3

    .line 874
    :cond_0
    const-class v5, Lqa;

    if-ne v4, v5, :cond_1

    .line 875
    move-object v5, v3

    check-cast v5, Lqa;

    .line 876
    invoke-interface {v5}, Lqa;->a()Lqa$a;

    move-result-object v5

    sget-object v6, Lqa$a;->LAMBDA:Lqa$a;

    if-ne v5, v6, :cond_1

    .line 877
    iget-wide v5, p1, Lqg;->e:J

    const-wide/high16 v7, 0x40000000000000L

    or-long/2addr v5, v7

    iput-wide v5, p1, Lqg;->e:J

    .line 881
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v5

    .line 882
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    .line 883
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAlias"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "com.fasterxml.jackson.annotation.JsonProperty"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "com.fasterxml.jackson.annotation.JsonAnyGetter"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAnyGetter"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "com.fasterxml.jackson.annotation.JsonAlias"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_6
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.databind.annotation.JsonDeserialize"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_7
    const-string v7, "com.fasterxml.jackson.annotation.JsonIgnore"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :sswitch_8
    const-string v7, "com.fasterxml.jackson.annotation.JsonFormat"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_9
    const-string v7, "com.fasterxml.jackson.databind.annotation.JsonDeserialize"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_a
    const-string v7, "com.google.gson.annotations.SerializedName"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xd

    goto :goto_2

    :sswitch_b
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonProperty"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_c
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonIgnore"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_d
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonFormat"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 924
    :pswitch_0
    invoke-static {p1, v3}, Laax;->c(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_1
    if-eqz v5, :cond_3

    .line 920
    invoke-direct {p0, p1, v3}, Lwy$a;->c(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_2
    if-eqz v5, :cond_3

    .line 914
    invoke-direct {p0, p1, v3}, Lwy$a;->a(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_3
    if-eqz v5, :cond_3

    .line 908
    invoke-static {p1, v3}, Laax;->b(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_4
    if-eqz v5, :cond_3

    .line 902
    invoke-direct {p0, p1, v3}, Lwy$a;->b(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    .line 897
    :pswitch_5
    invoke-direct {p0, p1, v3}, Lwy$a;->d(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_6
    if-eqz v5, :cond_3

    .line 893
    iget-wide v3, p1, Lqg;->e:J

    const-wide/high16 v5, 0x2000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p1, Lqg;->e:J

    goto :goto_3

    :pswitch_7
    if-eqz v5, :cond_3

    .line 887
    invoke-static {p1, v3}, Laax;->a(Lqg;Ljava/lang/annotation/Annotation;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e092dfb -> :sswitch_d
        -0x795d2820 -> :sswitch_c
        -0x77e9939d -> :sswitch_b
        -0x5de7f44c -> :sswitch_a
        -0x3b756049 -> :sswitch_9
        -0x30a2e30a -> :sswitch_8
        -0x2bf6dd2f -> :sswitch_7
        -0x22a1317a -> :sswitch_6
        -0xa1baa8f -> :sswitch_5
        -0x9c78eb7 -> :sswitch_4
        0x92374b8 -> :sswitch_3
        0x1515bf14 -> :sswitch_2
        0x3ed64f9e -> :sswitch_1
        0x7fc84282 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic b(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 10

    .line 406
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 408
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "seeAlso"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto/16 :goto_1

    :sswitch_1
    const-string p3, "ignores"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string p3, "autoTypeCheckHandler"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string p3, "deserializeFeatures"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string p3, "deserializeUsing"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string p3, "builder"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string p3, "autoTypeBeforeHandler"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xd

    goto :goto_1

    :sswitch_7
    const-string p3, "seeAlsoDefault"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v5

    goto :goto_1

    :sswitch_8
    const-string p3, "typeName"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v3

    goto :goto_1

    :sswitch_9
    const-string p3, "typeKey"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v4

    goto :goto_1

    :sswitch_a
    const-string p3, "schema"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x7

    goto :goto_1

    :sswitch_b
    const-string p3, "orders"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    goto :goto_1

    :sswitch_c
    const-string p3, "naming"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_d
    const-string p3, "parseFeatures"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x9

    goto :goto_1

    :sswitch_e
    const-string p3, "deserializer"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    move p3, v2

    :goto_1
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_a

    .line 557
    :pswitch_0
    check-cast p1, Ljava/lang/Class;

    .line 558
    const-class p3, Lcom/alibaba/fastjson2/u$a;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 559
    iput-object p1, p2, Lqe;->C:Ljava/lang/Class;

    goto/16 :goto_a

    .line 549
    :pswitch_1
    check-cast p1, Ljava/lang/Class;

    .line 550
    const-class p3, Lwk;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 551
    iput-object p1, p2, Lqe;->w:Ljava/lang/Class;

    goto/16 :goto_a

    .line 515
    :pswitch_2
    check-cast p1, Ljava/lang/Class;

    .line 516
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, p3, :cond_d

    const-class p3, Ljava/lang/Void;

    if-eq p1, p3, :cond_d

    .line 517
    iput-object p1, p2, Lqe;->c:Ljava/lang/Class;

    .line 519
    invoke-static {p1}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p3

    array-length v0, p3

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    .line 520
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.alibaba.fastjson.annotation.JSONPOJOBuilder"

    .line 523
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    iget-object v4, p0, Lwy$a;->a:Lwy;

    invoke-static {v4, p2, p1, v2, v3}, Lwy;->a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_3

    .line 526
    :cond_1
    const-class v2, Lpz;

    invoke-static {p1, v2}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lpz;

    if-eqz v2, :cond_2

    .line 528
    invoke-interface {v2}, Lpz;->a()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-static {p1, v3}, Laax;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p2, Lqe;->d:Ljava/lang/reflect/Method;

    .line 530
    invoke-interface {v2}, Lpz;->b()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 532
    iput-object v2, p2, Lqe;->e:Ljava/lang/String;

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 538
    :cond_3
    iget-object p3, p2, Lqe;->d:Ljava/lang/reflect/Method;

    if-nez p3, :cond_4

    const-string p3, "build"

    .line 539
    invoke-static {p1, p3}, Laax;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p2, Lqe;->d:Ljava/lang/reflect/Method;

    .line 542
    :cond_4
    iget-object p3, p2, Lqe;->d:Ljava/lang/reflect/Method;

    if-nez p3, :cond_d

    const-string p3, "create"

    .line 543
    invoke-static {p1, p3}, Laax;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p2, Lqe;->d:Ljava/lang/reflect/Method;

    goto/16 :goto_a

    .line 508
    :pswitch_3
    check-cast p1, [Lcom/alibaba/fastjson2/u$d;

    .line 509
    array-length p3, p1

    :goto_4
    if-ge v1, p3, :cond_d

    aget-object v0, p1, v1

    .line 510
    iget-wide v2, p2, Lqe;->m:J

    iget-wide v4, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lqe;->m:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 486
    :pswitch_4
    check-cast p1, [Ljava/lang/Enum;

    .line 487
    array-length p3, p1

    move v0, v1

    :goto_5
    if-ge v0, p3, :cond_d

    aget-object v6, p1, v0

    .line 488
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_6

    :sswitch_f
    const-string v7, "InitStringFieldAsEmpty"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_7

    :sswitch_10
    const-string v7, "SupportAutoType"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v1

    goto :goto_7

    :sswitch_11
    const-string v7, "SupportArrayToBean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_7

    :sswitch_12
    const-string v7, "TrimStringFieldValue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_7

    :cond_5
    :goto_6
    move v6, v2

    :goto_7
    if-eqz v6, :cond_8

    if-eq v6, v5, :cond_7

    if-eq v6, v4, :cond_6

    goto :goto_8

    .line 496
    :cond_6
    iget-wide v6, p2, Lqe;->m:J

    sget-object v8, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p2, Lqe;->m:J

    goto :goto_8

    .line 493
    :cond_7
    iget-wide v6, p2, Lqe;->m:J

    sget-object v8, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p2, Lqe;->m:J

    goto :goto_8

    .line 490
    :cond_8
    iget-wide v6, p2, Lqe;->m:J

    sget-object v8, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p2, Lqe;->m:J

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 479
    :pswitch_5
    check-cast p1, Ljava/lang/Class;

    .line 480
    const-class p3, Lwk;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 481
    iput-object p1, p2, Lqe;->w:Ljava/lang/Class;

    goto/16 :goto_a

    .line 471
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d

    .line 474
    iput-object p1, p2, Lqe;->y:Ljava/lang/String;

    goto/16 :goto_a

    .line 464
    :pswitch_7
    check-cast p1, [Ljava/lang/String;

    .line 465
    array-length p3, p1

    if-eqz p3, :cond_d

    .line 466
    iput-object p1, p2, Lqe;->r:[Ljava/lang/String;

    goto :goto_a

    .line 457
    :pswitch_8
    check-cast p1, [Ljava/lang/String;

    .line 458
    array-length p3, p1

    if-lez p3, :cond_d

    .line 459
    iput-object p1, p2, Lqe;->q:[Ljava/lang/String;

    goto :goto_a

    .line 452
    :pswitch_9
    check-cast p1, Ljava/lang/Enum;

    .line 453
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lqe;->p:Ljava/lang/String;

    goto :goto_a

    .line 445
    :pswitch_a
    check-cast p1, Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d

    .line 447
    iput-object p1, p2, Lqe;->b:Ljava/lang/String;

    goto :goto_a

    .line 432
    :pswitch_b
    move-object p3, p1

    check-cast p3, Ljava/lang/Class;

    .line 433
    const-class v0, Ljava/lang/Void;

    if-eq p3, v0, :cond_9

    .line 434
    iput-object p3, p2, Lqe;->h:Ljava/lang/Class;

    .line 438
    :cond_9
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d

    .line 440
    iput-object p1, p2, Lqe;->a:Ljava/lang/String;

    goto :goto_a

    .line 412
    :pswitch_d
    check-cast p1, [Ljava/lang/Class;

    .line 413
    array-length p3, p1

    if-eqz p3, :cond_d

    .line 414
    iput-object p1, p2, Lqe;->f:[Ljava/lang/Class;

    .line 415
    array-length p3, p1

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p2, Lqe;->g:[Ljava/lang/String;

    .line 416
    :goto_9
    array-length p3, p1

    if-ge v1, p3, :cond_c

    .line 417
    aget-object p3, p1, v1

    .line 419
    new-instance v0, Lqe;

    invoke-direct {v0}, Lqe;-><init>()V

    .line 420
    invoke-direct {p0, v0, p3}, Lwy$a;->b(Lqe;Ljava/lang/Class;)V

    .line 421
    iget-object v0, v0, Lqe;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 423
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_b
    iget-object p3, p2, Lqe;->g:[Ljava/lang/String;

    aput-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 427
    :cond_c
    iget-wide v0, p2, Lqe;->m:J

    sget-object p1, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p2, Lqe;->m:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_d
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64056b2d -> :sswitch_e
        -0x4000fff0 -> :sswitch_d
        -0x3ec0df78 -> :sswitch_c
        -0x3c209d1b -> :sswitch_b
        -0x361eca5f -> :sswitch_a
        -0x32d96b3b -> :sswitch_9
        -0x2852af1b -> :sswitch_8
        -0x24dcc1d9 -> :sswitch_7
        -0x19c7a83e -> :sswitch_6
        0xdc3ef9b -> :sswitch_5
        0x3ecb2845 -> :sswitch_4
        0x539034dc -> :sswitch_3
        0x65b7914b -> :sswitch_2
        0x6873bce1 -> :sswitch_1
        0x75748aba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_c
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
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x5f9ef016 -> :sswitch_12
        -0x35496aab -> :sswitch_11
        -0xbf831a8 -> :sswitch_10
        0x778dede2 -> :sswitch_f
    .end sparse-switch
.end method

.method private static synthetic b(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1027
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1029
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "value"

    .line 1030
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1031
    check-cast p0, [Ljava/lang/String;

    .line 1032
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1033
    iput-object p0, p1, Lqg;->g:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private b(Lqe;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lwy$a;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lzx;

    iget-object v0, v0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.apache.commons.lang3.tuple.Triple"

    .line 575
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v0, p0, Lwy$a;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lzx;

    const-class v1, Laaw$c;

    invoke-virtual {v0, p2, v1}, Lzx;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    .line 581
    iput-boolean v1, p1, Lqe;->t:Z

    .line 582
    invoke-static {v0}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lwy$a;->b(Lqe;[Ljava/lang/annotation/Annotation;)V

    .line 585
    :cond_1
    invoke-static {p2}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lwy$a;->b(Lqe;[Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method private synthetic b(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lwy$a;->a:Lwy;

    invoke-static {v0, p1, p2, p3}, Lwy;->a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method private synthetic b(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lwy$a;->a:Lwy;

    invoke-static {v0, p1, p2, p3}, Lwy;->a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private b(Lqe;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 324
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 325
    new-instance v1, L-$$Lambda$wy$a$LYNPM7rNtOWa7x8cNWfF18nXB3Q;

    invoke-direct {v1, p2, p1}, L-$$Lambda$wy$a$LYNPM7rNtOWa7x8cNWfF18nXB3Q;-><init>(Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private b(Lqe;[Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 589
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 590
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 591
    new-instance v4, L-$$Lambda$wy$a$qQ_wdoXqn8xWXLreh2kVJDqNRLY;

    invoke-direct {v4, v2, p1}, L-$$Lambda$wy$a$qQ_wdoXqn8xWXLreh2kVJDqNRLY;-><init>(Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v3, v4}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lqg;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 987
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 992
    new-instance v1, L-$$Lambda$wy$a$IwLqO3C72buWCyrfPYRf1Cn7XeY;

    invoke-direct {v1, p2, p1}, L-$$Lambda$wy$a$IwLqO3C72buWCyrfPYRf1Cn7XeY;-><init>(Ljava/lang/annotation/Annotation;Lqg;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 367
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 369
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "property"

    .line 370
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 371
    check-cast p0, Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 373
    iput-object p0, p1, Lqe;->a:Ljava/lang/String;

    .line 374
    iget-wide v0, p1, Lqe;->m:J

    sget-object p0, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p1, Lqe;->m:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 993
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 995
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, -0x1

    .line 996
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x54d84a9c

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x176ed461

    if-eq v2, v3, :cond_1

    const v3, 0x6ac9171

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p2, v1

    goto :goto_0

    :cond_1
    const-string v1, "required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p2, v4

    goto :goto_0

    :cond_2
    const-string v1, "access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p2, v5

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_4

    goto :goto_1

    .line 1010
    :cond_4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1012
    iput-boolean v5, p1, Lqg;->q:Z

    goto :goto_1

    .line 1005
    :cond_5
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p2, "READ_ONLY"

    .line 1006
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p1, Lqg;->f:Z

    goto :goto_1

    .line 998
    :cond_6
    check-cast p0, Ljava/lang/String;

    .line 999
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1000
    iput-object p0, p1, Lqg;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    return-void
.end method

.method private c(Lqe;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 347
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 348
    new-instance v1, L-$$Lambda$wy$a$eHmFAKe6pTzn0PLpNLbSGe8sTwk;

    invoke-direct {v1, p0, p2, p1}, L-$$Lambda$wy$a$eHmFAKe6pTzn0PLpNLbSGe8sTwk;-><init>(Lwy$a;Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private c(Lqg;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 1025
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1026
    new-instance v1, L-$$Lambda$wy$a$vCa9E0utM3CZmyiOTuTUkrKaKeE;

    invoke-direct {v1, p2, p1}, L-$$Lambda$wy$a$vCa9E0utM3CZmyiOTuTUkrKaKeE;-><init>(Ljava/lang/annotation/Annotation;Lqg;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 349
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 351
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "using"

    .line 352
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 353
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lwy$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    iput-object p1, p2, Lqe;->w:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic d(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 939
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 941
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, -0x1

    .line 942
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6a69c84

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v1, 0x1d513165

    if-eq v2, v1, :cond_1

    const v1, 0x793d5993

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "valueUsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p3, v4

    goto :goto_0

    :cond_1
    const-string v1, "keyUsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p3, v5

    goto :goto_0

    :cond_2
    const-string v2, "using"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p3, v1

    :cond_3
    :goto_0
    if-eqz p3, :cond_6

    if-eq p3, v5, :cond_5

    if-eq p3, v4, :cond_4

    goto :goto_1

    .line 958
    :cond_4
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lwy$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 960
    iput-object p1, p2, Lqg;->i:Ljava/lang/Class;

    goto :goto_1

    .line 951
    :cond_5
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lwy$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 953
    iput-object p1, p2, Lqg;->i:Ljava/lang/Class;

    goto :goto_1

    .line 944
    :cond_6
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lwy$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 946
    iput-object p1, p2, Lqg;->k:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    return-void
.end method

.method private d(Lqe;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 365
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 366
    new-instance v1, L-$$Lambda$wy$a$Xm0J6CQXHORmSsnzIreCep3tUYU;

    invoke-direct {v1, p2, p1}, L-$$Lambda$wy$a$Xm0J6CQXHORmSsnzIreCep3tUYU;-><init>(Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private d(Lqg;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 1043
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1044
    new-instance v1, L-$$Lambda$wy$a$K27sMyYx4Ok8lLQZa15VqugOP68;

    invoke-direct {v1, p2, p1}, L-$$Lambda$wy$a$K27sMyYx4Ok8lLQZa15VqugOP68;-><init>(Ljava/lang/annotation/Annotation;Lqg;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 326
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 328
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "value"

    .line 329
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 330
    check-cast p0, [Ljava/lang/Object;

    .line 331
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 332
    array-length p2, p0

    new-array p2, p2, [Ljava/lang/Class;

    iput-object p2, p1, Lqe;->f:[Ljava/lang/Class;

    .line 333
    array-length p2, p0

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p1, Lqe;->g:[Ljava/lang/String;

    .line 334
    :goto_0
    array-length p2, p0

    if-ge v1, p2, :cond_0

    .line 335
    aget-object p2, p0, v1

    check-cast p2, Ljava/lang/annotation/Annotation;

    .line 336
    invoke-static {p1, v1, p2}, Laax;->a(Lqe;ILjava/lang/annotation/Annotation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic lambda$4OY_YsRe8aIx4yqqEkkVRej4uIE(Lwy$a;Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->d(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$IwLqO3C72buWCyrfPYRf1Cn7XeY(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy$a;->c(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$K27sMyYx4Ok8lLQZa15VqugOP68(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy$a;->a(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$LYNPM7rNtOWa7x8cNWfF18nXB3Q(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy$a;->e(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$L_IP-WnMZLmdGup9Gih56Gh3haM(Lwy$a;Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->b(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$OwY074Oe5_R8q0VJrzZPsdtvwwU(Lwy$a;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->b(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$SVdG_4y_SiBxzrzakPW4RC-ZM_Y(Lwy$a;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->b(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method public static synthetic lambda$Xm0J6CQXHORmSsnzIreCep3tUYU(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy$a;->c(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$_mopqE6_iPD_oqr2KvBY_3WfYDY(Lwy$a;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method public static synthetic lambda$dWX-wdlVHCLpUmW-uDiwOlPVABs(Lwy$a;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$eHmFAKe6pTzn0PLpNLbSGe8sTwk(Lwy$a;Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwy$a;->d(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$e_CJExIHsci4WlT_R2QqP_KDQrU(Lwy$a;Ljava/lang/String;Lqg;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lwy$a;->a(Ljava/lang/String;Lqg;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$qQ_wdoXqn8xWXLreh2kVJDqNRLY(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy$a;->a(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$vCa9E0utM3CZmyiOTuTUkrKaKeE(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy$a;->b(Ljava/lang/annotation/Annotation;Lqg;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Lqe;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lwy$a;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lzx;

    iget-object v0, v0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.apache.commons.lang3.tuple.Triple"

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lwy$a;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lzx;

    const-class v1, Laaw$c;

    invoke-virtual {v0, p2, v1}, Lzx;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v0, v1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 215
    iput-boolean v1, p1, Lqe;->t:Z

    .line 216
    invoke-static {v0}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lwy$a;->a(Lqe;[Ljava/lang/annotation/Annotation;)V

    .line 218
    new-instance v2, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;

    invoke-direct {v2, p0, p1, p2}, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;-><init>(Lwy$a;Lqe;Ljava/lang/Class;)V

    invoke-static {v0, v2}, Laax;->c(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 222
    new-instance v2, L-$$Lambda$wy$a$SVdG_4y_SiBxzrzakPW4RC-ZM_Y;

    invoke-direct {v2, p0, p1, p2}, L-$$Lambda$wy$a$SVdG_4y_SiBxzrzakPW4RC-ZM_Y;-><init>(Lwy$a;Lqe;Ljava/lang/Class;)V

    invoke-static {v0, v2}, Laax;->d(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :cond_1
    const/4 v0, 0x0

    .line 228
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 229
    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_6

    const-class v4, Ljava/lang/Enum;

    if-ne v2, v4, :cond_2

    goto :goto_3

    .line 233
    :cond_2
    new-instance v4, Lqe;

    invoke-direct {v4}, Lqe;-><init>()V

    .line 234
    invoke-virtual {p0, v4, v2}, Lwy$a;->a(Lqe;Ljava/lang/Class;)V

    .line 235
    iget-object v5, v4, Lqe;->f:[Ljava/lang/Class;

    if-eqz v5, :cond_5

    .line 237
    iget-object v4, v4, Lqe;->f:[Ljava/lang/Class;

    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    if-ne v7, p2, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v0, v2

    .line 228
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 250
    invoke-virtual {p0, p1, v0}, Lwy$a;->a(Lqe;Ljava/lang/Class;)V

    .line 253
    :cond_7
    invoke-static {p2}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 254
    invoke-direct {p0, p1, v0}, Lwy$a;->a(Lqe;[Ljava/lang/annotation/Annotation;)V

    .line 256
    array-length v2, v0

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_a

    aget-object v5, v0, v4

    .line 257
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v6

    .line 258
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    .line 259
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 260
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v9, "com.alibaba.fastjson.annotation.JSONType"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v3

    goto/16 :goto_6

    :sswitch_1
    const-string v9, "kotlin.Metadata"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xd

    goto/16 :goto_6

    :sswitch_2
    const-string v9, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonInclude"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xa

    goto/16 :goto_6

    :sswitch_3
    const-string v9, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonSubTypes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xc

    goto/16 :goto_6

    :sswitch_4
    const-string v9, "com.fasterxml.jackson.annotation.JsonTypeName"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x5

    goto/16 :goto_6

    :sswitch_5
    const-string v9, "com.fasterxml.jackson.annotation.JsonTypeInfo"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v1

    goto :goto_6

    :sswitch_6
    const-string v9, "com.alibaba.fastjson2.adapter.jackson.databind.annotation.JsonDeserialize"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x4

    goto :goto_6

    :sswitch_7
    const-string v9, "com.fasterxml.jackson.annotation.JsonSubTypes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xb

    goto :goto_6

    :sswitch_8
    const-string v9, "com.fasterxml.jackson.annotation.JsonFormat"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x7

    goto :goto_6

    :sswitch_9
    const-string v9, "com.fasterxml.jackson.databind.annotation.JsonDeserialize"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x3

    goto :goto_6

    :sswitch_a
    const-string v9, "com.fasterxml.jackson.annotation.JsonInclude"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x9

    goto :goto_6

    :sswitch_b
    const-string v9, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonTypeName"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x6

    goto :goto_6

    :sswitch_c
    const-string v9, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonTypeInfo"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    goto :goto_6

    :sswitch_d
    const-string v9, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonFormat"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x8

    goto :goto_6

    :cond_8
    :goto_5
    move v7, v8

    :goto_6
    packed-switch v7, :pswitch_data_0

    goto :goto_7

    .line 301
    :pswitch_0
    iput-boolean v1, p1, Lqe;->u:Z

    goto :goto_7

    :pswitch_1
    if-eqz v6, :cond_9

    .line 297
    invoke-direct {p0, p1, v5}, Lwy$a;->b(Lqe;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    :pswitch_2
    if-eqz v6, :cond_9

    .line 291
    invoke-static {p1, v5}, Laax;->b(Lqe;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    :pswitch_3
    if-eqz v6, :cond_9

    .line 285
    invoke-static {p1, v5}, Laax;->a(Lqe;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    :pswitch_4
    if-eqz v6, :cond_9

    .line 279
    invoke-static {p1, v5}, Laax;->c(Lqe;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    :pswitch_5
    if-eqz v6, :cond_9

    .line 273
    invoke-direct {p0, p1, v5}, Lwy$a;->c(Lqe;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    :pswitch_6
    if-eqz v6, :cond_9

    .line 267
    invoke-direct {p0, p1, v5}, Lwy$a;->d(Lqe;Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    .line 262
    :pswitch_7
    invoke-virtual {p0, p1, v5}, Lwy$a;->a(Lqe;Ljava/lang/annotation/Annotation;)V

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 308
    :cond_a
    new-instance v0, L-$$Lambda$wy$a$dWX-wdlVHCLpUmW-uDiwOlPVABs;

    invoke-direct {v0, p0, p1, p2}, L-$$Lambda$wy$a$dWX-wdlVHCLpUmW-uDiwOlPVABs;-><init>(Lwy$a;Lqe;Ljava/lang/Class;)V

    invoke-static {p2, v0}, Laax;->c(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 312
    new-instance v0, L-$$Lambda$wy$a$_mopqE6_iPD_oqr2KvBY_3WfYDY;

    invoke-direct {v0, p0, p1, p2}, L-$$Lambda$wy$a$_mopqE6_iPD_oqr2KvBY_3WfYDY;-><init>(Lwy$a;Lqe;Ljava/lang/Class;)V

    invoke-static {p2, v0}, Laax;->d(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 316
    iget-object v0, p1, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_b

    iget-wide v0, p1, Lqe;->m:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lqe;->u:Z

    if-eqz v0, :cond_b

    .line 319
    invoke-static {p2, p1}, Labj;->a(Ljava/lang/Class;Lqe;)V

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e092dfb -> :sswitch_d
        -0x650c366a -> :sswitch_c
        -0x650a208d -> :sswitch_b
        -0x478f3077 -> :sswitch_a
        -0x3b756049 -> :sswitch_9
        -0x30a2e30a -> :sswitch_8
        -0x2c448ca8 -> :sswitch_7
        -0x22a1317a -> :sswitch_6
        0x27f31c47 -> :sswitch_5
        0x27f53224 -> :sswitch_4
        0x46bc20a7 -> :sswitch_3
        0x590dbc5a -> :sswitch_2
        0x66e0499c -> :sswitch_1
        0x7dec7c16 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lqe;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 404
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 405
    new-instance v1, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;

    invoke-direct {v1, p0, p2, p1}, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;-><init>(Lwy$a;Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v0, v1}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 617
    iget-object v1, p0, Lwy$a;->a:Lwy;

    iget-object v1, v1, Lwy;->a:Lzx;

    iget-object v1, v1, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    if-eq v1, p2, :cond_0

    .line 621
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 625
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object p2

    aget-object p2, p2, p4

    .line 626
    invoke-static {p2}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lwy$a;->a(Lqg;[Ljava/lang/annotation/Annotation;)V

    .line 631
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 635
    :try_start_1
    invoke-static {p5}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 640
    :cond_1
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 642
    array-length p5, p2

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p3

    if-ne p5, p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, -0x1

    :goto_1
    if-ltz p4, :cond_3

    .line 647
    array-length p3, p2

    if-ge p4, p3, :cond_3

    .line 648
    aget-object v0, p2, p4

    :catch_1
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 652
    array-length p2, v0

    if-lez p2, :cond_4

    .line 653
    invoke-direct {p0, p1, v0}, Lwy$a;->a(Lqg;[Ljava/lang/annotation/Annotation;)V

    :cond_4
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 686
    iget-object v0, p0, Lwy$a;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lzx;

    iget-object v0, v0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    .line 690
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p2, :cond_0

    .line 695
    invoke-virtual {p0, p1, v0, p2}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 700
    :cond_0
    invoke-static {p3}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 701
    invoke-direct {p0, p1, p2}, Lwy$a;->a(Lqg;[Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    .line 706
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 709
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 710
    invoke-static {v3, v0}, Laax;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 712
    invoke-virtual {v7, v8, v3, v4}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 715
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 716
    array-length v5, v4

    move v6, v10

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v11, v4, v6

    .line 717
    const-class v12, Ljava/io/Serializable;

    if-ne v11, v12, :cond_1

    goto :goto_1

    .line 721
    :cond_1
    invoke-static {v11, v0}, Laax;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 723
    invoke-virtual {v7, v8, v3, v11}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 727
    :cond_3
    iget-object v3, v7, Lwy$a;->a:Lwy;

    iget-object v3, v3, Lwy;->a:Lzx;

    iget-object v3, v3, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_4

    if-eq v3, v9, :cond_4

    .line 731
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_4

    .line 736
    invoke-virtual {v7, v8, v3, v4}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 743
    :cond_4
    invoke-static/range {p3 .. p3}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 744
    array-length v3, v0

    move-object v5, v2

    move v4, v10

    :goto_3
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v4, v3, :cond_9

    aget-object v6, v0, v4

    .line 745
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    .line 746
    const-class v14, Lqc;

    invoke-static {v6, v14}, Laax;->a(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lqc;

    if-eqz v14, :cond_5

    .line 748
    invoke-direct {v7, v8, v14}, Lwy$a;->a(Lqg;Lqc;)V

    .line 749
    invoke-interface {v14}, Lqc;->b()Ljava/lang/String;

    move-result-object v5

    if-ne v14, v6, :cond_5

    goto/16 :goto_6

    .line 755
    :cond_5
    const-class v14, Lqa;

    if-ne v13, v14, :cond_6

    .line 756
    move-object v14, v6

    check-cast v14, Lqa;

    .line 757
    invoke-interface {v14}, Lqa;->a()Lqa$a;

    move-result-object v14

    sget-object v15, Lqa$a;->LAMBDA:Lqa$a;

    if-ne v14, v15, :cond_6

    .line 758
    iget-wide v14, v8, Lqg;->e:J

    const-wide/high16 v16, 0x40000000000000L

    or-long v14, v14, v16

    iput-wide v14, v8, Lqg;->e:J

    .line 762
    :cond_6
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v14

    .line 763
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    .line 764
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAlias"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xc

    goto/16 :goto_5

    :sswitch_1
    const-string v11, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x8

    goto/16 :goto_5

    :sswitch_2
    const-string v11, "com.fasterxml.jackson.annotation.JsonAnySetter"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    goto/16 :goto_5

    :sswitch_3
    const-string v11, "com.fasterxml.jackson.annotation.JsonProperty"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xa

    goto/16 :goto_5

    :sswitch_4
    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAnySetter"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x7

    goto/16 :goto_5

    :sswitch_5
    const-string v11, "com.fasterxml.jackson.annotation.JsonAlias"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xb

    goto :goto_5

    :sswitch_6
    const-string v12, "com.alibaba.fastjson2.adapter.jackson.databind.annotation.JsonDeserialize"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_5

    :sswitch_7
    const-string v11, "com.fasterxml.jackson.annotation.JsonIgnore"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v10

    goto :goto_5

    :sswitch_8
    const-string v11, "com.fasterxml.jackson.annotation.JsonFormat"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x4

    goto :goto_5

    :sswitch_9
    const-string v11, "com.fasterxml.jackson.databind.annotation.JsonDeserialize"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x3

    goto :goto_5

    :sswitch_a
    const-string v11, "com.google.gson.annotations.SerializedName"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xd

    goto :goto_5

    :sswitch_b
    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonProperty"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x9

    goto :goto_5

    :sswitch_c
    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonIgnore"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v12

    goto :goto_5

    :sswitch_d
    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonFormat"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x5

    goto :goto_5

    :cond_7
    :goto_4
    move v11, v15

    :goto_5
    packed-switch v11, :pswitch_data_0

    goto :goto_6

    .line 805
    :pswitch_0
    invoke-static {v8, v6}, Laax;->c(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    :pswitch_1
    if-eqz v14, :cond_8

    .line 801
    invoke-direct {v7, v8, v6}, Lwy$a;->c(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    :pswitch_2
    if-eqz v14, :cond_8

    .line 795
    invoke-direct {v7, v8, v6}, Lwy$a;->b(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    .line 790
    :pswitch_3
    invoke-direct {v7, v8, v6}, Lwy$a;->d(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    :pswitch_4
    if-eqz v14, :cond_8

    .line 786
    iget-wide v11, v8, Lqg;->e:J

    const-wide/high16 v13, 0x2000000000000L

    or-long/2addr v11, v13

    iput-wide v11, v8, Lqg;->e:J

    goto :goto_6

    :pswitch_5
    if-eqz v14, :cond_8

    .line 780
    invoke-static {v8, v6}, Laax;->b(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    :pswitch_6
    if-eqz v14, :cond_8

    .line 774
    invoke-direct {v7, v8, v6}, Lwy$a;->a(Lqg;Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    :pswitch_7
    if-eqz v14, :cond_8

    .line 768
    invoke-static {v8, v6}, Laax;->a(Lqg;Ljava/lang/annotation/Annotation;)V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_9
    const-string v0, "set"

    .line 813
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 814
    invoke-static {v1, v2}, Laax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 816
    :cond_a
    invoke-static {v1, v2}, Laax;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v3, v0

    .line 821
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v12, :cond_c

    .line 822
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_c

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_c

    .line 823
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v1, :cond_c

    if-gt v0, v4, :cond_c

    if-eqz v5, :cond_b

    .line 824
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 825
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 826
    aget-char v1, v0, v10

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    aput-char v1, v0, v10

    .line 827
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 829
    aget-char v2, v0, v12

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v12

    .line 830
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    move-object v13, v1

    move-object v14, v2

    goto :goto_8

    :cond_c
    move-object v13, v2

    move-object v14, v13

    .line 836
    :goto_8
    new-instance v15, L-$$Lambda$wy$a$e_CJExIHsci4WlT_R2QqP_KDQrU;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, L-$$Lambda$wy$a$e_CJExIHsci4WlT_R2QqP_KDQrU;-><init>(Lwy$a;Ljava/lang/String;Lqg;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v15}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    if-eqz v13, :cond_d

    .line 858
    iget-object v0, v8, Lqg;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, v8, Lqg;->g:[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 859
    new-array v0, v11, [Ljava/lang/String;

    aput-object v13, v0, v10

    aput-object v14, v0, v12

    iput-object v0, v8, Lqg;->g:[Ljava/lang/String;

    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e092dfb -> :sswitch_d
        -0x795d2820 -> :sswitch_c
        -0x77e9939d -> :sswitch_b
        -0x5de7f44c -> :sswitch_a
        -0x3b756049 -> :sswitch_9
        -0x30a2e30a -> :sswitch_8
        -0x2bf6dd2f -> :sswitch_7
        -0x22a1317a -> :sswitch_6
        -0xa1baa8f -> :sswitch_5
        0xab298bd -> :sswitch_4
        0x1515bf14 -> :sswitch_3
        0x1d9d9c2c -> :sswitch_2
        0x3ed64f9e -> :sswitch_1
        0x7fc84282 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;ILjava/lang/reflect/Parameter;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 666
    iget-object v0, p0, Lwy$a;->a:Lwy;

    iget-object v0, v0, Lwy;->a:Lzx;

    iget-object v0, v0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    .line 670
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p2, :cond_0

    .line 674
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object p2

    aget-object p2, p2, p4

    .line 675
    invoke-static {p2}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lwy$a;->a(Lqg;[Ljava/lang/annotation/Annotation;)V

    .line 680
    :cond_0
    invoke-static {p5}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lwy$a;->a(Lqg;[Ljava/lang/annotation/Annotation;)V

    return-void
.end method
