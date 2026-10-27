.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$2;
.super Ljava/lang/Object;
.source "XAppModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->sendShareConfirmNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->sendShareConfirmEvent(Ljava/lang/String;)V

    .line 245
    return-void
.end method
