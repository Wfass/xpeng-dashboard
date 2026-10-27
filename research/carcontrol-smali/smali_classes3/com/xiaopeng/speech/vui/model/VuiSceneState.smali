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
    .locals 9

    .line 4
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    .line 5
    new-instance v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const-string v3, "ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    .line 6
    new-instance v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const-string v5, "UNACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->UNACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    .line 7
    new-instance v5, Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const-string v7, "IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->IDLE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->$VALUES:[Lcom/xiaopeng/speech/vui/model/VuiSceneState;

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
