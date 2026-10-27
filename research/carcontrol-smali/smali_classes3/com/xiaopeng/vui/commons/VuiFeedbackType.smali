.class public final enum Lcom/xiaopeng/vui/commons/VuiFeedbackType;
.super Ljava/lang/Enum;
.source "VuiFeedbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiFeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field public static final enum SOUND:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field public static final enum TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    const-string v1, "SOUND"

    const/4 v2, 0x0

    const-string v3, "Sound"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->SOUND:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 6
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    const-string v3, "TTS"

    const/4 v4, 0x1

    const-string v5, "Tts"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiFeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->type:Ljava/lang/String;

    return-object v0
.end method
