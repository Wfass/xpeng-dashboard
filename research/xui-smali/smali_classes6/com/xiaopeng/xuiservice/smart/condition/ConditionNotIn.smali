.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionNotIn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "[TT;TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn<TT;>;"
    .local p2, "targetValue":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method public final operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "[TT;TT;>;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn;, "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotIn<TT;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;-><init>()V

    return-object v0
.end method
