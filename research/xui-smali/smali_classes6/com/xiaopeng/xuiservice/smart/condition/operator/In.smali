.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/In;
.super Ljava/lang/Object;
.source "In.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
        "[TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/In;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/In<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$isMatch$0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "currentValue"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Object;

    .line 16
    invoke-static {p1, p0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->superEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 12
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/In;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/In<TT;>;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/In;->isMatch([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMatch([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;TT;)Z"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/In;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/In<TT;>;"
    .local p1, "targetValue":[Ljava/lang/Object;, "[TT;"
    .local p2, "currentValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/condition/operator/-$$Lambda$In$MQBz0hAUd_5oL7x2OjhkbhMUQeo;

    invoke-direct {v1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/-$$Lambda$In$MQBz0hAUd_5oL7x2OjhkbhMUQeo;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 15
    return v0
.end method
