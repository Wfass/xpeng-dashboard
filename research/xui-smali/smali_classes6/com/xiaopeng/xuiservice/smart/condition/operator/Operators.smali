.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field public static final OP_BETWEEN:Ljava/lang/String; = "between"

.field public static final OP_EQ:Ljava/lang/String; = "eq"

.field public static final OP_GE:Ljava/lang/String; = "ge"

.field public static final OP_GT:Ljava/lang/String; = "gt"

.field public static final OP_IN:Ljava/lang/String; = "in"

.field public static final OP_LE:Ljava/lang/String; = "le"

.field public static final OP_LT:Ljava/lang/String; = "lt"

.field public static final OP_NEQ:Ljava/lang/String; = "neq"

.field public static final OP_NIN:Ljava/lang/String; = "nin"

.field public static final OP_NOTBETWEEN:Ljava/lang/String; = "notbetween"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompareOp(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 2
    .param p0, "compareOpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "TT;TT;>;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xcac

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcde

    if-eq v0, v1, :cond_4

    const/16 v1, 0xced

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd79

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd88

    if-eq v0, v1, :cond_1

    const v1, 0x1a99a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "neq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const-string v0, "le"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "eq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    return-object v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;-><init>()V

    return-object v0

    .line 28
    :pswitch_1
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;-><init>()V

    return-object v0

    .line 26
    :pswitch_2
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;-><init>()V

    return-object v0

    .line 24
    :pswitch_3
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatThan;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatThan;-><init>()V

    return-object v0

    .line 22
    :pswitch_4
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;-><init>()V

    return-object v0

    .line 20
    :pswitch_5
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
