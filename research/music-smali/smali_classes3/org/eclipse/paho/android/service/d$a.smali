.class public final enum Lorg/eclipse/paho/android/service/d$a;
.super Ljava/lang/Enum;
.source "MqttAndroidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/paho/android/service/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/paho/android/service/d$a;

.field public static final enum AUTO_ACK:Lorg/eclipse/paho/android/service/d$a;

.field public static final enum MANUAL_ACK:Lorg/eclipse/paho/android/service/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 97
    new-instance v0, Lorg/eclipse/paho/android/service/d$a;

    const/4 v1, 0x0

    const-string v2, "AUTO_ACK"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/android/service/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/d$a;->AUTO_ACK:Lorg/eclipse/paho/android/service/d$a;

    .line 103
    new-instance v0, Lorg/eclipse/paho/android/service/d$a;

    const/4 v2, 0x1

    const-string v3, "MANUAL_ACK"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/paho/android/service/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/d$a;->MANUAL_ACK:Lorg/eclipse/paho/android/service/d$a;

    const/4 v0, 0x2

    .line 92
    new-array v0, v0, [Lorg/eclipse/paho/android/service/d$a;

    sget-object v3, Lorg/eclipse/paho/android/service/d$a;->AUTO_ACK:Lorg/eclipse/paho/android/service/d$a;

    aput-object v3, v0, v1

    sget-object v1, Lorg/eclipse/paho/android/service/d$a;->MANUAL_ACK:Lorg/eclipse/paho/android/service/d$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/paho/android/service/d$a;->$VALUES:[Lorg/eclipse/paho/android/service/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/paho/android/service/d$a;
    .locals 1

    .line 92
    const-class v0, Lorg/eclipse/paho/android/service/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/paho/android/service/d$a;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/paho/android/service/d$a;
    .locals 1

    .line 92
    sget-object v0, Lorg/eclipse/paho/android/service/d$a;->$VALUES:[Lorg/eclipse/paho/android/service/d$a;

    invoke-virtual {v0}, [Lorg/eclipse/paho/android/service/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/paho/android/service/d$a;

    return-object v0
.end method
