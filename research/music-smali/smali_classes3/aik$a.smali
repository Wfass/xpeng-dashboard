.class final enum Laik$a;
.super Ljava/lang/Enum;
.source "PluginFactorySingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laik$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laik$a;

.field public static final enum DISABLED:Laik$a;

.field public static final enum ENABLED:Laik$a;

.field public static final enum NOT_SET:Laik$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Laik$a;

    const/4 v1, 0x0

    const-string v2, "NOT_SET"

    invoke-direct {v0, v2, v1}, Laik$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laik$a;->NOT_SET:Laik$a;

    new-instance v0, Laik$a;

    const/4 v2, 0x1

    const-string v3, "ENABLED"

    invoke-direct {v0, v3, v2}, Laik$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laik$a;->ENABLED:Laik$a;

    new-instance v0, Laik$a;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v0, v4, v3}, Laik$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laik$a;->DISABLED:Laik$a;

    const/4 v0, 0x3

    .line 62
    new-array v0, v0, [Laik$a;

    sget-object v4, Laik$a;->NOT_SET:Laik$a;

    aput-object v4, v0, v1

    sget-object v1, Laik$a;->ENABLED:Laik$a;

    aput-object v1, v0, v2

    sget-object v1, Laik$a;->DISABLED:Laik$a;

    aput-object v1, v0, v3

    sput-object v0, Laik$a;->$VALUES:[Laik$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laik$a;
    .locals 1

    .line 62
    const-class v0, Laik$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laik$a;

    return-object p0
.end method

.method public static values()[Laik$a;
    .locals 1

    .line 62
    sget-object v0, Laik$a;->$VALUES:[Laik$a;

    invoke-virtual {v0}, [Laik$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laik$a;

    return-object v0
.end method
