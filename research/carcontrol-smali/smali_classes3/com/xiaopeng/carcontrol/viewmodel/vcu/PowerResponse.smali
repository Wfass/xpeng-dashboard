.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;
.super Ljava/lang/Enum;
.source "PowerResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

.field public static final enum Fast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

.field public static final enum Intelligent:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

.field public static final enum Slow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

.field public static final enum Standard:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

.field public static final enum SuperFast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

.field public static final enum SuperSlow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const-string v1, "Standard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const-string v3, "Slow"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const-string v5, "Fast"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    .line 26
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const-string v7, "SuperSlow"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->SuperSlow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    .line 30
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const-string v9, "SuperFast"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->SuperFast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    .line 34
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const-string v11, "Intelligent"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Intelligent:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 9
    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

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

.method public static fromVcuState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;
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

    .line 60
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Intelligent:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0

    .line 57
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->SuperFast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0

    .line 54
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->SuperSlow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0

    .line 51
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0

    .line 48
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0

    .line 45
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    return-object v0
.end method


# virtual methods
.method public toVcuCmd()I
    .locals 3

    .line 72
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Power Response mode: "

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
