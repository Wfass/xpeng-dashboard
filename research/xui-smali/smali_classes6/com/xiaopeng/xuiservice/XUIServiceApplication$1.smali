.class Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;
.super Ljava/lang/Object;
.source "XUIServiceApplication.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/XUIServiceApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 3
    .param p1, "iSpeechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 101
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechClient onConnect, iSpeechEngine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    new-instance v1, Lcom/xiaopeng/speech/protocol/SpeechModel;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/SpeechModel;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$002(Lcom/xiaopeng/xuiservice/XUIServiceApplication;Lcom/xiaopeng/speech/protocol/SpeechModel;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechClient onConnect, mNodeListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/SpeechModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechClient onConnect, mSpeechVuiElementStateQueryCaller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/query/xuiservice/XuiServiceSpeechVuiQuery;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/SpeechModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 113
    :cond_2
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechClient onDisconnect, mNodeListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/SpeechModel;->unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechClient onDisconnect, mSpeechVuiElementStateQueryCaller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/query/xuiservice/XuiServiceSpeechVuiQuery;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechModel;->unsubscribe(Ljava/lang/Class;)V

    .line 129
    :cond_1
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechClient onDisconnect,mNodeListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$100(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/INodeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSpeechVuiElementStateQueryCaller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 130
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$200(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSpeechModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$1;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 131
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$000(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)Lcom/xiaopeng/speech/protocol/SpeechModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method
