.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
.super Ljava/lang/Enum;
.source "LightMeHomeTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

.field public static final enum Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

.field public static final enum Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

.field public static final enum Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    .line 18
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    const-string v3, "Time15s"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    .line 22
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    const-string v5, "Time30s"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    .line 26
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    const-string v7, "Time60s"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeValue"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 47
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 40
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 37
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0
.end method

.method public static fromLightMeHomeTime(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeValue"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    return p0

    :cond_0
    const/16 p0, 0x3c

    return p0

    :cond_1
    const/16 p0, 0x1e

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static fromTime(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 104
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 102
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0
.end method

.method public static getIndexValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 86
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 84
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0

    .line 82
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 10
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
    .locals 1

    .line 10
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object v0
.end method


# virtual methods
.method public toBcmCmd()I
    .locals 3

    .line 56
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->ordinal()I

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

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown light me home time mode: "

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
