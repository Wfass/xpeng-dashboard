.class public abstract Lorg/jaudiotagger/tag/id3/AbstractTagItem;
.super Ljava/lang/Object;
.source "AbstractTagItem.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.tag.id3"

    .line 45
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTagItem;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_0
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;

    return p1
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getSize()I
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractTagItem;

    return p1
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)V
.end method
