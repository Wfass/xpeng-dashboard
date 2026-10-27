.class abstract Lcom/xiaopeng/xuiservice/smart/action/Parallel;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionList;
.source "Parallel.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;)V"
        }
    .end annotation

    .line 9
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;-><init>(Ljava/util/List;)V

    .line 10
    return-void
.end method

.method public varargs constructor <init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;-><init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Parallel;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$goENCmd3Q-DYhD3Td87PBIP_M2s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    return-void
.end method
