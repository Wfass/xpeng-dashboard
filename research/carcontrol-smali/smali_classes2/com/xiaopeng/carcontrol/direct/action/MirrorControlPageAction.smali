.class public Lcom/xiaopeng/carcontrol/direct/action/MirrorControlPageAction;
.super Ljava/lang/Object;
.source "MirrorControlPageAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/action/PageAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v0, "isSupportCms"

    .line 16
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CMS_MIRROR_CONTROL_PANEL"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    :goto_0
    const/16 v1, 0xbc0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;ILandroid/net/Uri;Z)V

    return-void
.end method
