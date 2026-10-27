.class public Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;
.super Ljava/lang/Object;
.source "Equal.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 13
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;, "Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal<TT;>;"
    .local p1, "targetValue":Ljava/lang/Object;, "TT;"
    .local p2, "currentValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->superEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
