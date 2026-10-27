.class Lcom/xiaopeng/speech/NodeManager$3;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/NodeManager;->unSubscribe(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/NodeManager;

.field final synthetic val$nodeClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/speech/NodeManager$3;->this$0:Lcom/xiaopeng/speech/NodeManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/NodeManager$3;->val$nodeClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager$3;->this$0:Lcom/xiaopeng/speech/NodeManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/NodeManager;->access$200(Lcom/xiaopeng/speech/NodeManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/NodeManager$3;->val$nodeClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/SpeechNode;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/NodeManager$3;->this$0:Lcom/xiaopeng/speech/NodeManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/NodeManager;->access$300(Lcom/xiaopeng/speech/NodeManager;Lcom/xiaopeng/speech/SpeechNode;)V

    return-void
.end method
