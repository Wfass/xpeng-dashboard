.class final enum Lzipkin2/Endpoint$IpFamily;
.super Ljava/lang/Enum;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IpFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/Endpoint$IpFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/Endpoint$IpFamily;

.field public static final enum IPv4:Lzipkin2/Endpoint$IpFamily;

.field public static final enum IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

.field public static final enum IPv6:Lzipkin2/Endpoint$IpFamily;

.field public static final enum Unknown:Lzipkin2/Endpoint$IpFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 289
    new-instance v0, Lzipkin2/Endpoint$IpFamily;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/Endpoint$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    .line 290
    new-instance v1, Lzipkin2/Endpoint$IpFamily;

    const-string v3, "IPv4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzipkin2/Endpoint$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzipkin2/Endpoint$IpFamily;->IPv4:Lzipkin2/Endpoint$IpFamily;

    .line 291
    new-instance v3, Lzipkin2/Endpoint$IpFamily;

    const-string v5, "IPv4Embedded"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzipkin2/Endpoint$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzipkin2/Endpoint$IpFamily;->IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

    .line 292
    new-instance v5, Lzipkin2/Endpoint$IpFamily;

    const-string v7, "IPv6"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzipkin2/Endpoint$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzipkin2/Endpoint$IpFamily;->IPv6:Lzipkin2/Endpoint$IpFamily;

    const/4 v7, 0x4

    new-array v7, v7, [Lzipkin2/Endpoint$IpFamily;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 288
    sput-object v7, Lzipkin2/Endpoint$IpFamily;->$VALUES:[Lzipkin2/Endpoint$IpFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/Endpoint$IpFamily;
    .locals 1

    .line 288
    const-class v0, Lzipkin2/Endpoint$IpFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/Endpoint$IpFamily;

    return-object p0
.end method

.method public static values()[Lzipkin2/Endpoint$IpFamily;
    .locals 1

    .line 288
    sget-object v0, Lzipkin2/Endpoint$IpFamily;->$VALUES:[Lzipkin2/Endpoint$IpFamily;

    invoke-virtual {v0}, [Lzipkin2/Endpoint$IpFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/Endpoint$IpFamily;

    return-object v0
.end method
