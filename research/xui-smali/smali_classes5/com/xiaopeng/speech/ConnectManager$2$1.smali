.class Lcom/xiaopeng/speech/ConnectManager$2$1;
.super Lcom/xiaopeng/speech/IInitCallback$Stub;
.source "ConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/ConnectManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/ConnectManager$2;

.field final synthetic val$listenerList:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/ConnectManager$2;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/speech/ConnectManager$2;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager$2$1;->this$1:Lcom/xiaopeng/speech/ConnectManager$2;

    iput-object p2, p0, Lcom/xiaopeng/speech/ConnectManager$2$1;->val$listenerList:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaopeng/speech/IInitCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$2$1;->val$listenerList:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 113
    .local v3, "o":Ljava/lang/Object;
    const-string v4, "ConnectManager"

    const-string v5, "queryBinder onConnect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;

    iget-object v5, p0, Lcom/xiaopeng/speech/ConnectManager$2$1;->this$1:Lcom/xiaopeng/speech/ConnectManager$2;

    iget-object v5, v5, Lcom/xiaopeng/speech/ConnectManager$2;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v5}, Lcom/xiaopeng/speech/ConnectManager;->access$000(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/ISpeechEngine;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;->onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V

    .line 112
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
