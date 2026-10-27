.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;
.super Ljava/lang/Object;
.source "NotIn.java"

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


# instance fields
.field private final in:Lcom/xiaopeng/xuiservice/smart/condition/operator/In;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/In<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/In;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/In;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;->in:Lcom/xiaopeng/xuiservice/smart/condition/operator/In;

    return-void
.end method


# virtual methods
.method public bridge synthetic isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 3
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn<TT;>;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;->isMatch([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMatch([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;TT;)Z"
        }
    .end annotation

    .line 9
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn<TT;>;"
    .local p1, "targetValue":[Ljava/lang/Object;, "[TT;"
    .local p2, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;->in:Lcom/xiaopeng/xuiservice/smart/condition/operator/In;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/In;->isMatch([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
