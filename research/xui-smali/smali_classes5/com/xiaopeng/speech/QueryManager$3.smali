.class Lcom/xiaopeng/speech/QueryManager$3;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/QueryManager;->unInject(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/QueryManager;

.field final synthetic val$queryClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/QueryManager;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/QueryManager;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/speech/QueryManager$3;->this$0:Lcom/xiaopeng/speech/QueryManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/QueryManager$3;->val$queryClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager$3;->this$0:Lcom/xiaopeng/speech/QueryManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/QueryManager;->access$200(Lcom/xiaopeng/speech/QueryManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/QueryManager$3;->val$queryClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/SpeechQuery;

    .line 76
    .local v0, "query":Lcom/xiaopeng/speech/SpeechQuery;
    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/QueryManager$3;->this$0:Lcom/xiaopeng/speech/QueryManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/QueryManager;->access$300(Lcom/xiaopeng/speech/QueryManager;Lcom/xiaopeng/speech/SpeechQuery;)V

    .line 80
    return-void
.end method
