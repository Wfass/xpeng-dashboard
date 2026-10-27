.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionGT.java"


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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Comparable;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT<TT;>;"
    .local p2, "targetValue":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected final convert(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT;->convert(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
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

    .line 17
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionGT<TT;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatThan;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatThan;-><init>()V

    return-object v0
.end method
