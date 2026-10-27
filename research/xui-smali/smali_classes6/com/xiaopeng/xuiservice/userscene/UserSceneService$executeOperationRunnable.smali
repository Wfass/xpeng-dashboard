.class Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;
.super Ljava/lang/Object;
.source "UserSceneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "executeOperationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;

    .line 1039
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$executeOperationRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    .line 1043
    return-void
.end method
