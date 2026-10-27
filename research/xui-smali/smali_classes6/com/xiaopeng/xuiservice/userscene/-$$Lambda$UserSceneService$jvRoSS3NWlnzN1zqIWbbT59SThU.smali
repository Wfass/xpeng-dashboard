.class public final synthetic Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$jvRoSS3NWlnzN1zqIWbbT59SThU;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->lambda$startActivity$2(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
