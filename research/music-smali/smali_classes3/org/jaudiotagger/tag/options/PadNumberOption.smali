.class public final enum Lorg/jaudiotagger/tag/options/PadNumberOption;
.super Ljava/lang/Enum;
.source "PadNumberOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/options/PadNumberOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/options/PadNumberOption;

.field public static final enum PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

.field public static final enum PAD_THREE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

.field public static final enum PAD_TWO_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lorg/jaudiotagger/tag/options/PadNumberOption;

    const/4 v1, 0x0

    const-string v2, "PAD_ONE_ZERO"

    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/options/PadNumberOption;

    const/4 v2, 0x1

    const-string v3, "PAD_TWO_ZERO"

    invoke-direct {v0, v3, v2}, Lorg/jaudiotagger/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    .line 16
    new-instance v0, Lorg/jaudiotagger/tag/options/PadNumberOption;

    const/4 v3, 0x2

    const-string v4, "PAD_THREE_ZERO"

    invoke-direct {v0, v4, v3}, Lorg/jaudiotagger/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lorg/jaudiotagger/tag/options/PadNumberOption;

    sget-object v4, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->$VALUES:[Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/options/PadNumberOption;
    .locals 1

    .line 12
    const-class v0, Lorg/jaudiotagger/tag/options/PadNumberOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/options/PadNumberOption;
    .locals 1

    .line 12
    sget-object v0, Lorg/jaudiotagger/tag/options/PadNumberOption;->$VALUES:[Lorg/jaudiotagger/tag/options/PadNumberOption;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/options/PadNumberOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-object v0
.end method
