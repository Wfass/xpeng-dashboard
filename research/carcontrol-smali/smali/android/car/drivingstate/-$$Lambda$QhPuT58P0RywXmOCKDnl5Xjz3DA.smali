.class public final synthetic Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;

    invoke-direct {v0}, Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;-><init>()V

    sput-object v0, Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->getSpeedRange()Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    move-result-object p1

    return-object p1
.end method
