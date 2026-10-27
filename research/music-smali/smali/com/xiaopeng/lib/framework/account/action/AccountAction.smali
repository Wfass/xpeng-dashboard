.class public final enum Lcom/xiaopeng/lib/framework/account/action/AccountAction;
.super Ljava/lang/Enum;
.source "AccountAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/account/action/AccountAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/account/action/AccountAction;

.field public static final enum LOGOUT:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

.field public static final enum NONE:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

.field public static final enum QR_LOGIN:Lcom/xiaopeng/lib/framework/account/action/AccountAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    const/4 v1, 0x0

    const-string v2, "QR_LOGIN"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->QR_LOGIN:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    .line 12
    new-instance v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    const/4 v2, 0x1

    const-string v3, "LOGOUT"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->LOGOUT:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    .line 14
    new-instance v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->NONE:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    sget-object v4, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->QR_LOGIN:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->LOGOUT:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->NONE:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->$VALUES:[Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/account/action/AccountAction;
    .locals 1

    .line 8
    const-class v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/account/action/AccountAction;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->$VALUES:[Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/account/action/AccountAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    return-object v0
.end method
