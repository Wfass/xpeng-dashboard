.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionNotBetween.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "Landroid/util/Pair<",
        "TT;TT;>;TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween<TT;>;"
    .local p2, "targetValue":Landroid/util/Pair;, "Landroid/util/Pair<TT;TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
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

    .line 21
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween;->convert(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public final operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "Landroid/util/Pair<",
            "TT;TT;>;TT;>;"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotBetween<TT;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;-><init>()V

    return-object v0
.end method
