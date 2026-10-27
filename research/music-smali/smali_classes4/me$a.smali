.class public final enum Lme$a;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme$a;

.field public static final enum MASK_MODE_ADD:Lme$a;

.field public static final enum MASK_MODE_INTERSECT:Lme$a;

.field public static final enum MASK_MODE_NONE:Lme$a;

.field public static final enum MASK_MODE_SUBTRACT:Lme$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lme$a;

    const/4 v1, 0x0

    const-string v2, "MASK_MODE_ADD"

    invoke-direct {v0, v2, v1}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme$a;->MASK_MODE_ADD:Lme$a;

    .line 9
    new-instance v0, Lme$a;

    const/4 v2, 0x1

    const-string v3, "MASK_MODE_SUBTRACT"

    invoke-direct {v0, v3, v2}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme$a;->MASK_MODE_SUBTRACT:Lme$a;

    .line 10
    new-instance v0, Lme$a;

    const/4 v3, 0x2

    const-string v4, "MASK_MODE_INTERSECT"

    invoke-direct {v0, v4, v3}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme$a;->MASK_MODE_INTERSECT:Lme$a;

    .line 11
    new-instance v0, Lme$a;

    const/4 v4, 0x3

    const-string v5, "MASK_MODE_NONE"

    invoke-direct {v0, v5, v4}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme$a;->MASK_MODE_NONE:Lme$a;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lme$a;

    sget-object v5, Lme$a;->MASK_MODE_ADD:Lme$a;

    aput-object v5, v0, v1

    sget-object v1, Lme$a;->MASK_MODE_SUBTRACT:Lme$a;

    aput-object v1, v0, v2

    sget-object v1, Lme$a;->MASK_MODE_INTERSECT:Lme$a;

    aput-object v1, v0, v3

    sget-object v1, Lme$a;->MASK_MODE_NONE:Lme$a;

    aput-object v1, v0, v4

    sput-object v0, Lme$a;->$VALUES:[Lme$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme$a;
    .locals 1

    .line 7
    const-class v0, Lme$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme$a;

    return-object p0
.end method

.method public static values()[Lme$a;
    .locals 1

    .line 7
    sget-object v0, Lme$a;->$VALUES:[Lme$a;

    invoke-virtual {v0}, [Lme$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme$a;

    return-object v0
.end method
