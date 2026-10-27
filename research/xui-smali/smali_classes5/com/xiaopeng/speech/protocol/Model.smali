.class public final enum Lcom/xiaopeng/speech/protocol/Model;
.super Ljava/lang/Enum;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/protocol/Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/protocol/Model;

.field public static final enum ANDROID_AUTO:Lcom/xiaopeng/speech/protocol/Model;

.field public static final enum CARPLAY:Lcom/xiaopeng/speech/protocol/Model;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/xiaopeng/speech/protocol/Model;

    const-string v1, "CARPLAY"

    const-string v2, "car_play"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/speech/protocol/Model;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/Model;->CARPLAY:Lcom/xiaopeng/speech/protocol/Model;

    .line 8
    new-instance v0, Lcom/xiaopeng/speech/protocol/Model;

    const-string v1, "ANDROID_AUTO"

    const-string v2, "android_auto"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/speech/protocol/Model;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/Model;->ANDROID_AUTO:Lcom/xiaopeng/speech/protocol/Model;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaopeng/speech/protocol/Model;

    sget-object v1, Lcom/xiaopeng/speech/protocol/Model;->CARPLAY:Lcom/xiaopeng/speech/protocol/Model;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/speech/protocol/Model;->ANDROID_AUTO:Lcom/xiaopeng/speech/protocol/Model;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/speech/protocol/Model;->$VALUES:[Lcom/xiaopeng/speech/protocol/Model;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "model"    # Ljava/lang/String;
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
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/Model;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/xiaopeng/speech/protocol/Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/Model;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/speech/protocol/Model;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/speech/protocol/Model;->$VALUES:[Lcom/xiaopeng/speech/protocol/Model;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/protocol/Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/protocol/Model;

    return-object v0
.end method
