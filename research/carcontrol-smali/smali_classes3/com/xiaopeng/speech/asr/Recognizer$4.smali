.class Lcom/xiaopeng/speech/asr/Recognizer$4;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/asr/Recognizer;->writeData([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc<",
        "Lcom/xiaopeng/speech/asr/IRecognizer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/asr/Recognizer;

.field final synthetic val$data:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/asr/Recognizer;[BII)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    iput-object p2, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->val$data:[B

    iput p3, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->val$offset:I

    iput p4, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/asr/IRecognizer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->val$data:[B

    iget v1, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->val$offset:I

    iget v2, p0, Lcom/xiaopeng/speech/asr/Recognizer$4;->val$length:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->access$300(Lcom/xiaopeng/speech/asr/Recognizer;[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Recognizer"

    const-string/jumbo v1, "write data error: "

    .line 233
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    check-cast p1, Lcom/xiaopeng/speech/asr/IRecognizer;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/asr/Recognizer$4;->run(Lcom/xiaopeng/speech/asr/IRecognizer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
