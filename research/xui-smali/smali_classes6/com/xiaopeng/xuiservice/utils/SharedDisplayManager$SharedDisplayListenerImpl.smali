.class final Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;
.super Lcom/xiaopeng/view/SharedDisplayListener;
.source "SharedDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SharedDisplayListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;->this$0:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    invoke-direct {p0}, Lcom/xiaopeng/view/SharedDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$1;

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;-><init>(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;)V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const-string v0, "SharedDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityChanged screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&property="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;->this$0:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->access$100(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    .line 140
    .local v1, "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;->onActivityChanged(ILjava/lang/String;)V

    .line 141
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public onChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sharedId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "SharedDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sharedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;->this$0:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->access$100(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    .line 124
    .local v1, "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;->onChanged(Ljava/lang/String;I)V

    .line 125
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public onPositionChanged(Ljava/lang/String;III)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "fromSharedId"    # I
    .param p4, "toSharedId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const-string v0, "SharedDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositionChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;->this$0:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->access$100(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    .line 132
    .local v1, "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;->onPositionChanged(Ljava/lang/String;III)V

    .line 133
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method
