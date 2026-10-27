.class Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->registerBroadcastIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/NotificationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;->this$0:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    return-void
.end method
