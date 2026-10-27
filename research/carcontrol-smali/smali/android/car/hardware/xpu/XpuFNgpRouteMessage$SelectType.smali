.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
.super Ljava/lang/Enum;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final enum CANCEL_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final CANCEL_SELECTED_VALUE:I = 0x4

.field public static final enum COMUTTING_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final COMUTTING_AUTO_SELECTED_VALUE:I = 0x1

.field public static final enum END_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final END_INTERNAL_AUTO_SELECTED_VALUE:I = 0x8

.field public static final enum MID_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final MID_INTERNAL_AUTO_SELECTED_VALUE:I = 0x7

.field public static final enum NOT_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final NOT_AUTO_SELECTED_VALUE:I = 0x0

.field public static final enum PARKING_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final PARKING_AUTO_SELECTED_VALUE:I = 0x2

.field public static final enum START_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final START_INTERNAL_AUTO_SELECTED_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final enum USER_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final USER_SELECTED_VALUE:I = 0x3

.field public static final enum USER_SELECTED_VUI:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final USER_SELECTED_VUI_VALUE:I = 0x9

.field public static final enum VPA_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

.field public static final VPA_AUTO_SELECTED_VALUE:I = 0x5

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1788
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v1, "NOT_AUTO_SELECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->NOT_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1796
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v3, "COMUTTING_AUTO_SELECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->COMUTTING_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1804
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v5, "PARKING_AUTO_SELECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->PARKING_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1812
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v7, "USER_SELECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->USER_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1820
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v9, "CANCEL_SELECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->CANCEL_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1828
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v11, "VPA_AUTO_SELECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->VPA_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1836
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v13, "START_INTERNAL_AUTO_SELECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->START_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1844
    new-instance v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v15, "MID_INTERNAL_AUTO_SELECTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->MID_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1852
    new-instance v15, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v14, "END_INTERNAL_AUTO_SELECTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->END_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1860
    new-instance v14, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v12, "USER_SELECTED_VUI"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->USER_SELECTED_VUI:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1861
    new-instance v12, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const-string v10, "UNRECOGNIZED"

    const/16 v8, 0xa

    const/4 v6, -0x1

    invoke-direct {v12, v10, v8, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    const/16 v6, 0xb

    new-array v6, v6, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    .line 1783
    sput-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    .line 1975
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1984
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1985
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1965
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->USER_SELECTED_VUI:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1964
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->END_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1963
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->MID_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1962
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->START_INTERNAL_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1961
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->VPA_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1960
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->CANCEL_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1959
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->USER_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1958
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->PARKING_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1957
    :pswitch_8
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->COMUTTING_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    .line 1956
    :pswitch_9
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->NOT_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;",
            ">;"
        }
    .end annotation

    .line 1972
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1951
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
    .locals 1

    .line 1783
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
    .locals 1

    .line 1783
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1943
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->value:I

    return v0
.end method
