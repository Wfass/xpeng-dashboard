.class Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;
.super Lcom/xiaopeng/screen/ScreenTaskListener;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 518
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {p0}, Lcom/xiaopeng/screen/ScreenTaskListener;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onActivityChanged$0(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$1300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;I)V

    .line 530
    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/screen/ScreenTaskListener;->onActivityChanged(ILjava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "getProperty":Ljava/lang/String;
    const-string v1, "UserSceneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityChanged screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &getProperty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 525
    if-nez p1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$1100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$1002(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Z)Z

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$1200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$UserSceneHandler;->post(Ljava/lang/Runnable;)Z

    .line 531
    return-void
.end method
