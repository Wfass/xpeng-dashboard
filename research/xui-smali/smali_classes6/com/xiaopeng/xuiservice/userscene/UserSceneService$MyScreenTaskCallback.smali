.class Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;
.super Lcom/xiaopeng/screen/ScreenTaskCallback;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyScreenTaskCallback"
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 1020
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {p0}, Lcom/xiaopeng/screen/ScreenTaskCallback;-><init>()V

    .line 1021
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->startTime:J

    return-void
.end method

.method public static synthetic lambda$onResizeCompleted$0(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->startTime:J

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic lambda$onResizeError$1(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->startTime:J

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onResizeCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    invoke-super {p0, p1}, Lcom/xiaopeng/screen/ScreenTaskCallback;->onResizeCompleted(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$1200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$MyScreenTaskCallback$-yTy9oXS5vkkGhXwTXw0eChH8f4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$MyScreenTaskCallback$-yTy9oXS5vkkGhXwTXw0eChH8f4;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 1030
    return-void
.end method

.method public onResizeError(Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-super {p0, p1}, Lcom/xiaopeng/screen/ScreenTaskCallback;->onResizeError(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$1200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$MyScreenTaskCallback$q5Uu55l307uo3YlkQsy0YrvEmVs;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$MyScreenTaskCallback$q5Uu55l307uo3YlkQsy0YrvEmVs;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    return-void
.end method

.method public setCallbackStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 1023
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$MyScreenTaskCallback;->startTime:J

    .line 1024
    return-void
.end method
