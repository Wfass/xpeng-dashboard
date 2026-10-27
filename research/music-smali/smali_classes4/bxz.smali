.class public final enum Lbxz;
.super Ljava/lang/Enum;
.source "VuiFeedbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbxz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbxz;

.field public static final enum SOUND:Lbxz;

.field public static final enum TTS:Lbxz;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lbxz;

    const/4 v1, 0x0

    const-string v2, "SOUND"

    const-string v3, "Sound"

    invoke-direct {v0, v2, v1, v3}, Lbxz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxz;->SOUND:Lbxz;

    .line 6
    new-instance v0, Lbxz;

    const/4 v2, 0x1

    const-string v3, "TTS"

    const-string v4, "Tts"

    invoke-direct {v0, v3, v2, v4}, Lbxz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxz;->TTS:Lbxz;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lbxz;

    sget-object v3, Lbxz;->SOUND:Lbxz;

    aput-object v3, v0, v1

    sget-object v1, Lbxz;->TTS:Lbxz;

    aput-object v1, v0, v2

    sput-object v0, Lbxz;->$VALUES:[Lbxz;

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
    iput-object p3, p0, Lbxz;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbxz;
    .locals 1

    .line 3
    const-class v0, Lbxz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbxz;

    return-object p0
.end method

.method public static values()[Lbxz;
    .locals 1

    .line 3
    sget-object v0, Lbxz;->$VALUES:[Lbxz;

    invoke-virtual {v0}, [Lbxz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbxz;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lbxz;->type:Ljava/lang/String;

    return-object v0
.end method
