.class Lcom/xiaopeng/speech/QueryManager$2;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/QueryManager;->inject(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/QueryManager;

.field final synthetic val$queryCaller:Lcom/xiaopeng/speech/IQueryCaller;

.field final synthetic val$queryClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/QueryManager;Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/speech/QueryManager$2;->this$0:Lcom/xiaopeng/speech/QueryManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/QueryManager$2;->val$queryClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/xiaopeng/speech/QueryManager$2;->val$queryCaller:Lcom/xiaopeng/speech/IQueryCaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager$2;->this$0:Lcom/xiaopeng/speech/QueryManager;

    iget-object v1, p0, Lcom/xiaopeng/speech/QueryManager$2;->val$queryClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/QueryManager;->access$100(Lcom/xiaopeng/speech/QueryManager;Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/speech/QueryManager$2;->val$queryCaller:Lcom/xiaopeng/speech/IQueryCaller;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/SpeechQuery;->setQueryCaller(Ljava/lang/Object;)V

    return-void
.end method
