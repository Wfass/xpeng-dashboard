.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;
.super Ljava/lang/Object;
.source "Between.java"

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
.field private final ge:Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final le:Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/Between<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;->ge:Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;

    .line 14
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;->le:Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;

    return-void
.end method


# virtual methods
.method public isMatch(Landroid/util/Pair;Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT;TT;>;TT;)Z"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/Between<TT;>;"
    .local p1, "targetValue":Landroid/util/Pair;, "Landroid/util/Pair<TT;TT;>;"
    .local p2, "currentValue":Ljava/lang/Comparable;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;->ge:Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;->isMatch(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;->le:Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    .line 24
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;->isMatch(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public bridge synthetic isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 10
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/Between<TT;>;"
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;->isMatch(Landroid/util/Pair;Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method
