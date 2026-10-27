.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;
.super Ljava/lang/Enum;
.source "ChargeGunStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

.field public static final enum AcLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

.field public static final enum BothLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

.field public static final enum DcLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

.field public static final enum NoLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

.field public static final enum V2L:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

.field public static final enum V2LNotSupport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const-string v1, "NoLink"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->NoLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const-string v3, "AcLink"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->AcLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const-string v5, "DcLink"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->DcLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    .line 24
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const-string v7, "BothLink"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->BothLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    .line 28
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const-string v9, "V2L"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->V2L:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    .line 32
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const-string v11, "V2LNotSupport"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->V2LNotSupport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 8
    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

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

.method public static fromVcuStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 58
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->V2LNotSupport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown charge gun type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->V2L:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->BothLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0

    .line 49
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->DcLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0

    .line 46
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->AcLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0

    .line 43
    :cond_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->NoLink:Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    return-object v0
.end method
