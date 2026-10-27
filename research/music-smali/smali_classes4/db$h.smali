.class final enum Ldb$h;
.super Ljava/lang/Enum;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldb$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldb$h;

.field public static final enum FINISHED:Ldb$h;

.field public static final enum MOVING:Ldb$h;

.field public static final enum SETUP:Ldb$h;

.field public static final enum UNDEFINED:Ldb$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1108
    new-instance v0, Ldb$h;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldb$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb$h;->UNDEFINED:Ldb$h;

    .line 1109
    new-instance v0, Ldb$h;

    const-string v1, "SETUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldb$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb$h;->SETUP:Ldb$h;

    .line 1110
    new-instance v0, Ldb$h;

    const-string v1, "MOVING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ldb$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb$h;->MOVING:Ldb$h;

    .line 1111
    new-instance v0, Ldb$h;

    const-string v1, "FINISHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ldb$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb$h;->FINISHED:Ldb$h;

    .line 1107
    invoke-static {}, Ldb$h;->a()[Ldb$h;

    move-result-object v0

    sput-object v0, Ldb$h;->$VALUES:[Ldb$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Ldb$h;
    .locals 3

    const/4 v0, 0x4

    .line 1107
    new-array v0, v0, [Ldb$h;

    sget-object v1, Ldb$h;->UNDEFINED:Ldb$h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ldb$h;->SETUP:Ldb$h;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ldb$h;->MOVING:Ldb$h;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ldb$h;->FINISHED:Ldb$h;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldb$h;
    .locals 1

    .line 1107
    const-class v0, Ldb$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldb$h;

    return-object p0
.end method

.method public static values()[Ldb$h;
    .locals 1

    .line 1107
    sget-object v0, Ldb$h;->$VALUES:[Ldb$h;

    invoke-virtual {v0}, [Ldb$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldb$h;

    return-object v0
.end method
