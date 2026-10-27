.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;
.source "ConditionSeatOccupancy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final SEAT_6:I = 0x6

.field public static final SEAT_7:I = 0x7

.field public static final SEAT_DRIVER:I = 0x1

.field public static final SEAT_FRONT_RIGHT:I = 0x2

.field public static final SEAT_NOT_OCCUPIED:I = 0x0

.field public static final SEAT_OCCUPIED:I = 0x1

.field public static final SEAT_REAR_LEFT:I = 0x3

.field public static final SEAT_REAR_MIDDLE:I = 0x4

.field public static final SEAT_REAR_RIGHT:I = 0x5

.field private static final SINGLETON_DriverOnSeat:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_PsnOnSeat:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_RearLeftSeatOccupancyStatus:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_RearMiddleSeatOccupancyStatus:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_RearRightSeatOccupancyStatus:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "seat"


# instance fields
.field private final seat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_DriverOnSeat:Landroid/util/Singleton;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_PsnOnSeat:Landroid/util/Singleton;

    .line 68
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$3;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$3;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_RearLeftSeatOccupancyStatus:Landroid/util/Singleton;

    .line 80
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$4;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_RearMiddleSeatOccupancyStatus:Landroid/util/Singleton;

    .line 92
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_RearRightSeatOccupancyStatus:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;I)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Integer;
    .param p2, "seat"    # I

    .line 30
    const-string v0, "seat"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->seat:I

    .line 32
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v1, 0x5

    if-gt p2, v1, :cond_2

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target seat occupancy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid seat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->seat:I

    packed-switch v0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_RearRightSeatOccupancyStatus:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 114
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_RearMiddleSeatOccupancyStatus:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 112
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_RearLeftSeatOccupancyStatus:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 110
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_PsnOnSeat:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 108
    :pswitch_4
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->SINGLETON_DriverOnSeat:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSeat()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->seat:I

    return v0
.end method
