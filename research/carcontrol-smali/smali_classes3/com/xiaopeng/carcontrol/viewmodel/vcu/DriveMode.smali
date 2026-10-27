.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
.super Ljava/lang/Enum;
.source "DriveMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum ComfortOff:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum EcoPlusOff:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

.field public static final enum Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v1, "Eco"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v3, "EcoPlus"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v5, "EcoPlusOff"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlusOff:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v7, "Comfort"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 29
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v9, "ComfortOff"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ComfortOff:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 33
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v11, "Sport"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 37
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v13, "Normal"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 41
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v15, "Adaptive"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 45
    new-instance v15, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v14, "OffRoad"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 49
    new-instance v14, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v12, "NoCommand"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 54
    new-instance v12, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v10, "Race"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 59
    new-instance v10, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v8, "Geek"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 64
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v6, "Xpower"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    .line 69
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const-string v4, "Individual"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 9
    sput-object v4, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
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

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 106
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 100
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 96
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 102
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 94
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 104
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 98
    :pswitch_7
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 92
    :pswitch_8
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ComfortOff:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 90
    :pswitch_9
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 88
    :pswitch_a
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlusOff:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 84
    :pswitch_b
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 86
    :pswitch_c
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 82
    :pswitch_d
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 80
    :pswitch_e
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static fromXsportDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 156
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0

    .line 154
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0
.end method

.method public static uiCodeToVcuCode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiCode"
        }
    .end annotation

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x12

    return p0

    :cond_1
    const/16 p0, 0xd

    return p0

    :cond_2
    const/16 p0, 0x11

    return p0

    :cond_3
    const/16 p0, 0xf

    return p0

    :cond_4
    const/16 p0, 0x10

    return p0

    :cond_5
    const/4 p0, 0x7

    return p0

    :cond_6
    const/4 p0, 0x2

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    return-object v0
.end method


# virtual methods
.method public toVcuCmd()I
    .locals 3

    .line 117
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown drive mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x12

    return v0

    :pswitch_1
    const/16 v0, 0xd

    return v0

    :pswitch_2
    const/16 v0, 0xf

    return v0

    :pswitch_3
    const/16 v0, 0x11

    return v0

    :pswitch_4
    const/16 v0, 0xc

    return v0

    :pswitch_5
    const/16 v0, 0x10

    return v0

    :pswitch_6
    const/16 v0, 0xe

    return v0

    :pswitch_7
    const/16 v0, 0x8

    return v0

    :pswitch_8
    const/4 v0, 0x7

    return v0

    :pswitch_9
    const/4 v0, 0x2

    return v0

    :pswitch_a
    const/4 v0, 0x6

    return v0

    :pswitch_b
    const/4 v0, 0x5

    return v0

    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_d
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
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
