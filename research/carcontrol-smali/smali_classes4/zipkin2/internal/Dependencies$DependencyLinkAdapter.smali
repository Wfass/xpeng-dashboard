.class final Lzipkin2/internal/Dependencies$DependencyLinkAdapter;
.super Ljava/lang/Object;
.source "Dependencies.java"

# interfaces
.implements Lzipkin2/internal/Buffer$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DependencyLinkAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/Buffer$Writer<",
        "Lzipkin2/DependencyLink;",
        ">;"
    }
.end annotation


# static fields
.field static final CALL_COUNT:Lzipkin2/internal/ThriftField;

.field static final CHILD:Lzipkin2/internal/ThriftField;

.field static final ERROR_COUNT:Lzipkin2/internal/ThriftField;

.field static final PARENT:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->PARENT:Lzipkin2/internal/ThriftField;

    .line 141
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->CHILD:Lzipkin2/internal/ThriftField;

    .line 142
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xa

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->CALL_COUNT:Lzipkin2/internal/ThriftField;

    .line 143
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->ERROR_COUNT:Lzipkin2/internal/ThriftField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Ljava/nio/ByteBuffer;)Lzipkin2/DependencyLink;
    .locals 3

    .line 146
    invoke-static {}, Lzipkin2/DependencyLink;->newBuilder()Lzipkin2/DependencyLink$Builder;

    move-result-object v0

    .line 150
    :goto_0
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v1

    .line 151
    iget-byte v2, v1, Lzipkin2/internal/ThriftField;->type:B

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v0}, Lzipkin2/DependencyLink$Builder;->build()Lzipkin2/DependencyLink;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    sget-object v2, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->PARENT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/DependencyLink$Builder;->parent(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    .line 155
    :cond_1
    sget-object v2, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->CHILD:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/DependencyLink$Builder;->child(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    .line 157
    :cond_2
    sget-object v2, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->CALL_COUNT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/DependencyLink$Builder;->callCount(J)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    .line 159
    :cond_3
    sget-object v2, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->ERROR_COUNT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/DependencyLink$Builder;->errorCount(J)Lzipkin2/DependencyLink$Builder;

    goto :goto_0

    .line 162
    :cond_4
    iget-byte v1, v1, Lzipkin2/internal/ThriftField;->type:B

    invoke-static {p0, v1}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;B)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 138
    check-cast p1, Lzipkin2/DependencyLink;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->sizeInBytes(Lzipkin2/DependencyLink;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/DependencyLink;)I
    .locals 5

    .line 172
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->parent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x0

    .line 173
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->child()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    .line 175
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0xb

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 138
    check-cast p1, Lzipkin2/DependencyLink;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->write(Lzipkin2/DependencyLink;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/DependencyLink;Lzipkin2/internal/Buffer;)V
    .locals 4

    .line 182
    sget-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->PARENT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 183
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->parent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lzipkin2/internal/ThriftCodec;->writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->CHILD:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 186
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->child()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lzipkin2/internal/ThriftCodec;->writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->CALL_COUNT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 189
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->callCount()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 191
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 192
    sget-object v0, Lzipkin2/internal/Dependencies$DependencyLinkAdapter;->ERROR_COUNT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 193
    invoke-virtual {p1}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    :cond_0
    const/4 p1, 0x0

    .line 196
    invoke-virtual {p2, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method
