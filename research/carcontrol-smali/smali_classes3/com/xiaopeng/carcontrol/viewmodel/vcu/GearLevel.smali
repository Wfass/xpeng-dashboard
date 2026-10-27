.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;
.super Ljava/lang/Enum;
.source "GearLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

.field public static final enum D:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

.field public static final enum Invalid:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

.field public static final enum N:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

.field public static final enum P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

.field public static final enum R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->Invalid:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const-string v3, "D"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->D:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const-string v5, "N"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->N:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    .line 24
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const-string v7, "R"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    .line 28
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const-string v9, "P"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 8
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

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

.method public static fromVcuGearLevel(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;
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

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 50
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->Invalid:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object p0

    .line 41
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->N:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object p0

    .line 38
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->D:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    return-object v0
.end method
