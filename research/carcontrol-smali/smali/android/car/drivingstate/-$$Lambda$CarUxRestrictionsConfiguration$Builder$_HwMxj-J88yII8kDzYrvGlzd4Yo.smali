.class public final synthetic Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;

    invoke-direct {v0}, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;-><init>()V

    sput-object v0, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->lambda$setUxRestrictions$0(Ljava/lang/String;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    move-result-object p1

    return-object p1
.end method
