.class Lcdr$a;
.super Ljava/io/OutputStream;
.source "SevenZOutputFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcdr;


# direct methods
.method private constructor <init>(Lcdr;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcdr$a;->a:Lcdr;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcdr;Lcdr$1;)V
    .locals 0

    .line 740
    invoke-direct {p0, p1}, Lcdr$a;-><init>(Lcdr;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcdr$a;->a:Lcdr;

    invoke-static {v0}, Lcdr;->b(Lcdr;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 744
    iget-object v0, p0, Lcdr$a;->a:Lcdr;

    invoke-static {v0}, Lcdr;->c(Lcdr;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 745
    iget-object p1, p0, Lcdr$a;->a:Lcdr;

    invoke-static {p1}, Lcdr;->d(Lcdr;)J

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 750
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcdr$a;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcdr$a;->a:Lcdr;

    invoke-static {v0}, Lcdr;->b(Lcdr;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 757
    iget-object v0, p0, Lcdr$a;->a:Lcdr;

    invoke-static {v0}, Lcdr;->c(Lcdr;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 758
    iget-object p1, p0, Lcdr$a;->a:Lcdr;

    int-to-long p2, p3

    invoke-static {p1, p2, p3}, Lcdr;->a(Lcdr;J)J

    return-void
.end method
