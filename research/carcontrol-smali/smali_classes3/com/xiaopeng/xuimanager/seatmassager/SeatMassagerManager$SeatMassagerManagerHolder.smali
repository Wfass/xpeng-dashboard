.class Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerManagerHolder;
.super Ljava/lang/Object;
.source "SeatMassagerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeatMassagerManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;-><init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerManagerHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    return-object v0
.end method
