.class public final synthetic Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$33O9mHTV5Z4ngj0XYj9sirczgSA;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->lambda$33O9mHTV5Z4ngj0XYj9sirczgSA(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
