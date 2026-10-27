.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.super Ljava/lang/Enum;
.source "ScuResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum BLINDNESS:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum INITIALIZATION:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum OFF_MRR_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

.field public static final enum UNAVAILABLE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 20
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 24
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v5, "FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 29
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v7, "UNAVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->UNAVAILABLE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 34
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v9, "INITIALIZATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->INITIALIZATION:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 39
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v11, "OFF_TTM_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 43
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v13, "OFF_MRR_MODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_MRR_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 48
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v15, "BLINDNESS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->BLINDNESS:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    .line 50
    new-instance v15, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const-string v14, "NEDC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->NEDC:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 12
    sput-object v14, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 80
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 71
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->BLINDNESS:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 75
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_MRR_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 73
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF_TTM_MODE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 69
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->INITIALIZATION:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 67
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->UNAVAILABLE:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 65
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    .line 63
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 12
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 12
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    return-object v0
.end method
