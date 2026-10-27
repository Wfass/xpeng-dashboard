.class Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;
.super Ljava/lang/Object;
.source "ScreenTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;->onActivityChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

.field final synthetic val$isForground:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;Z)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;->this$1:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;->val$isForground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;->this$1:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;->this$0:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->access$300(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;)Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;->this$1:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl;->this$0:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->access$300(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;)Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskListenerImpl$1;->val$isForground:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;->onActivityChanged(Z)V

    :cond_0
    return-void
.end method
