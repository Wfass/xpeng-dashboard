.class public final enum Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
.super Ljava/lang/Enum;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final enum OBJ_TYPE_ANIMAL:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_ANIMAL_VALUE:I = 0x2

.field public static final enum OBJ_TYPE_BICYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_BICYCLE_VALUE:I = 0x6

.field public static final enum OBJ_TYPE_BUS:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_BUS_VALUE:I = 0xa

.field public static final enum OBJ_TYPE_MOTORCYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_MOTORCYCLE_VALUE:I = 0x8

.field public static final enum OBJ_TYPE_PERSON:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_PERSON_VALUE:I = 0x1

.field public static final enum OBJ_TYPE_PICKUP:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_PICKUP_VALUE:I = 0xb

.field public static final enum OBJ_TYPE_SEDAN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_SEDAN_VALUE:I = 0x3

.field public static final enum OBJ_TYPE_SUV:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_SUV_VALUE:I = 0x4

.field public static final enum OBJ_TYPE_TRICYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_TRICYCLE_VALUE:I = 0x7

.field public static final enum OBJ_TYPE_TRUCK:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_TRUCK_VALUE:I = 0x9

.field public static final enum OBJ_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum OBJ_TYPE_VAN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field public static final OBJ_TYPE_VAN_VALUE:I = 0x5

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v1, "OBJ_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 27
    new-instance v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v3, "OBJ_TYPE_PERSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_PERSON:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 31
    new-instance v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v5, "OBJ_TYPE_ANIMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_ANIMAL:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 35
    new-instance v5, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v7, "OBJ_TYPE_SEDAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_SEDAN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 39
    new-instance v7, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v9, "OBJ_TYPE_SUV"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_SUV:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 43
    new-instance v9, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v11, "OBJ_TYPE_VAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_VAN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 47
    new-instance v11, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v13, "OBJ_TYPE_BICYCLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_BICYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 51
    new-instance v13, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v15, "OBJ_TYPE_TRICYCLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_TRICYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 55
    new-instance v15, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v14, "OBJ_TYPE_MOTORCYCLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_MOTORCYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 59
    new-instance v14, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v12, "OBJ_TYPE_TRUCK"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_TRUCK:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 63
    new-instance v12, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v10, "OBJ_TYPE_BUS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_BUS:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 67
    new-instance v10, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v8, "OBJ_TYPE_PICKUP"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_PICKUP:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 68
    new-instance v8, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const-string v6, "UNRECOGNIZED"

    const/16 v4, 0xc

    const/4 v2, -0x1

    invoke-direct {v8, v6, v4, v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const/16 v2, 0xd

    new-array v2, v2, [Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    aput-object v8, v2, v4

    .line 18
    sput-object v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->$VALUES:[Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    .line 156
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput p3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_PICKUP:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 145
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_BUS:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 144
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_TRUCK:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 143
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_MOTORCYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 142
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_TRICYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 141
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_BICYCLE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 140
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_VAN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 139
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_SUV:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 138
    :pswitch_8
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_SEDAN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 137
    :pswitch_9
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_ANIMAL:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 136
    :pswitch_a
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_PERSON:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    .line 135
    :pswitch_b
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
    .locals 1

    .line 18
    const-class v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
    .locals 1

    .line 18
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->$VALUES:[Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->value:I

    return v0
.end method
