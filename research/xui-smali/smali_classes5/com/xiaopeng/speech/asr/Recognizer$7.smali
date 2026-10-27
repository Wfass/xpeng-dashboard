.class Lcom/xiaopeng/speech/asr/Recognizer$7;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/IPCRunner$IIPCFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/asr/Recognizer;->setBool(Ljava/lang/String;Z)V
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/asr/Recognizer;

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer$7;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    iput-object p2, p0, Lcom/xiaopeng/speech/asr/Recognizer$7;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/asr/Recognizer$7;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/xiaopeng/speech/asr/IRecognizer;)Ljava/lang/Object;
    .locals 3
    .param p1, "iRecognizer"    # Lcom/xiaopeng/speech/asr/IRecognizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer$7;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    iget-object v1, p0, Lcom/xiaopeng/speech/asr/Recognizer$7;->val$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/asr/Recognizer$7;->val$value:Z

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/asr/Recognizer;->access$600(Lcom/xiaopeng/speech/asr/Recognizer;Ljava/lang/String;Z)V

    .line 280
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

    .line 276
    check-cast p1, Lcom/xiaopeng/speech/asr/IRecognizer;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/asr/Recognizer$7;->run(Lcom/xiaopeng/speech/asr/IRecognizer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
