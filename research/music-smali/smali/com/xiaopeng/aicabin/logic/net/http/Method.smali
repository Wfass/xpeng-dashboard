.class public final enum Lcom/xiaopeng/aicabin/logic/net/http/Method;
.super Ljava/lang/Enum;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/aicabin/logic/net/http/Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/aicabin/logic/net/http/Method;

.field public static final enum GET:Lcom/xiaopeng/aicabin/logic/net/http/Method;

.field public static final enum POST:Lcom/xiaopeng/aicabin/logic/net/http/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;

    const/4 v1, 0x0

    const-string v2, "POST"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/aicabin/logic/net/http/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;->POST:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    new-instance v2, Lcom/xiaopeng/aicabin/logic/net/http/Method;

    const/4 v3, 0x1

    const-string v4, "GET"

    invoke-direct {v2, v4, v3}, Lcom/xiaopeng/aicabin/logic/net/http/Method;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/xiaopeng/aicabin/logic/net/http/Method;->GET:Lcom/xiaopeng/aicabin/logic/net/http/Method;

    const/4 v4, 0x2

    .line 2
    new-array v4, v4, [Lcom/xiaopeng/aicabin/logic/net/http/Method;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/xiaopeng/aicabin/logic/net/http/Method;->$VALUES:[Lcom/xiaopeng/aicabin/logic/net/http/Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/net/http/Method;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/logic/net/http/Method;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/aicabin/logic/net/http/Method;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/logic/net/http/Method;->$VALUES:[Lcom/xiaopeng/aicabin/logic/net/http/Method;

    invoke-virtual {v0}, [Lcom/xiaopeng/aicabin/logic/net/http/Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/aicabin/logic/net/http/Method;

    return-object v0
.end method
