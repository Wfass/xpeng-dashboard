.class Lcom/xiaopeng/xuiservice/message/PushMessage$1;
.super Landroid/os/Handler;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/message/PushMessage;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/message/PushMessage;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/message/PushMessage;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/message/PushMessage;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage$1;->this$0:Lcom/xiaopeng/xuiservice/message/PushMessage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "messageType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "data":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;

    .line 74
    .local v2, "pair":Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;
    iget-object v0, v2, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;->messageType:Ljava/lang/String;

    .line 75
    iget-object v1, v2, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;->data:Ljava/lang/String;

    .line 75
    .end local v2    # "pair":Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;
    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "bundle":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "string_msg"

    .line 64
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "content"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, "contentJsonObject":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 66
    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 70
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "contentJsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "xuimessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse message error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v4, "xuimessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message bundle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 79
    .end local v2    # "bundle":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/message/PushMessage$1;->this$0:Lcom/xiaopeng/xuiservice/message/PushMessage;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/message/PushMessage;->access$100(Lcom/xiaopeng/xuiservice/message/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
