.class Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;
.super Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener$Stub;
.source "UIServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIEventListenerServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;-><init>(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "onEvent module:%s method:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIEventListener;

    .line 110
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIEventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
