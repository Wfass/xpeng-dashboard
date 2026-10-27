.class public Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;
.super Ljava/lang/Object;
.source "RearSeatPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$SingleHolder;
    }
.end annotation


# static fields
.field public static final REAR_SEAT_ADJUST_PANEL:Ljava/lang/String; = "rear_seat_adjust_panel"

.field public static final REAR_SEAT_MASSAGE_PANEL:Ljava/lang/String; = "rear_seat_massage_panel"

.field private static final TAG:Ljava/lang/String; = "RearSeatPanelManager"


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->mCache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;-><init>()V

    return-void
.end method

.method private createMenu(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;
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
            "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;",
            ">;)",
            "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;"
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private dismissAll()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;

    .line 93
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dismissOthers(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dropDownMenu"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->mCache:Ljava/util/Map;

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

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initRearSeatPanel(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/-$$Lambda$RearSeatPanelManager$29OSZuWhd4iisYA-f4QHuo6j9CI;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/-$$Lambda$RearSeatPanelManager$29OSZuWhd4iisYA-f4QHuo6j9CI;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$initRearSeatPanel$1$RearSeatPanelManager(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "menuList"
        }
    .end annotation

    const-string v0, "RearSeatPanelManager"

    const-string v1, "init start"

    .line 34
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/-$$Lambda$RearSeatPanelManager$aOqllmLeyRLgCJsn6R0N9_WY4r8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/-$$Lambda$RearSeatPanelManager$aOqllmLeyRLgCJsn6R0N9_WY4r8;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    const-string p1, "init end"

    .line 45
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$0$RearSeatPanelManager(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "menuClass"
        }
    .end annotation

    const-wide/16 v0, 0x64

    .line 38
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->mCache:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->createMenu(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 60
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->show(Ljava/lang/String;IZI)V

    return-void
.end method

.method public show(Ljava/lang/String;IZI)V
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

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;

    .line 65
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

    const-string v1, "RearSeatPanelManager"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x3

    if-ne p4, p1, :cond_1

    const/4 v2, 0x1

    .line 71
    :cond_1
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->setRearFlag(Z)V

    .line 72
    invoke-virtual {v0, p4}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->setDialogScreen(I)V

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;->dismissAll()V

    .line 74
    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->show(I)V

    goto :goto_0

    :cond_2
    const-string p1, "rearSeatPanel == null , init false"

    .line 76
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
