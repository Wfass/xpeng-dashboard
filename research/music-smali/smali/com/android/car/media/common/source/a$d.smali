.class public final enum Lcom/android/car/media/common/source/a$d;
.super Ljava/lang/Enum;
.source "MediaBrowserConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/source/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/media/common/source/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/media/common/source/a$d;

.field public static final enum CONNECTED:Lcom/android/car/media/common/source/a$d;

.field public static final enum CONNECTING:Lcom/android/car/media/common/source/a$d;

.field public static final enum DISCONNECTING:Lcom/android/car/media/common/source/a$d;

.field public static final enum REJECTED:Lcom/android/car/media/common/source/a$d;

.field public static final enum SUSPENDED:Lcom/android/car/media/common/source/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Lcom/android/car/media/common/source/a$d;

    const/4 v1, 0x0

    const-string v2, "CONNECTING"

    invoke-direct {v0, v2, v1}, Lcom/android/car/media/common/source/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/media/common/source/a$d;->CONNECTING:Lcom/android/car/media/common/source/a$d;

    .line 61
    new-instance v0, Lcom/android/car/media/common/source/a$d;

    const/4 v2, 0x1

    const-string v3, "CONNECTED"

    invoke-direct {v0, v3, v2}, Lcom/android/car/media/common/source/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/media/common/source/a$d;->CONNECTED:Lcom/android/car/media/common/source/a$d;

    .line 68
    new-instance v0, Lcom/android/car/media/common/source/a$d;

    const/4 v3, 0x2

    const-string v4, "REJECTED"

    invoke-direct {v0, v4, v3}, Lcom/android/car/media/common/source/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/media/common/source/a$d;->REJECTED:Lcom/android/car/media/common/source/a$d;

    .line 75
    new-instance v0, Lcom/android/car/media/common/source/a$d;

    const/4 v4, 0x3

    const-string v5, "SUSPENDED"

    invoke-direct {v0, v5, v4}, Lcom/android/car/media/common/source/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/media/common/source/a$d;->SUSPENDED:Lcom/android/car/media/common/source/a$d;

    .line 82
    new-instance v0, Lcom/android/car/media/common/source/a$d;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTING"

    invoke-direct {v0, v6, v5}, Lcom/android/car/media/common/source/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/media/common/source/a$d;->DISCONNECTING:Lcom/android/car/media/common/source/a$d;

    const/4 v0, 0x5

    .line 50
    new-array v0, v0, [Lcom/android/car/media/common/source/a$d;

    sget-object v6, Lcom/android/car/media/common/source/a$d;->CONNECTING:Lcom/android/car/media/common/source/a$d;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/car/media/common/source/a$d;->CONNECTED:Lcom/android/car/media/common/source/a$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/media/common/source/a$d;->REJECTED:Lcom/android/car/media/common/source/a$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/car/media/common/source/a$d;->SUSPENDED:Lcom/android/car/media/common/source/a$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/car/media/common/source/a$d;->DISCONNECTING:Lcom/android/car/media/common/source/a$d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/car/media/common/source/a$d;->$VALUES:[Lcom/android/car/media/common/source/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/media/common/source/a$d;
    .locals 1

    .line 50
    const-class v0, Lcom/android/car/media/common/source/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/media/common/source/a$d;

    return-object p0
.end method

.method public static values()[Lcom/android/car/media/common/source/a$d;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/car/media/common/source/a$d;->$VALUES:[Lcom/android/car/media/common/source/a$d;

    invoke-virtual {v0}, [Lcom/android/car/media/common/source/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/media/common/source/a$d;

    return-object v0
.end method
