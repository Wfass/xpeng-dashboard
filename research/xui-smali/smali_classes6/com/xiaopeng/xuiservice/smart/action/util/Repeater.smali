.class public Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"


# instance fields
.field private final action:Lcom/xiaopeng/xuiservice/smart/action/Action;

.field private done:I

.field private final repeat:I


# direct methods
.method public constructor <init>(ILcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "repeat"    # I
    .param p2, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat:I

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->action:Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized repeat(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 23
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->done:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->done:I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REPEAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->action:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->done:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat:I

    if-gtz v1, :cond_0

    const-string v1, " INFINITE"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->done:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->action:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->stop()V

    goto :goto_2

    .line 27
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->action:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 22
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeater{repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/util/Repeater;->repeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
