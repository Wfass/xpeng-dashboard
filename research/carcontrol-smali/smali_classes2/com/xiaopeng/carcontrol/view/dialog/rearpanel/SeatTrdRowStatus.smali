.class public final enum Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;
.super Ljava/lang/Enum;
.source "SeatTrdRowStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

.field public static final enum SeatLTStowClickOutPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

.field public static final enum SeatLTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

.field public static final enum SeatLTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

.field public static final enum SeatRTStowClickOutPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

.field public static final enum SeatRTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

.field public static final enum SeatRTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 4
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const-string v1, "SeatLTStowInPause"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    .line 5
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const-string v3, "SeatLTStowClickOutPause"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowClickOutPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    .line 6
    new-instance v3, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const-string v5, "SeatLTStowNotActive"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    .line 7
    new-instance v5, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const-string v7, "SeatRTStowInPause"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    .line 8
    new-instance v7, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const-string v9, "SeatRTStowClickOutPause"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowClickOutPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    .line 9
    new-instance v9, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const-string v11, "SeatRTStowNotActive"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 3
    sput-object v11, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->$VALUES:[Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->$VALUES:[Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-object v0
.end method
