.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;
.super Ljava/lang/Enum;
.source "TrunkState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Min_Open_Angle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Pause_Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Pause_Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

.field public static final enum Preparing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v1, "Closed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 15
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v3, "Opening"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 19
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v5, "Closing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 23
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v7, "Pause_Opening"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 27
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v9, "Pause_Closing"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 31
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v11, "Opened"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 35
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v13, "Preparing"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Preparing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 37
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const-string v15, "Min_Open_Angle"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Min_Open_Angle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 7
    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    return-object v0
.end method
