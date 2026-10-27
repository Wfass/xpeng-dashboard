.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;
.super Ljava/lang/Object;
.source "LessThan.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan<TT;>;"
    .local p1, "targetValue":Ljava/lang/Comparable;, "TT;"
    .local p2, "currentValue":Ljava/lang/Comparable;, "TT;"
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 8
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;->isMatch(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method
