.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;
.super Ljava/lang/Enum;
.source "AsHeight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum LL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->Off:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v3, "HL2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v5, "HL1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 24
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v7, "H0"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 28
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v9, "LL1"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 32
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v11, "LL2"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    .line 36
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const-string v13, "LL3"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

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

.method public static fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0

    .line 60
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0

    .line 57
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0

    .line 54
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0

    .line 51
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0

    .line 48
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->Off:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    return-object v0
.end method


# virtual methods
.method public toBcmCmd()I
    .locals 3

    .line 77
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown As Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
