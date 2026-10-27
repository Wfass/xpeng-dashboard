.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;
.super Ljava/lang/Object;
.source "SeatNotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$SingleHolder;
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

.field private static final TAG:Ljava/lang/String; = "SeatNotifyManager"


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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->mIsAllowedToShow:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->mCache:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->mConflictSt:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

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

    .line 86
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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "isSupportNapa"

    .line 74
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->mConflictSt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConflictWithNapa key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " result = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SeatNotifyManager"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    :cond_0
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

    return-void
.end method

.method public dismissAll()V
    .locals 0

    return-void
.end method

.method public setConflictState(Ljava/lang/String;Z)V
    .locals 3
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

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConflictState key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldConflict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatNotifyManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->mConflictSt:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public show(ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isDrv",
            "isPsn",
            "isRl"
        }
    .end annotation

    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show notify: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;->mIsAllowedToShow:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SeatNotifyManager"

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p3, "isSupportNapa"

    .line 49
    invoke-static {p3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isTopActivityFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "can not show drop down for fullscreen Activity showing"

    .line 50
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 54
    :cond_0
    invoke-static {p3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isNapaTopViewFullscreen(I)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/AmsUtils;->isInParkTopView(I)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    const-string p1, "can not show drop down for Napa Limit"

    .line 55
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo p1, "show SeatNotifyDrvMenu isDrv = true"

    .line 60
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->show()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const-string/jumbo p1, "show SeatNotifyPsnMenu isPsn = true"

    .line 63
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->show()V

    :cond_4
    :goto_0
    return-void
.end method
