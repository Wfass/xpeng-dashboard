.class public Lcom/xiaopeng/carcontrol/direct/action/DoorKeySettingPageAction;
.super Ljava/lang/Object;
.source "DoorKeySettingPageAction.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/action/PageAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
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

    .line 13
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string p2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CUSTOM_DOOR_KEY_PANEL"

    const/16 v0, 0xbc0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    return-void
.end method
