.class public Lair;
.super Ljava/lang/Object;
.source "CarUxRestrictionsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lair$a;
    }
.end annotation


# static fields
.field private static d:Lair;


# instance fields
.field private a:Landroid/car/drivingstate/CarUxRestrictions;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lair$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lair;->a()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    iput-object v0, p0, Lair;->a:Landroid/car/drivingstate/CarUxRestrictions;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 52
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lair;->b:Ljava/util/Set;

    .line 53
    new-instance v0, L-$$Lambda$air$qJGYpNkpRtisdErcuDP8Pz8dD28;

    invoke-direct {v0, p0}, L-$$Lambda$air$qJGYpNkpRtisdErcuDP8Pz8dD28;-><init>(Lair;)V

    iput-object v0, p0, Lair;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    const-wide/16 v0, 0x0

    .line 69
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    new-instance v3, L-$$Lambda$air$PBWiruxvo_GOeQd61BazJc3OJGQ;

    invoke-direct {v3, p0}, L-$$Lambda$air$PBWiruxvo_GOeQd61BazJc3OJGQ;-><init>(Lair;)V

    invoke-static {p1, v2, v0, v1, v3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object p1

    .line 83
    iget-object v2, p0, Lair;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    invoke-static {p1, v2}, Lair;->a(Landroid/car/Car;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "CarUxRestrictionsUtil"

    const-string v3, "Unable to connect to car service, assuming unrestricted"

    .line 88
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object p1, p0, Lair;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    new-instance v2, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 91
    invoke-virtual {v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lair;
    .locals 1

    .line 117
    sget-object v0, Lair;->d:Lair;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lair;

    invoke-direct {v0, p0}, Lair;-><init>(Landroid/content/Context;)V

    sput-object v0, Lair;->d:Lair;

    .line 121
    :cond_0
    sget-object p0, Lair;->d:Lair;

    return-object p0
.end method

.method private static a()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 5

    .line 97
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    const/4 v1, 0x1

    const/16 v2, 0x1ff

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 99
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictions;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 161
    invoke-static {v0, p2}, Lair;->a(ILandroid/car/drivingstate/CarUxRestrictions;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/car/ui/e$f;->car_ui_default_max_string_length:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p2}, Landroid/car/drivingstate/CarUxRestrictions;->getMaxRestrictedStringLength()I

    move-result p2

    .line 168
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/car/ui/e$h;->car_ui_ellipsis:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static a(Landroid/car/Car;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    .locals 1

    :try_start_0
    const-string v0, "uxrestriction"

    .line 190
    invoke-virtual {p0, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 192
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    .line 194
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    .line 193
    invoke-interface {p1, p0}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CarUxRestrictionsUtil"

    const-string v0, "Car not connected"

    .line 196
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/car/Car;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 74
    iget-object p2, p0, Lair;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    invoke-static {p1, p2}, Lair;->a(Landroid/car/Car;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "CarUxRestrictionsUtil"

    const-string p2, "Car service disconnected, assuming fully restricted uxr"

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lair;->c:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Lair;->a()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    iput-object p1, p0, Lair;->a:Landroid/car/drivingstate/CarUxRestrictions;

    goto :goto_0

    .line 58
    :cond_0
    iput-object p1, p0, Lair;->a:Landroid/car/drivingstate/CarUxRestrictions;

    .line 61
    :goto_0
    iget-object p1, p0, Lair;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lair$a;

    .line 62
    iget-object v1, p0, Lair;->a:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-interface {v0, v1}, Lair$a;->onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static a(ILandroid/car/drivingstate/CarUxRestrictions;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$PBWiruxvo_GOeQd61BazJc3OJGQ(Lair;Landroid/car/Car;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lair;->a(Landroid/car/Car;Z)V

    return-void
.end method

.method public static synthetic lambda$qJGYpNkpRtisdErcuDP8Pz8dD28(Lair;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lair;->a(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method


# virtual methods
.method public a(Lair$a;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lair;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lair;->a:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-interface {p1, v0}, Lair$a;->onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public b(Lair$a;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lair;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
