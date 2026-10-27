.class Lcom/xiaopeng/speech/NodeManager$2;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/NodeManager;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/NodeManager;

.field final synthetic val$listener:Lcom/xiaopeng/speech/INodeListener;

.field final synthetic val$nodeClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/speech/NodeManager$2;->this$0:Lcom/xiaopeng/speech/NodeManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/NodeManager$2;->val$nodeClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/xiaopeng/speech/NodeManager$2;->val$listener:Lcom/xiaopeng/speech/INodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager$2;->this$0:Lcom/xiaopeng/speech/NodeManager;

    iget-object v1, p0, Lcom/xiaopeng/speech/NodeManager$2;->val$nodeClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/NodeManager;->access$100(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/speech/NodeManager$2;->val$listener:Lcom/xiaopeng/speech/INodeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/SpeechNode;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
