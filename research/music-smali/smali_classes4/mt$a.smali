.class public final enum Lmt$a;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmt$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmt$a;

.field public static final enum IMAGE:Lmt$a;

.field public static final enum NULL:Lmt$a;

.field public static final enum PRE_COMP:Lmt$a;

.field public static final enum SHAPE:Lmt$a;

.field public static final enum SOLID:Lmt$a;

.field public static final enum TEXT:Lmt$a;

.field public static final enum UNKNOWN:Lmt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lmt$a;

    const/4 v1, 0x0

    const-string v2, "PRE_COMP"

    invoke-direct {v0, v2, v1}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->PRE_COMP:Lmt$a;

    .line 23
    new-instance v0, Lmt$a;

    const/4 v2, 0x1

    const-string v3, "SOLID"

    invoke-direct {v0, v3, v2}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->SOLID:Lmt$a;

    .line 24
    new-instance v0, Lmt$a;

    const/4 v3, 0x2

    const-string v4, "IMAGE"

    invoke-direct {v0, v4, v3}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->IMAGE:Lmt$a;

    .line 25
    new-instance v0, Lmt$a;

    const/4 v4, 0x3

    const-string v5, "NULL"

    invoke-direct {v0, v5, v4}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->NULL:Lmt$a;

    .line 26
    new-instance v0, Lmt$a;

    const/4 v5, 0x4

    const-string v6, "SHAPE"

    invoke-direct {v0, v6, v5}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->SHAPE:Lmt$a;

    .line 27
    new-instance v0, Lmt$a;

    const/4 v6, 0x5

    const-string v7, "TEXT"

    invoke-direct {v0, v7, v6}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->TEXT:Lmt$a;

    .line 28
    new-instance v0, Lmt$a;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN"

    invoke-direct {v0, v8, v7}, Lmt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$a;->UNKNOWN:Lmt$a;

    const/4 v0, 0x7

    .line 21
    new-array v0, v0, [Lmt$a;

    sget-object v8, Lmt$a;->PRE_COMP:Lmt$a;

    aput-object v8, v0, v1

    sget-object v1, Lmt$a;->SOLID:Lmt$a;

    aput-object v1, v0, v2

    sget-object v1, Lmt$a;->IMAGE:Lmt$a;

    aput-object v1, v0, v3

    sget-object v1, Lmt$a;->NULL:Lmt$a;

    aput-object v1, v0, v4

    sget-object v1, Lmt$a;->SHAPE:Lmt$a;

    aput-object v1, v0, v5

    sget-object v1, Lmt$a;->TEXT:Lmt$a;

    aput-object v1, v0, v6

    sget-object v1, Lmt$a;->UNKNOWN:Lmt$a;

    aput-object v1, v0, v7

    sput-object v0, Lmt$a;->$VALUES:[Lmt$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmt$a;
    .locals 1

    .line 21
    const-class v0, Lmt$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmt$a;

    return-object p0
.end method

.method public static values()[Lmt$a;
    .locals 1

    .line 21
    sget-object v0, Lmt$a;->$VALUES:[Lmt$a;

    invoke-virtual {v0}, [Lmt$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmt$a;

    return-object v0
.end method
