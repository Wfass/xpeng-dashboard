.class public final enum Lbtq;
.super Ljava/lang/Enum;
.source "StatusType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbtq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbtq;

.field public static final enum STATUS_CONTRACT:Lbtq;

.field public static final enum STATUS_EXPAND:Lbtq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lbtq;

    const/4 v1, 0x0

    const-string v2, "STATUS_EXPAND"

    invoke-direct {v0, v2, v1}, Lbtq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtq;->STATUS_EXPAND:Lbtq;

    .line 13
    new-instance v0, Lbtq;

    const/4 v2, 0x1

    const-string v3, "STATUS_CONTRACT"

    invoke-direct {v0, v3, v2}, Lbtq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtq;->STATUS_CONTRACT:Lbtq;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lbtq;

    sget-object v3, Lbtq;->STATUS_EXPAND:Lbtq;

    aput-object v3, v0, v1

    sget-object v1, Lbtq;->STATUS_CONTRACT:Lbtq;

    aput-object v1, v0, v2

    sput-object v0, Lbtq;->$VALUES:[Lbtq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbtq;
    .locals 1

    .line 9
    const-class v0, Lbtq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbtq;

    return-object p0
.end method

.method public static values()[Lbtq;
    .locals 1

    .line 9
    sget-object v0, Lbtq;->$VALUES:[Lbtq;

    invoke-virtual {v0}, [Lbtq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtq;

    return-object v0
.end method
