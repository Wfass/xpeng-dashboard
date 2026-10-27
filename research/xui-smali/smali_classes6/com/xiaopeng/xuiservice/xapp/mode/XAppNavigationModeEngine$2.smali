.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$2;
.super Ljava/lang/Object;
.source "XAppNavigationModeEngine.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->registerSharedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .param p2, "event"    # I

    .line 92
    if-eqz p1, :cond_2

    .line 93
    const/16 v0, 0x403

    if-eq p2, v0, :cond_1

    const/16 v0, 0x610

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "XAppNavigationModeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventChanged event:ID_SCREEN_WINDOW_POSITION_CHANGED info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->refreshNaviBar(I)V

    .line 103
    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "XAppNavigationModeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventChanged event:ID_PACKAGE_CHANGED info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->dismissShareLoading()V

    .line 97
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideTransferConfirmDialog()V

    .line 98
    nop

    .line 109
    :cond_2
    :goto_0
    return-void
.end method

.method public onSplitScreenEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 82
    return-void
.end method

.method public onTopAppChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 86
    const-string v0, "XAppNavigationModeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopAppChanged, refreshNaviBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->refreshNaviBar(I)V

    .line 88
    return-void
.end method
