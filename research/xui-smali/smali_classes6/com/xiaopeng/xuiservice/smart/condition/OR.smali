.class public Lcom/xiaopeng/xuiservice/smart/condition/OR;
.super Lcom/xiaopeng/xuiservice/smart/condition/Group;
.source "OR.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "OR"


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/condition/Condition;",
            ">;)V"
        }
    .end annotation

    .line 10
    .local p1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/condition/Condition;>;"
    const-string v0, "OR"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/Group;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    return-void
.end method


# virtual methods
.method public isMatch()Z
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/OR;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
