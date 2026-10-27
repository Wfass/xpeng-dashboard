.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;
.super Ljava/lang/Object;
.source "NotEqual.java"

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
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final equal:Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;->equal:Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual<TT;>;"
    .local p1, "targetValue":Ljava/lang/Object;, "TT;"
    .local p2, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;->equal:Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;->isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
