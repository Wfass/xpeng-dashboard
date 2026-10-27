.class public final enum Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;
.super Ljava/lang/Enum;
.source "BizConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

.field public static final enum GET:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

.field public static final enum POST:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->GET:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    .line 15
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->POST:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->GET:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->POST:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;
    .locals 1

    .line 7
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->value:Ljava/lang/String;

    return-object v0
.end method
