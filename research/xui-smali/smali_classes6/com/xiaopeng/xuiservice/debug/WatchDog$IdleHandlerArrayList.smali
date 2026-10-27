.class Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;
.super Ljava/util/ArrayList;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleHandlerArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 581
    .local p0, "this":Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;, "Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog$1;

    .line 581
    .local p0, "this":Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;, "Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList<TT;>;"
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 584
    .local p0, "this":Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;, "Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList<TT;>;"
    const-string v0, "XuiWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleHandlerArrayList, add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$700()Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    instance-of v0, p1, Landroid/os/MessageQueue$IdleHandler;

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;

    move-object v1, p1

    check-cast v1, Landroid/os/MessageQueue$IdleHandler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;-><init>(Landroid/os/MessageQueue$IdleHandler;)V

    .line 587
    .local v0, "myIdleHandler":Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 589
    .end local v0    # "myIdleHandler":Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 594
    .local p0, "this":Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;, "Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList<TT;>;"
    const-string v0, "XuiWatchDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleHandlerArrayList, remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$700()Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/debug/WatchDog$IdleHandlerArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    instance-of v0, p1, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;

    if-eqz v0, :cond_0

    .line 596
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$MyIdleHandler;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 598
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
