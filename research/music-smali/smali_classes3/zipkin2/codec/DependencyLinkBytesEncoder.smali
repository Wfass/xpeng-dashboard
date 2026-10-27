.class public abstract enum Lzipkin2/codec/DependencyLinkBytesEncoder;
.super Ljava/lang/Enum;
.source "DependencyLinkBytesEncoder.java"

# interfaces
.implements Lzipkin2/codec/BytesEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/codec/DependencyLinkBytesEncoder;",
        ">;",
        "Lzipkin2/codec/BytesEncoder<",
        "Lzipkin2/DependencyLink;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/codec/DependencyLinkBytesEncoder;

.field public static final enum JSON_V1:Lzipkin2/codec/DependencyLinkBytesEncoder;

.field static final a:Lzipkin2/internal/Buffer$Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/internal/Buffer$Writer<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lzipkin2/codec/DependencyLinkBytesEncoder$1;

    const/4 v1, 0x0

    const-string v2, "JSON_V1"

    invoke-direct {v0, v2, v1}, Lzipkin2/codec/DependencyLinkBytesEncoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/DependencyLinkBytesEncoder;->JSON_V1:Lzipkin2/codec/DependencyLinkBytesEncoder;

    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Lzipkin2/codec/DependencyLinkBytesEncoder;

    sget-object v2, Lzipkin2/codec/DependencyLinkBytesEncoder;->JSON_V1:Lzipkin2/codec/DependencyLinkBytesEncoder;

    aput-object v2, v0, v1

    sput-object v0, Lzipkin2/codec/DependencyLinkBytesEncoder;->$VALUES:[Lzipkin2/codec/DependencyLinkBytesEncoder;

    .line 44
    new-instance v0, Lzipkin2/codec/DependencyLinkBytesEncoder$2;

    invoke-direct {v0}, Lzipkin2/codec/DependencyLinkBytesEncoder$2;-><init>()V

    sput-object v0, Lzipkin2/codec/DependencyLinkBytesEncoder;->a:Lzipkin2/internal/Buffer$Writer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/codec/DependencyLinkBytesEncoder$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lzipkin2/codec/DependencyLinkBytesEncoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/codec/DependencyLinkBytesEncoder;
    .locals 1

    .line 25
    const-class v0, Lzipkin2/codec/DependencyLinkBytesEncoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/codec/DependencyLinkBytesEncoder;

    return-object p0
.end method

.method public static values()[Lzipkin2/codec/DependencyLinkBytesEncoder;
    .locals 1

    .line 25
    sget-object v0, Lzipkin2/codec/DependencyLinkBytesEncoder;->$VALUES:[Lzipkin2/codec/DependencyLinkBytesEncoder;

    invoke-virtual {v0}, [Lzipkin2/codec/DependencyLinkBytesEncoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/codec/DependencyLinkBytesEncoder;

    return-object v0
.end method
