.class public final enum Lcom/xiaopeng/speech/vui/model/VuiSceneState;
.super Ljava/lang/Enum;
.source "VuiSceneState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/vui/model/VuiSceneState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/vui/model/VuiSceneState;

.field public static final enum ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

.field public static final enum IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

.field public static final enum INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

.field public static final enum UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const/4 v1, 0x0

    const-string v2, "INIT"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    .line 5
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const/4 v2, 0x1

    const-string v3, "ACTIVE"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    .line 6
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const/4 v3, 0x2

    const-string v4, "UNACTIVE"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    .line 7
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const/4 v4, 0x3

    const-string v5, "IDLE"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    sget-object v5, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->$VALUES:[Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneState;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/vui/model/VuiSceneState;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->$VALUES:[Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/vui/model/VuiSceneState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    return-object v0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->state:I

    return v0
.end method
