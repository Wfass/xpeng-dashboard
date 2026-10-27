.class public final enum Lbyc;
.super Ljava/lang/Enum;
.source "VuiUpdateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbyc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbyc;

.field public static final enum UPDATE_VIEW:Lbyc;

.field public static final enum UPDATE_VIEW_ATTRIBUTE:Lbyc;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lbyc;

    const/4 v1, 0x0

    const-string v2, "UPDATE_VIEW"

    const-string v3, "view"

    invoke-direct {v0, v2, v1, v3}, Lbyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbyc;->UPDATE_VIEW:Lbyc;

    .line 6
    new-instance v0, Lbyc;

    const/4 v2, 0x1

    const-string v3, "UPDATE_VIEW_ATTRIBUTE"

    const-string v4, "attribute"

    invoke-direct {v0, v3, v2, v4}, Lbyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbyc;->UPDATE_VIEW_ATTRIBUTE:Lbyc;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lbyc;

    sget-object v3, Lbyc;->UPDATE_VIEW:Lbyc;

    aput-object v3, v0, v1

    sget-object v1, Lbyc;->UPDATE_VIEW_ATTRIBUTE:Lbyc;

    aput-object v1, v0, v2

    sput-object v0, Lbyc;->$VALUES:[Lbyc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lbyc;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbyc;
    .locals 1

    .line 3
    const-class v0, Lbyc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbyc;

    return-object p0
.end method

.method public static values()[Lbyc;
    .locals 1

    .line 3
    sget-object v0, Lbyc;->$VALUES:[Lbyc;

    invoke-virtual {v0}, [Lbyc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbyc;

    return-object v0
.end method
