.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;
.super Ljava/lang/Enum;
.source "CmsViewAngle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

.field public static final enum FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

.field public static final enum NO_COMMAND:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

.field public static final enum WIDE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->NO_COMMAND:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    .line 10
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    const-string v3, "FLAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    .line 13
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    const-string v5, "WIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->WIDE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 5
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

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

.method public static fromBcmViewAngle(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 23
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->WIDE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    return-object p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cms view angle"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    return-object p0

    .line 19
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->NO_COMMAND:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    return-object v0
.end method


# virtual methods
.method public toBcmViewAngle()I
    .locals 2

    .line 30
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$CmsViewAngle:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
