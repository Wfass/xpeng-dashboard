.class Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;
.super Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Stub;
.source "SystemStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;-><init>(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)V

    return-void
.end method


# virtual methods
.method public getAppState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "getAppState key:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->access$300(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;

    .line 187
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;->getAppState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public onSystemStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "onSystemStateChange key:%s String:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;

    .line 177
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;->onSystemStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 199
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    return p1
.end method
