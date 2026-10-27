.class final enum Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
.super Ljava/lang/Enum;
.source "CarGuardModeScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/guard/CarGuardModeScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum AP:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum AVM:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum DISTANCE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum DOOR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum GEAR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum IG:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum INIT:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum OTA:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum OTHER:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum REPAIR_MODE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum SWITCH:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum TRUNK:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

.field public static final enum VALIAD:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 129
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "VALIAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->VALIAD:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 131
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->INIT:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 133
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "GEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->GEAR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 135
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "IG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->IG:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 137
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "AP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AP:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 139
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "DOOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DOOR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 141
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "SWITCH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->SWITCH:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 143
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "TRUNK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->TRUNK:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 145
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "DISTANCE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DISTANCE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 147
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "OTA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTA:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 149
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "AVM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AVM:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 151
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "OTHER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTHER:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 153
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const-string v1, "REPAIR_MODE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->REPAIR_MODE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 128
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->VALIAD:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->INIT:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->GEAR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->IG:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AP:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DOOR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->SWITCH:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->TRUNK:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DISTANCE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTA:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AVM:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTHER:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->REPAIR_MODE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->$VALUES:[Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 128
    const-class v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0
.end method

.method public static values()[Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    .locals 1

    .line 128
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->$VALUES:[Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-virtual {v0}, [Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0
.end method
