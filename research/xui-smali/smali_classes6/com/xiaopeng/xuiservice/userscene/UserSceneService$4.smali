.class Lcom/xiaopeng/xuiservice/userscene/UserSceneService$4;
.super Ljava/lang/Object;
.source "UserSceneService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 986
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$4;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$4;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$3200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V

    .line 990
    return-void
.end method
