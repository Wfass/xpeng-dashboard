.class public final enum Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;
.super Ljava/lang/Enum;
.source "StatefulButtonConstructorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConstructorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

.field public static final enum SEAT_AIR:Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

.field public static final enum SEAT_HOT:Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    const-string v1, "SEAT_AIR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->SEAT_AIR:Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    const-string v3, "SEAT_HOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->SEAT_HOT:Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->$VALUES:[Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    const-class v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->$VALUES:[Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;

    return-object v0
.end method
