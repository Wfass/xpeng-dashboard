.class public Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;
.super Ljava/lang/Object;
.source "ControlPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$SingleHolder;
    }
.end annotation


# static fields
.field public static final HOME_SYSTEM_TYPE:I = 0xbc0

.field public static final NORMAL_SYSTEM_TYPE:I = 0xbc0

.field private static final PANEL_FAST_SHOW_ID:I = -0x65

.field public static final SUPER_SYSTEM_TYPE:I = 0xbc0

.field private static final TAG:Ljava/lang/String; = "ControlPanelManager"


# instance fields
.field private mPanelList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPanels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;-><init>()V

    return-void
.end method

.method private static createPanel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;",
            ">;)",
            "Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;"
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private dismissAllPanelsExcept(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelKey"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    return-object v0
.end method

.method private getTargetSmartControlAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelKey"
        }
    .end annotation

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_DRV_LUMBER_PANEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_TRAILER_MODE_SETTING_DIALOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "com.xiaopeng.smartcontrol.intent.action.ACTION_SHOW_DRV_LUMBER_PANEL"

    return-object p1

    :pswitch_1
    const-string p1, "com.xiaopeng.smartcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    return-object p1

    :pswitch_2
    const-string p1, "com.xiaopeng.smartcontrol.intent.action.ACTION_SHOW_TRAILER_MODE_SETTING_DIALOG"

    return-object p1

    :pswitch_3
    const-string p1, "com.xiaopeng.smartcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    return-object p1

    :pswitch_4
    const-string p1, "com.xiaopeng.smartcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    return-object p1

    :cond_5
    :goto_1
    const-string p1, ""

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5999e94e -> :sswitch_4
        -0x4c8d060e -> :sswitch_3
        -0x8f29da9 -> :sswitch_2
        -0x7f8e7c -> :sswitch_1
        0x19dbed7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismiss(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelKey"
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getPanel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->dismiss()V

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is not panel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlPanelManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dismissAllPanels()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismissAllPanelsExcept(Ljava/lang/String;)V

    return-void
.end method

.method public getPanel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelKey"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ControlPanelManager"

    const-string v0, "getPanel: panelKey is null"

    .line 96
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    return-object p1
.end method

.method public initPanels(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$gbYWQHmT5cDVsUQvUOOhW3JtQ-8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$gbYWQHmT5cDVsUQvUOOhW3JtQ-8;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isShow(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelKey"
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getPanel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->isShow()Z

    move-result p1

    return p1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is not panel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlPanelManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$initPanels$1$ControlPanelManager(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "panelList"
        }
    .end annotation

    const-string v0, "ControlPanelManager"

    const-string v1, "init start"

    .line 47
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanelList:Ljava/util/Map;

    .line 50
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$iv1DUUcA6y2DiVjGIBCDXgwugZY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$iv1DUUcA6y2DiVjGIBCDXgwugZY;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    const-string p1, "init end"

    .line 60
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$0$ControlPanelManager(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "panelClass"
        }
    .end annotation

    const-wide/16 v0, 0x64

    .line 52
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->createPanel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$null$2$ControlPanelManager(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "panelClass"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->createPanel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$reInitPanels$3$ControlPanelManager()V
    .locals 3

    const-string v0, "ControlPanelManager"

    const-string v1, "reInitPanels start"

    .line 80
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanelList:Ljava/util/Map;

    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$FD6-4JDviTDnMLPJ9GupbyzywUI;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$FD6-4JDviTDnMLPJ9GupbyzywUI;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    const-string v1, "reInitPanels end"

    .line 89
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reInitPanels()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismissAllPanels()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->mPanels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$c4Ly8gtYUsMczG_70gwlYL8k8ZE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/-$$Lambda$ControlPanelManager$c4Ly8gtYUsMczG_70gwlYL8k8ZE;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "panelKey",
            "windowType"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;ILandroid/net/Uri;Z)V

    return-void
.end method

.method public show(Ljava/lang/String;ILandroid/net/Uri;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "panelKey",
            "windowType",
            "url",
            "playTts"
        }
    .end annotation

    const/16 v0, -0x65

    const-wide/16 v1, 0xc8

    .line 121
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJ)Z

    move-result v0

    const-string v1, "ControlPanelManager"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "show panel too fast!!!"

    .line 122
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "show: panelKey is null"

    .line 126
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getTargetSmartControlAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.xiaopeng.smartcontrol"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendBroadcast:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getPanel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 140
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismissAllPanelsExcept(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 142
    instance-of p1, v0, Lcom/xiaopeng/carcontrol/direct/IPanelDirectDispatch;

    if-eqz p1, :cond_3

    .line 143
    move-object p1, v0

    check-cast p1, Lcom/xiaopeng/carcontrol/direct/IPanelDirectDispatch;

    invoke-interface {p1, p3}, Lcom/xiaopeng/carcontrol/direct/IPanelDirectDispatch;->dispatchDirectData(Landroid/net/Uri;)V

    .line 145
    :cond_3
    invoke-virtual {v0, p2, p4}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->show(IZ)V

    goto :goto_0

    .line 147
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Please invoke initPanels("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") first"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panelKey",
            "windowType",
            "playTts"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;ILandroid/net/Uri;Z)V

    return-void
.end method

.method public showRearSeatPanel(Ljava/lang/String;IZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "panelKey",
            "windowType",
            "enterDialog",
            "screenId"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getPanel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panelKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "   windowType ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "   enterDialog = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "    screenId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ControlPanelManager"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x3

    if-ne p4, p1, :cond_1

    const/4 v2, 0x1

    .line 160
    :cond_1
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->setRearFlag(Z)V

    .line 161
    invoke-virtual {v0, p4}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->setDialogScreen(I)V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismissAllPanels()V

    .line 163
    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->show(I)V

    goto :goto_0

    :cond_2
    const-string p1, "rearSeatPanel == null , init false"

    .line 165
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
