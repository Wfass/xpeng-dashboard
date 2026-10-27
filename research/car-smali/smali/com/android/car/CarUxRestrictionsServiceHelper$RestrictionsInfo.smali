.class Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;
.super Ljava/lang/Object;
.source "CarUxRestrictionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarUxRestrictionsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictionsInfo"
.end annotation


# instance fields
.field private mRestrictionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/CarUxRestrictionsServiceHelper;


# direct methods
.method private constructor <init>(Lcom/android/car/CarUxRestrictionsServiceHelper;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->this$0:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->mRestrictionsList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarUxRestrictionsServiceHelper;Lcom/android/car/CarUxRestrictionsServiceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarUxRestrictionsServiceHelper;
    .param p2, "x1"    # Lcom/android/car/CarUxRestrictionsServiceHelper$1;

    .line 449
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;-><init>(Lcom/android/car/CarUxRestrictionsServiceHelper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;

    .line 449
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->mRestrictionsList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addRestrictions(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;)V
    .locals 1
    .param p1, "r"    # Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;

    .line 453
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->mRestrictionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method

.method findRestrictions(F)Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    .locals 3
    .param p1, "speed"    # F

    .line 462
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->mRestrictionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;

    .line 463
    .local v1, "r":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    invoke-virtual {v1, p1}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->includes(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    return-object v1

    .line 466
    .end local v1    # "r":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    :cond_0
    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
