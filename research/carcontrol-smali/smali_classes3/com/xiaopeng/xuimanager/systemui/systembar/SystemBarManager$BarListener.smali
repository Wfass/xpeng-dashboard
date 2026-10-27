.class Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;
.super Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener$Stub;
.source "SystemBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$1;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;-><init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)V

    return-void
.end method


# virtual methods
.method public onContent(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "onContent id:%s listener:%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->access$300(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->access$200(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarListener;

    .line 226
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarListener;->onSystemBarContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return v2
.end method
