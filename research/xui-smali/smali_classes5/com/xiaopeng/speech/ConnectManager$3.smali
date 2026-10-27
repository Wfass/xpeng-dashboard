.class Lcom/xiaopeng/speech/ConnectManager$3;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/ConnectManager;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/ConnectManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/ConnectManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager$3;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$3;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/ConnectManager;->access$200(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 142
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    invoke-interface {v2}, Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;->onDisconnect()V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->onServiceDisconnect()V

    .line 146
    iget-object v1, p0, Lcom/xiaopeng/speech/ConnectManager$3;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/ConnectManager;->access$300(Lcom/xiaopeng/speech/ConnectManager;)V

    .line 147
    return-void
.end method
