.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;
.super Landroid/database/ContentObserver;
.source "XAppStartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 106
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 107
    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "curXPilotStatus"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCurXPilotStatus()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$002(I)I

    .line 111
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XPilot mode onChange, mCurXPilotMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "isAppUsedLimitEnable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppUsedLimitEnable()Z

    move-result v0

    .line 115
    .local v0, "limitEnable":Z
    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V

    .line 119
    .end local v0    # "limitEnable":Z
    :cond_2
    :goto_0
    return-void
.end method
