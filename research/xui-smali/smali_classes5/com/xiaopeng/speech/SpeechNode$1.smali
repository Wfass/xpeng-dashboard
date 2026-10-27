.class Lcom/xiaopeng/speech/SpeechNode$1;
.super Ljava/lang/Object;
.source "SpeechNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/SpeechNode;->onMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/SpeechNode;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/SpeechNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/SpeechNode;

    .line 67
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode$1;, "Lcom/xiaopeng/speech/SpeechNode$1;"
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechNode$1;->this$0:Lcom/xiaopeng/speech/SpeechNode;

    iput-object p2, p0, Lcom/xiaopeng/speech/SpeechNode$1;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/SpeechNode$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode$1;, "Lcom/xiaopeng/speech/SpeechNode$1;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode$1;->this$0:Lcom/xiaopeng/speech/SpeechNode;

    iget-object v1, p0, Lcom/xiaopeng/speech/SpeechNode$1;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/SpeechNode$1;->val$data:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/SpeechNode;->access$000(Lcom/xiaopeng/speech/SpeechNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
