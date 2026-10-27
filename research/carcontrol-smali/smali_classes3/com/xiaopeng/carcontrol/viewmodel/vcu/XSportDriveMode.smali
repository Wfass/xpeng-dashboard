.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;
.super Ljava/lang/Enum;
.source "XSportDriveMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

.field public static final enum AI:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

.field public static final enum Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

.field public static final enum NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

.field public static final enum Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

.field public static final enum XPower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    const-string v1, "NoCommand"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    .line 19
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    const-string v3, "XPower"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->XPower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    .line 23
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    const-string v5, "Geek"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    .line 28
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    const-string v7, "AI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->AI:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    .line 32
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    const-string v9, "Race"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 11
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromVcuState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->XPower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object p0

    .line 50
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->AI:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object p0

    .line 47
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object p0

    .line 56
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;
    .locals 1

    .line 11
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    return-object v0
.end method


# virtual methods
.method public toVcuCmd()I
    .locals 4

    .line 68
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown XSport DriveMode mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    return v3

    :cond_3
    return v2

    :cond_4
    return v1
.end method
