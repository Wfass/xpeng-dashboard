.class Lcom/xiaopeng/xuiservice/smart/action/Any;
.super Lcom/xiaopeng/xuiservice/smart/action/Parallel;
.source "Any.java"


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

    .line 8
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/Parallel;-><init>(Ljava/util/List;)V

    .line 9
    return-void
.end method

.method public varargs constructor <init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/Parallel;-><init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onChildrenActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Any;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Any;->stop()V

    .line 25
    :cond_0
    return-void
.end method

.method protected onChildrenActionStart(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 18
    return-void
.end method
