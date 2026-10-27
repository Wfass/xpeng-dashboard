.class Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;
.super Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener$Stub;
.source "SystemBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarColorListenerServer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;-><init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)V

    return-void
.end method


# virtual methods
.method public onBarColorChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->access$400(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;->this$0:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->access$400(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;->onBarColorChanged(IZ)V

    :cond_0
    return-void
.end method
