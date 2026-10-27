.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionCompareBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "TT;TT;TT;>;"
    }
.end annotation


# instance fields
.field private final compareOpName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "compareOpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<TT;>;"
    .local p2, "targetValue":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;->compareOpName:Ljava/lang/String;

    .line 14
    if-eqz p3, :cond_0

    .line 17
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final convert(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;->convert(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getCompareOpName()Ljava/lang/String;
    .locals 1

    .line 20
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;->compareOpName:Ljava/lang/String;

    return-object v0
.end method

.method public final operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "TT;TT;>;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;->compareOpName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Operators;->getCompareOp(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v0

    return-object v0
.end method
