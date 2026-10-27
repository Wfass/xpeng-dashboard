.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;
.super Ljava/lang/Enum;
.source "ChargeStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum Appointment:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum ChargeDone:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum ChargeError:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum ChargeErrorD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum ChargeStoppingD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum ChargerRemovedD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum Charging:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum DischargeDone:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum DischargeError:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum Discharging:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum FullyChargedD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum Prepare:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

.field public static final enum WrongOpD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v1, "Prepare"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Prepare:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v3, "Appointment"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Appointment:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v5, "Charging"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Charging:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 24
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v7, "ChargeError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeError:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 28
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v9, "ChargeDone"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeDone:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 32
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v11, "Discharging"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Discharging:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 36
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v13, "DischargeDone"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->DischargeDone:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 40
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v15, "DischargeError"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->DischargeError:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 44
    new-instance v15, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v14, "FullyChargedD21"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->FullyChargedD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 48
    new-instance v14, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v12, "ChargerRemovedD21"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargerRemovedD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 52
    new-instance v12, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v10, "WrongOpD21"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->WrongOpD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 56
    new-instance v10, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v8, "ChargeStoppingD21"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeStoppingD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    .line 60
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const-string v6, "ChargeErrorD21"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeErrorD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

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

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 8
    sput-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromVcuChargeStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown charge status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeErrorD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeStoppingD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 108
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->WrongOpD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 105
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargerRemovedD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 102
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->FullyChargedD21:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 98
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->DischargeError:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 95
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->DischargeDone:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 92
    :pswitch_7
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Discharging:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 88
    :pswitch_8
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeDone:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 84
    :pswitch_9
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->ChargeError:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 80
    :pswitch_a
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Charging:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 76
    :pswitch_b
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Appointment:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    goto :goto_0

    .line 72
    :pswitch_c
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->Prepare:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeStatus;

    return-object v0
.end method
