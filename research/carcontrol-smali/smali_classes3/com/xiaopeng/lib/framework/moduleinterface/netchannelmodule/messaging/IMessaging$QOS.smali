.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;
.super Ljava/lang/Enum;
.source "IMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QOS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

.field public static final enum LEVEL_0:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

.field public static final enum LEVEL_1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

.field public static final enum LEVEL_2:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    const-string v1, "LEVEL_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->LEVEL_0:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    .line 21
    new-instance v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    const-string v3, "LEVEL_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->LEVEL_1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    .line 25
    new-instance v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    const-string v5, "LEVEL_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->LEVEL_2:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 13
    sput-object v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$QOS;->value:I

    return v0
.end method
