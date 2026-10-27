.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;
.super Ljava/lang/Object;
.source "NotBetween.java"

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
        "Landroid/util/Pair<",
        "TT;TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private final between:Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/Between<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;->between:Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;

    return-void
.end method


# virtual methods
.method public isMatch(Landroid/util/Pair;Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT;TT;>;TT;)Z"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween<TT;>;"
    .local p1, "targetValue":Landroid/util/Pair;, "Landroid/util/Pair<TT;TT;>;"
    .local p2, "currentValue":Ljava/lang/Comparable;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;->between:Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;->isMatch(Landroid/util/Pair;Ljava/lang/Comparable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 5
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween<TT;>;"
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;->isMatch(Landroid/util/Pair;Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method
