.class public Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;
.super Ljava/lang/Object;
.source "DropDownMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager$SingleHolder;
    }
.end annotation


# static fields
.field public static final CONFLICT_SCENE_AIR_BED:Ljava/lang/String; = "airbed"

.field public static final CONFLICT_SCENE_MAIN:Ljava/lang/String; = "c_c"

.field public static final CONFLICT_SCENE_SEAT:Ljava/lang/String; = "seat_adjust"

.field public static final PSN_SEAT_MENU:Ljava/lang/String; = "psn_seat_menu"

.field public static final P_GEAR_MENU:Ljava/lang/String; = "p_gear_menu"

.field public static final SEAT_MIRROR_MENU:Ljava/lang/String; = "seat_mirror_menu"

.field private static final TAG:Ljava/lang/String; = "DropDownMenuManager"


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;",
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mIsAllowedToShow:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mCache:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mConflictSt:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;-><init>()V

    return-void
.end method

.method private createMenu(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;
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
            "Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;",
            ">;)",
            "Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;"
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 71
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private dismissOthers(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dropDownMenu"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mCache:Ljava/util/Map;

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

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->getDropdownMenuGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->getDropdownMenuGroupId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;

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

    .line 139
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

    .line 109
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mConflictSt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 111
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

    .line 113
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mapConflictKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "p_gear_menu"

    .line 114
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
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

    .line 116
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "isSupportDualScreen"

    .line 119
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 121
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

    .line 123
    :cond_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_5
    const-string v5, "isSupportAirBed"

    .line 126
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 127
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "airbed"

    if-eqz v4, :cond_6

    .line 128
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    :goto_2
    move v1, v2

    goto :goto_3

    .line 129
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 130
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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAll()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mCache:Ljava/util/Map;

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

    check-cast v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->dismiss()V

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
            "Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;",
            ">;>;)V"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DropDownMenuManager$59B98hv_0zFMivduxtPSyBGFP8s;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DropDownMenuManager$59B98hv_0zFMivduxtPSyBGFP8s;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$initMenus$1$DropDownMenuManager(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "menuList"
        }
    .end annotation

    const-string v0, "DropDownMenuManager"

    const-string v1, "init start"

    .line 50
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DropDownMenuManager$opMk8PNK6WemjxyqwPQtFYEeqkc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$DropDownMenuManager$opMk8PNK6WemjxyqwPQtFYEeqkc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    const-string p1, "init end"

    .line 62
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$0$DropDownMenuManager(Ljava/lang/String;Ljava/lang/Class;)V
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

    .line 54
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mCache:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->createMenu(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAllDropdownMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mIsAllowedToShow:Z

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->dismissAll()V

    return-void
.end method

.method public resumeAllDropdownMenu()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mIsAllowedToShow:Z

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

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mConflictSt:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mIsAllowedToShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropDownMenuManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->mIsAllowedToShow:Z

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow to show "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isTopActivityFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "can not show drop down for fullscreen Activity showing"

    .line 92
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->getDropDownMenu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->dismissOthers(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;)V

    const/16 v0, 0x7d8

    .line 103
    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->show(I)V

    :cond_2
    return-void
.end method
