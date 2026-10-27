.class public Lcom/xiaopeng/carcontrol/direct/action/ImsControlPageAction;
.super Ljava/lang/Object;
.source "ImsControlPageAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/action/PageAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 12
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    const/16 v1, 0xbc0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;ILandroid/net/Uri;Z)V

    return-void
.end method
