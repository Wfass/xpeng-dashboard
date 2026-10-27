.class Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$1;
.super Landroid/os/Handler;
.source "FactoryClientConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$1;->this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$1;->this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    invoke-static {v0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->access$000(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$1;->this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    invoke-static {v0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->access$000(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$ReceiverListener;->onReceiveData([B)V

    .line 49
    :cond_1
    :goto_0
    return-void
.end method
