.class public Lcom/xiaopeng/xuiservice/smart/condition/Conditions;
.super Ljava/lang/Object;
.source "Conditions.java"


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final LOG_ENABLE:Z = true

.field public static final TAG:Ljava/lang/String; = "xpCondition"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-string v0, "Egg/Action/Condition Handler"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->createWorkHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AND(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/condition/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/condition/Condition;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/smart/condition/Group;"
        }
    .end annotation

    .line 46
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/condition/Condition;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/AND;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/AND;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs AND([Lcom/xiaopeng/xuiservice/smart/condition/Condition;)Lcom/xiaopeng/xuiservice/smart/condition/Group;
    .locals 2
    .param p0, "c"    # [Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 42
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/AND;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/AND;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static DEBUG(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "xpCondition"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public static ERROR(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "xpCondition"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 31
    const-string/jumbo v0, "xpCondition"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    return-void
.end method

.method public static INFO(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "xpCondition"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public static OR(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/condition/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/condition/Condition;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/smart/condition/Group;"
        }
    .end annotation

    .line 54
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/condition/Condition;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/OR;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/OR;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs OR([Lcom/xiaopeng/xuiservice/smart/condition/Condition;)Lcom/xiaopeng/xuiservice/smart/condition/Group;
    .locals 2
    .param p0, "c"    # [Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/OR;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/OR;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static executeInWorkHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 163
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public static superEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 66
    return v0

    .line 69
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 71
    return v1

    .line 73
    :cond_1
    if-nez p1, :cond_2

    .line 74
    return v1

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    return v1

    .line 83
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 85
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 87
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 89
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 91
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 93
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    move-object v0, p0

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 95
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    move-object v0, p0

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    .line 97
    :cond_8
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 99
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 101
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    move-object v0, p0

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    .line 105
    :cond_b
    move-object v3, p0

    check-cast v3, [Ljava/lang/Object;

    .line 106
    .local v3, "aa":[Ljava/lang/Object;
    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    .line 108
    .local v4, "bb":[Ljava/lang/Object;
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_c

    .line 109
    return v1

    .line 112
    :cond_c
    move v5, v1

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_e

    .line 113
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->superEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 114
    return v1

    .line 112
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    .end local v5    # "i":I
    :cond_e
    return v0

    .line 123
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "aa":[Ljava/lang/Object;
    .end local v4    # "bb":[Ljava/lang/Object;
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 135
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 137
    :cond_1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 145
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    move-object v1, p0

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :cond_6
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 148
    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_7
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 150
    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 153
    :cond_8
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 157
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
