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
    .locals 6

    .line 7
    new-instance v0, Lcom/xiaopeng/speech/protocol/Model;

    const-string v1, "CARPLAY"

    const/4 v2, 0x0

    const-string v3, "car_play"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/speech/protocol/Model;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/Model;->CARPLAY:Lcom/xiaopeng/speech/protocol/Model;

    .line 8
    new-instance v1, Lcom/xiaopeng/speech/protocol/Model;

    const-string v3, "ANDROID_AUTO"

    const/4 v4, 0x1

    const-string v5, "android_auto"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/speech/protocol/Model;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/speech/protocol/Model;->ANDROID_AUTO:Lcom/xiaopeng/speech/protocol/Model;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/speech/protocol/Model;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lcom/xiaopeng/speech/protocol/Model;->$VALUES:[Lcom/xiaopeng/speech/protocol/Model;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/Model;
    .locals 1

    .line 6
    const-class v0, Lcom/xiaopeng/speech/protocol/Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/protocol/Model;

    return-object p0
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
