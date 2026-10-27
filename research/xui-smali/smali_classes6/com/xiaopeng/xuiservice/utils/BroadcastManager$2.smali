.class Lcom/xiaopeng/xuiservice/utils/BroadcastManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerPackageListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$2;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$2;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 165
    return-void
.end method
