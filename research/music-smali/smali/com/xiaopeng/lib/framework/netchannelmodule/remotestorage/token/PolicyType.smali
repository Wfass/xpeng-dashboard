.class public final enum Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;
.super Ljava/lang/Enum;
.source "PolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

.field public static final enum BOTH:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

.field public static final enum GET:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

.field public static final enum PUT:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    const/4 v1, 0x0

    const-string v2, "GET"

    const-string v3, "R"

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->GET:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    .line 11
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    const/4 v2, 0x1

    const-string v3, "PUT"

    const-string v4, "W"

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->PUT:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    .line 13
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    const/4 v3, 0x2

    const-string v4, "BOTH"

    const-string v5, "RW"

    invoke-direct {v0, v4, v3, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->BOTH:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->GET:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->PUT:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->BOTH:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;
    .locals 1

    .line 7
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->value:Ljava/lang/String;

    return-object v0
.end method
