.class Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;
.super Ljava/lang/Object;
.source "BroadcastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$3;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->access$200(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    return-void
.end method
