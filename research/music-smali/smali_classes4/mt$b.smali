.class public final enum Lmt$b;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmt$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmt$b;

.field public static final enum ADD:Lmt$b;

.field public static final enum INVERT:Lmt$b;

.field public static final enum LUMA:Lmt$b;

.field public static final enum LUMA_INVERTED:Lmt$b;

.field public static final enum NONE:Lmt$b;

.field public static final enum UNKNOWN:Lmt$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lmt$b;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lmt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$b;->NONE:Lmt$b;

    .line 33
    new-instance v0, Lmt$b;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2}, Lmt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$b;->ADD:Lmt$b;

    .line 34
    new-instance v0, Lmt$b;

    const/4 v3, 0x2

    const-string v4, "INVERT"

    invoke-direct {v0, v4, v3}, Lmt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$b;->INVERT:Lmt$b;

    .line 35
    new-instance v0, Lmt$b;

    const/4 v4, 0x3

    const-string v5, "LUMA"

    invoke-direct {v0, v5, v4}, Lmt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$b;->LUMA:Lmt$b;

    .line 36
    new-instance v0, Lmt$b;

    const/4 v5, 0x4

    const-string v6, "LUMA_INVERTED"

    invoke-direct {v0, v6, v5}, Lmt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$b;->LUMA_INVERTED:Lmt$b;

    .line 37
    new-instance v0, Lmt$b;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN"

    invoke-direct {v0, v7, v6}, Lmt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmt$b;->UNKNOWN:Lmt$b;

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Lmt$b;

    sget-object v7, Lmt$b;->NONE:Lmt$b;

    aput-object v7, v0, v1

    sget-object v1, Lmt$b;->ADD:Lmt$b;

    aput-object v1, v0, v2

    sget-object v1, Lmt$b;->INVERT:Lmt$b;

    aput-object v1, v0, v3

    sget-object v1, Lmt$b;->LUMA:Lmt$b;

    aput-object v1, v0, v4

    sget-object v1, Lmt$b;->LUMA_INVERTED:Lmt$b;

    aput-object v1, v0, v5

    sget-object v1, Lmt$b;->UNKNOWN:Lmt$b;

    aput-object v1, v0, v6

    sput-object v0, Lmt$b;->$VALUES:[Lmt$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmt$b;
    .locals 1

    .line 31
    const-class v0, Lmt$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmt$b;

    return-object p0
.end method

.method public static values()[Lmt$b;
    .locals 1

    .line 31
    sget-object v0, Lmt$b;->$VALUES:[Lmt$b;

    invoke-virtual {v0}, [Lmt$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmt$b;

    return-object v0
.end method
