.class Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;
.super Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;-><init>(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)V

    return-void
.end method


# virtual methods
.method public onDockEvent(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "dockVisibility"

    .line 254
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    const-string v0, "visibility"

    .line 255
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 256
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 257
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 258
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onDockVisibilityChanged(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "dockItemRejected"

    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "dockItem"

    .line 262
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;

    .line 263
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 264
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 265
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onItemRejected(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    goto :goto_1

    :cond_1
    const-string v0, "dockDataChanged"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "dockItemList"

    .line 269
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 270
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 271
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 272
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onDockDataSync(ILjava/util/List;)V

    goto :goto_2

    :cond_2
    const-string v0, "shortcutAndComponentsChanged"

    .line 275
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "shortcutAndComponents"

    .line 276
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 277
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 278
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 279
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onShortcutAndComponentsChanged(ILjava/util/List;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onDockItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 229
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onItemAdded(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDockItemRemoved(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 238
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onItemRemoved(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnterEdit(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 247
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;->onEnterEdit(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
