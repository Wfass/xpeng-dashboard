.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;
.super Ljava/lang/Enum;
.source "ScuLssMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

.field public static final enum Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

.field public static final enum Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

.field public static final enum Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    .line 14
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    const-string v3, "Ldw"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    .line 18
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    const-string v5, "Lka"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    .line 22
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    const-string v7, "Unavailable"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    return-object v0
.end method


# virtual methods
.method public toDisplayIndex()I
    .locals 3

    .line 29
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuLssMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SCU LSS mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
