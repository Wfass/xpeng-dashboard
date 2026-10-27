.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;
.super Ljava/lang/Enum;
.source "ScenarioMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum Normal:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum SpaceCapsule:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

.field public static final enum VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v1, "Meditation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 13
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v3, "SpaceCapsule"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsule:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 17
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v5, "SpaceCapsuleSleep"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 21
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v7, "SpaceCapsuleCinema"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 25
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v9, "VipSeat"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 29
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v11, "Rescue"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 34
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v13, "ViceMeditation"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 38
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v15, "Normal"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    .line 42
    new-instance v15, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const-string v14, "UNKNOWN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

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

    .line 5
    sput-object v14, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromScenario(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "meditation_passenger_seat_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "meditation_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "normal_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "vipseat_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "spacecapsule_mode_sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "spacecapsule_mode_movie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "spacecapsule_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "trailed_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 78
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 56
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 53
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 74
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 68
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 62
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 65
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 59
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsule:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    .line 71
    :pswitch_7
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x73dd3383 -> :sswitch_7
        -0x393a7385 -> :sswitch_6
        -0x25a45994 -> :sswitch_5
        -0x255169ed -> :sswitch_4
        -0x14fdd7e0 -> :sswitch_3
        -0xf93d205 -> :sswitch_2
        0x34c16fe4 -> :sswitch_1
        0x522455d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    return-object v0
.end method


# virtual methods
.method public toScenarioStr()Ljava/lang/String;
    .locals 2

    .line 87
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown_mode"

    return-object v0

    :pswitch_0
    const-string v0, "normal_mode"

    return-object v0

    :pswitch_1
    const-string v0, "trailed_mode"

    return-object v0

    :pswitch_2
    const-string v0, "vipseat_mode"

    return-object v0

    :pswitch_3
    const-string v0, "spacecapsule_mode_movie"

    return-object v0

    :pswitch_4
    const-string v0, "spacecapsule_mode_sleep"

    return-object v0

    :pswitch_5
    const-string v0, "spacecapsule_mode"

    return-object v0

    :pswitch_6
    const-string v0, "meditation_passenger_seat_mode"

    return-object v0

    :pswitch_7
    const-string v0, "meditation_mode"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
