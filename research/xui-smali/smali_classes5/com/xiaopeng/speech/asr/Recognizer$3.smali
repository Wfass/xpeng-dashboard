.class Lcom/xiaopeng/speech/asr/Recognizer$3;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/asr/Recognizer;->cancel()V
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/asr/Recognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/asr/Recognizer;

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer$3;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/asr/IRecognizer;)Ljava/lang/Object;
    .locals 1
    .param p1, "iRecognizer"    # Lcom/xiaopeng/speech/asr/IRecognizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer$3;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-static {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->access$200(Lcom/xiaopeng/speech/asr/Recognizer;)V

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    check-cast p1, Lcom/xiaopeng/speech/asr/IRecognizer;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/asr/Recognizer$3;->run(Lcom/xiaopeng/speech/asr/IRecognizer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
