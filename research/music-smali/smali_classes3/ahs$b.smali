.class public final enum Lahs$b;
.super Ljava/lang/Enum;
.source "ImageBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lahs$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lahs$b;

.field public static final enum BACKGROUND:Lahs$b;

.field public static final enum FOREGROUND:Lahs$b;

.field public static final enum NONE:Lahs$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lahs$b;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lahs$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs$b;->NONE:Lahs$b;

    .line 48
    new-instance v0, Lahs$b;

    const/4 v2, 0x1

    const-string v3, "FOREGROUND"

    invoke-direct {v0, v3, v2}, Lahs$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs$b;->FOREGROUND:Lahs$b;

    .line 50
    new-instance v0, Lahs$b;

    const/4 v3, 0x2

    const-string v4, "BACKGROUND"

    invoke-direct {v0, v4, v3}, Lahs$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahs$b;->BACKGROUND:Lahs$b;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Lahs$b;

    sget-object v4, Lahs$b;->NONE:Lahs$b;

    aput-object v4, v0, v1

    sget-object v1, Lahs$b;->FOREGROUND:Lahs$b;

    aput-object v1, v0, v2

    sget-object v1, Lahs$b;->BACKGROUND:Lahs$b;

    aput-object v1, v0, v3

    sput-object v0, Lahs$b;->$VALUES:[Lahs$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lahs$b;
    .locals 1

    .line 44
    const-class v0, Lahs$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lahs$b;

    return-object p0
.end method

.method public static values()[Lahs$b;
    .locals 1

    .line 44
    sget-object v0, Lahs$b;->$VALUES:[Lahs$b;

    invoke-virtual {v0}, [Lahs$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lahs$b;

    return-object v0
.end method
