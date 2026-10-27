.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum LL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum LR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum RL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum RR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field public static final enum RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v1, "LL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 5
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v3, "LR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 6
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v5, "LU"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 7
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v7, "LD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 8
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v9, "RL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 9
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v11, "RR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 10
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v13, "RU"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 11
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const-string v15, "RD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 3
    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0
.end method


# virtual methods
.method public isLeft()Z
    .locals 3

    .line 14
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$strategy$Direction:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public opposite()Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;
    .locals 2

    .line 30
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$strategy$Direction:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 33
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 31
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->LR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 38
    :pswitch_4
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RU:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 37
    :pswitch_5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RD:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RL:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    .line 35
    :pswitch_7
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;->RR:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object v0

    nop

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
