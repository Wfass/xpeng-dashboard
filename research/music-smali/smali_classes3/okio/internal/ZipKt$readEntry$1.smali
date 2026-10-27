.class final Lokio/internal/ZipKt$readEntry$1;
.super Lccg;
.source "zip.kt"

# interfaces
.implements Lcbd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccg;",
        "Lcbd<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lkotlin/w;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $compressedSize:Lcch$c;

.field final synthetic $hasZip64Extra:Lcch$a;

.field final synthetic $offset:Lcch$c;

.field final synthetic $requiredZip64ExtraSize:J

.field final synthetic $size:Lcch$c;

.field final synthetic $this_readEntry:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lcch$a;JLcch$c;Lokio/BufferedSource;Lcch$c;Lcch$c;)V
    .locals 0

    iput-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$hasZip64Extra:Lcch$a;

    iput-wide p2, p0, Lokio/internal/ZipKt$readEntry$1;->$requiredZip64ExtraSize:J

    iput-object p4, p0, Lokio/internal/ZipKt$readEntry$1;->$size:Lcch$c;

    iput-object p5, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    iput-object p6, p0, Lokio/internal/ZipKt$readEntry$1;->$compressedSize:Lcch$c;

    iput-object p7, p0, Lokio/internal/ZipKt$readEntry$1;->$offset:Lcch$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lccg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 242
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipKt$readEntry$1;->invoke(IJ)V

    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    return-object p1
.end method

.method public final invoke(IJ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 245
    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$hasZip64Extra:Lcch$a;

    iget-boolean p1, p1, Lcch$a;->element:Z

    if-nez p1, :cond_4

    .line 248
    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$hasZip64Extra:Lcch$a;

    iput-boolean v0, p1, Lcch$a;->element:Z

    .line 250
    iget-wide v0, p0, Lokio/internal/ZipKt$readEntry$1;->$requiredZip64ExtraSize:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    .line 255
    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$size:Lcch$c;

    iget-wide p2, p1, Lcch$c;->element:J

    const-wide v0, 0xffffffffL

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$size:Lcch$c;

    iget-wide p2, p2, Lcch$c;->element:J

    :goto_0
    iput-wide p2, p1, Lcch$c;->element:J

    .line 256
    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$compressedSize:Lcch$c;

    iget-wide p2, p1, Lcch$c;->element:J

    cmp-long p2, p2, v0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_1

    :cond_1
    move-wide p2, v2

    :goto_1
    iput-wide p2, p1, Lcch$c;->element:J

    .line 257
    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$offset:Lcch$c;

    iget-wide p2, p1, Lcch$c;->element:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Lcch$c;->element:J

    goto :goto_2

    .line 251
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
