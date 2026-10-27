.class Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;
.super Ljava/lang/Object;
.source "MituWatchInquirer.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MituHttpCallback"
.end annotation


# instance fields
.field private bRetry:Z

.field private callbackType:I

.field private secretBytes:[B

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;I)V
    .locals 0
    .param p2, "type"    # I

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->bRetry:Z

    .line 153
    iput p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;IZ)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "retry"    # Z

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->bRetry:Z

    .line 157
    iput p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    .line 158
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->bRetry:Z

    .line 159
    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;

    .line 147
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    return v0
.end method

.method private handleFailResponse(Ljava/io/IOException;)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 224
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    not-int v0, v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$172(I)I

    .line 225
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    shl-int v0, v1, v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$276(I)I

    .line 227
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->bRetry:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$900(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string v0, "-2147483648"

    .line 235
    .local v0, "error":Ljava/lang/String;
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    const-string v0, "-4"

    .line 249
    goto :goto_0

    .line 245
    :pswitch_1
    const-string v0, "-3"

    .line 246
    goto :goto_0

    .line 242
    :pswitch_2
    const-string v0, "-2"

    .line 243
    goto :goto_0

    .line 237
    :pswitch_3
    const-string v0, "-1"

    .line 239
    const-string v1, "-100"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    nop

    .line 254
    :goto_0
    const-string v1, "-2147483648"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    const-string v2, "get_result"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$1100(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_1
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFailResponse, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",unknown callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleResponseData(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    packed-switch v0, :pswitch_data_0

    .line 217
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponseData,unknown callback type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$800(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V

    .line 215
    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V

    .line 212
    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V

    .line 209
    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V

    .line 206
    nop

    .line 220
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 167
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure,call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->bRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    .line 170
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->handleFailResponse(Ljava/io/IOException;)V

    .line 171
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    not-int v0, v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$172(I)I

    .line 177
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    shl-int v0, v1, v0

    not-int v0, v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$272(I)I

    .line 179
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "body":Ljava/lang/String;
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse,message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",response code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",call="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$300(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->secretBytes:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$400([B[B)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "dataDecrypted":Ljava/lang/String;
    iget v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->callbackType:I

    if-eq v1, v3, :cond_0

    .line 186
    const-string v1, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse,data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    const-string v1, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse,data len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    const/16 v1, 0xc8

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 192
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->handleResponseData(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_1
    const-string v1, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse,error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v2    # "dataDecrypted":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 197
    :cond_2
    const-string v1, "MituWatchInquirer"

    const-string v2, "onResponse,body is json"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_2
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    .line 200
    return-void
.end method

.method public setSecretBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->secretBytes:[B

    .line 163
    return-void
.end method
