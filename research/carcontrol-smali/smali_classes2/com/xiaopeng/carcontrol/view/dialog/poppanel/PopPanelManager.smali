.class public Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;
.super Ljava/lang/Object;
.source "PopPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$SingleHolder;
    }
.end annotation


# static fields
.field public static final CONFLICT_SCENE_AIR_BED:Ljava/lang/String; = "airbed"

.field public static final CONFLICT_SCENE_MAIN:Ljava/lang/String; = "c_c"

.field public static final CONFLICT_SCENE_SEAT:Ljava/lang/String; = "seat_adjust"

.field public static final PSN_SEAT_MENU:Ljava/lang/String; = "psn_seat_menu"

.field public static final P_GEAR_MENU:Ljava/lang/String; = "p_gear_menu"

.field public static final SEAT_MIRROR_GUEST_MENU:Ljava/lang/String; = "seat_mirror_guest_menu"

.field public static final SEAT_MIRROR_MENU:Ljava/lang/String; = "seat_mirror_menu"

.field private static final TAG:Ljava/lang/String; = "PopPanelManager"


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final mConflictSt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAllowedToShow:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mIsAllowedToShow:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mCache:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mConflictSt:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;-><init>()V

    return-void
.end method

.method private createMenu(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
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
            "Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;",
            ">;)",
            "Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;"
        }
    .end annotation

    .line 74
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 76
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private dismissOthers(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popPanelMenu"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mCache:Ljava/util/Map;

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

    .line 200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->getDropdownMenuGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->getDropdownMenuGroupId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 204
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object v0

    return-object v0
.end method

.method private mapConflictKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string/jumbo v0, "seat_mirror_menu"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "psn_seat_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "c_c"

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p1, "seat_adjust"

    :goto_1
    return-object p1
.end method


# virtual methods
.method public checkConflictWithNapa(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "isSupportNapa"

    .line 133
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mConflictSt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "psn_seat_menu"

    const-string/jumbo v4, "seat_mirror_menu"

    if-eqz v0, :cond_5

    .line 137
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mapConflictKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "p_gear_menu"

    .line 138
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_1

    :goto_1
    move v1, v2

    :cond_1
    and-int p1, v0, v1

    move v1, p1

    goto/16 :goto_3

    .line 140
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "isSupportDualScreen"

    .line 143
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    const-string v3, "isSupportNewPsnSaveHabbitPos"

    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 147
    :cond_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_5
    const-string v5, "isSupportAirBed"

    .line 150
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 151
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "airbed"

    if-eqz v4, :cond_6

    .line 152
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    :goto_2
    move v1, v2

    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 154
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    goto :goto_2

    :cond_7
    move v1, v0

    :cond_8
    :goto_3
    return v1
.end method

.method public dismiss(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string/jumbo v0, "seat_mirror_menu"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "seat_mirror_guest_menu"

    .line 171
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->dismiss()V

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissAll()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initMenus(Ljava/util/Map;)V
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
            "Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$PopPanelManager$Wc_5fPgI7uYg_Yn1V92jQAyYj9I;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$PopPanelManager$Wc_5fPgI7uYg_Yn1V92jQAyYj9I;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$initMenus$1$PopPanelManager(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "menuList"
        }
    .end annotation

    const-string v0, "PopPanelManager"

    const-string v1, "init start"

    .line 55
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$PopPanelManager$QkVMB-j8Lbr0ssY06JoeV33UEa4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$PopPanelManager$QkVMB-j8Lbr0ssY06JoeV33UEa4;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    const-string p1, "init end"

    .line 67
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$0$PopPanelManager(Ljava/lang/String;Ljava/lang/Class;)V
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

    .line 59
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mCache:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->createMenu(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAllDropdownMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mIsAllowedToShow:Z

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->dismissAll()V

    return-void
.end method

.method public resumeAllDropdownMenu()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mIsAllowedToShow:Z

    return-void
.end method

.method public setConflictState(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "shouldConflict"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mConflictSt:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public show(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "windowType",
            "mRegionId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->show(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public show(Ljava/lang/String;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "windowType",
            "mRegionId",
            "drvScreen"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mIsAllowedToShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopPanelManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->mIsAllowedToShow:Z

    if-nez v0, :cond_0

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allow to show "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "isSupportNapa"

    .line 100
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isTopActivityFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "can not show drop down for fullscreen Activity showing"

    .line 101
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    xor-int/lit8 v0, p4, 0x1

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isNapaTopViewFullscreen(I)Z

    move-result v0

    if-nez v0, :cond_2

    xor-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isInParkTopView(I)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_2
    const-string p1, "can not show drop down for Napa Limit"

    .line 106
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 114
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 118
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->isShow()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onRefresh()V

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->keepPanelShow()V

    goto :goto_0

    .line 123
    :cond_4
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->show(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
