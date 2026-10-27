.class Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;
.super Ljava/lang/Object;
.source "BuildSceneTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;->this$0:Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    iput-wide p2, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;->this$0:Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    iget-wide v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;->val$time:J

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->access$000(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;->this$0:Lcom/xiaopeng/speech/vui/task/BuildSceneTask;

    iget-wide v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;->val$time:J

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->access$100(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V

    .line 113
    return-void
.end method
