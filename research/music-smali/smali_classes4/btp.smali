.class public final enum Lbtp;
.super Ljava/lang/Enum;
.source "LinkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbtp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbtp;

.field public static final enum LINK_TYPE:Lbtp;

.field public static final enum MENTION_TYPE:Lbtp;

.field public static final enum SELF:Lbtp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lbtp;

    const/4 v1, 0x0

    const-string v2, "LINK_TYPE"

    invoke-direct {v0, v2, v1}, Lbtp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtp;->LINK_TYPE:Lbtp;

    .line 8
    new-instance v0, Lbtp;

    const/4 v2, 0x1

    const-string v3, "MENTION_TYPE"

    invoke-direct {v0, v3, v2}, Lbtp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtp;->MENTION_TYPE:Lbtp;

    .line 10
    new-instance v0, Lbtp;

    const/4 v3, 0x2

    const-string v4, "SELF"

    invoke-direct {v0, v4, v3}, Lbtp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtp;->SELF:Lbtp;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lbtp;

    sget-object v4, Lbtp;->LINK_TYPE:Lbtp;

    aput-object v4, v0, v1

    sget-object v1, Lbtp;->MENTION_TYPE:Lbtp;

    aput-object v1, v0, v2

    sget-object v1, Lbtp;->SELF:Lbtp;

    aput-object v1, v0, v3

    sput-object v0, Lbtp;->$VALUES:[Lbtp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbtp;
    .locals 1

    .line 4
    const-class v0, Lbtp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbtp;

    return-object p0
.end method

.method public static values()[Lbtp;
    .locals 1

    .line 4
    sget-object v0, Lbtp;->$VALUES:[Lbtp;

    invoke-virtual {v0}, [Lbtp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtp;

    return-object v0
.end method
