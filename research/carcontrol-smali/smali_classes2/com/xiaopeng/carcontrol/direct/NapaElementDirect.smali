.class public Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;
.super Ljava/lang/Object;
.source "NapaElementDirect.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/IElementDirect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/direct/NapaElementDirect$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NapaElementDirect"


# instance fields
.field private volatile mIsActivityResumed:Z

.field private final mItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/direct/PageDirectItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->mIsActivityResumed:Z

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/DirectData;->loadPageData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->mPageHashMap:Ljava/util/HashMap;

    .line 47
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/DirectData;->loadItemData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->mItemHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;
    .locals 1

    .line 38
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect$SingletonHolder;->access$000()Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

    move-result-object v0

    return-object v0
.end method

.method private isElementDirect(Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isPageDirect(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isElementDirect(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$showElementItemView$1(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    .line 337
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;I)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "element direct :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NapaElementDirect"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public checkSupport(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 363
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 365
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isElementDirect(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 366
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getElement(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 368
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->getSupportAction()Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;->checkSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0

    .line 373
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 375
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getSupportAction()Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 376
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/direct/support/SupportCheckAction;->checkSupport()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0

    .line 379
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NapaElementDirect"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public closePageDirect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 151
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isPageDirect(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPanelAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closePageDirect path : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SEAT_BUTTON_SETTING_PANEL"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismiss(Ljava/lang/String;)V

    return v1

    .line 169
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 170
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismiss(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageUrl"
        }
    .end annotation

    return-object p1
.end method

.method public getElement(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "position"

    .line 187
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "/"

    if-eqz v2, :cond_0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->mItemHashMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    return-object p1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->mItemHashMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPPlugin_SeatAdjuestApp"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->mPageHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPanelAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CarControl.CarControl_Popup_SettingXButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "CarControl.CarControl_Popup_TrailerMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "XPPlugin_SeatMassageApp.SeatMassage_PopUp_SeatInfo_Dialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "XPPlugin_SeatAdjuestApp.LumbarAdjust"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "CarControl.CarControl_Popup_SteeringWheelAdjustment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "CarControl.CarControl_Popup_SettingPassengerDoorShortcut"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "CarControl.CarControl_Popup_SettingRearviewMirror"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "com.xiaopeng.intent.action.xkey.user"

    return-object p1

    :pswitch_1
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_TRAILER_MODE_SETTING_DIALOG"

    return-object p1

    :pswitch_2
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    return-object p1

    :pswitch_3
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_DRV_LUMBER_PANEL"

    return-object p1

    :pswitch_4
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    return-object p1

    :pswitch_5
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CUSTOM_DOOR_KEY_PANEL"

    return-object p1

    :pswitch_6
    const-string p1, "isSupportCms"

    .line 391
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CMS_MIRROR_CONTROL_PANEL"

    goto :goto_1

    :cond_7
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    :goto_1
    return-object p1

    :cond_8
    :goto_2
    const-string p1, ""

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12dee76c -> :sswitch_6
        -0xdaa3ade -> :sswitch_5
        0x1d61ba33 -> :sswitch_4
        0x2085792a -> :sswitch_3
        0x29665e29 -> :sswitch_2
        0x2e6f1732 -> :sswitch_1
        0x682b5a1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isElementDirect(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "position"

    .line 92
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPageDirect(Landroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isPageDirect(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public isPageDirect(Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v2, "XPPlugin_CarControlApp"

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "CarControl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "XPPlugin_SeatAdjuestApp"

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "XPPlugin_SeatMassageApp"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 70
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPageDirect result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NapaElementDirect"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1
.end method

.method public isPageOpen(Landroid/net/Uri;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPanelAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPageOpen path : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", action: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SEAT_BUTTON_SETTING_PANEL"

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    return v0

    .line 141
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method public synthetic lambda$showElementItemViewForList$0$NapaElementDirect(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "rootView",
            "itmIndex"
        }
    .end annotation

    .line 319
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->showElementItemView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showElementItemView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showElementItemView 2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, " view is null "

    goto :goto_0

    :cond_0
    const-string v1, " "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 335
    new-instance v0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$jZq0dnKHjIRMAWm3BxF0ZDj42Fk;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$jZq0dnKHjIRMAWm3BxF0ZDj42Fk;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public showElementItemView(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "className",
            "rootView",
            "showListener"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isElementDirect(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 267
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getElement(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    move-result-object p1

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showElementItemView 1 : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_2

    const-string v0, " item is null "

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p3, :cond_3

    const-string v0, " rootView is null "

    goto :goto_1

    :cond_3
    move-object v0, p3

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    if-eqz p4, :cond_4

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;->onElementDirectShow(Ljava/lang/String;)V

    .line 274
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->getParentId()I

    move-result p2

    const/4 p4, 0x1

    if-lez p2, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->getParentId()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 278
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->showElementItemView(Landroid/view/View;)V

    return p4

    .line 283
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->getId()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->showElementItemView(Landroid/view/View;)V

    return p4

    :cond_6
    return v1
.end method

.method public showElementItemViewForList(Landroid/content/Intent;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;ILcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "className",
            "rootView",
            "itmIndex",
            "showListener"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isElementDirect(Landroid/content/Intent;)Z

    move-result p5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    return v0

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 300
    invoke-virtual {p5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p5}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getData()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 305
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getElement(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;

    move-result-object p1

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "showElementItemView 1 : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_2

    const-string p5, " item is null "

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/ElementDirectItem;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_0
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p3, :cond_3

    const-string p5, " rootView is null "

    goto :goto_1

    :cond_3
    move-object p5, p3

    :goto_1
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, ", itemIdx: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    if-ltz p4, :cond_4

    .line 310
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 312
    new-instance p1, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;

    invoke-direct {p1, p0, p3, p4}, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;-><init>(Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;Landroidx/recyclerview/widget/RecyclerView;I)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1

    :cond_4
    const-string/jumbo p1, "showElementItemView failed view is null"

    .line 326
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    :cond_5
    return v0
.end method

.method public showPageDirect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 346
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 347
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->isPageDirect(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPageDirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getPageAction()Lcom/xiaopeng/carcontrol/direct/action/PageAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/direct/action/PageAction;->doAction(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public showSecondPageDirect(Landroid/content/Intent;[Ljava/lang/String;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "supportSecondPage",
            "showListener"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 206
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getSecondName()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 211
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSecondPageDirect name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", supportSecondPage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    .line 212
    array-length v1, p2

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p2, v3

    .line 213
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 216
    invoke-interface {p3, p1}, Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;->onPageDirectShow(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public showSecondPageDirectForList(Landroid/content/Intent;[Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;ILcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "supportSecondPage",
            "rootView",
            "itmIndex",
            "showListener"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->getPage(Landroid/net/Uri;)Lcom/xiaopeng/carcontrol/direct/PageDirectItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 233
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 234
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/direct/PageDirectItem;->getSecondName()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-gez p4, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 242
    array-length p3, p2

    move p4, v0

    :goto_0
    if-ge p4, p3, :cond_4

    aget-object v1, p2, p4

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showSecondPageDirect name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->log(Ljava/lang/String;)V

    if-eqz p5, :cond_2

    .line 246
    invoke-interface {p5, p1}, Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;->onPageDirectShow(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method
