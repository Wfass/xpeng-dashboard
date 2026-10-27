.class Lcdr$1;
.super Lcdx;
.source "SevenZOutputFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcdr;->d()Lcdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcdr;


# direct methods
.method constructor <init>(Lcdr;Ljava/io/OutputStream;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcdr$1;->a:Lcdr;

    invoke-direct {p0, p2}, Lcdx;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .line 300
    invoke-super {p0, p1}, Lcdx;->write(I)V

    .line 301
    iget-object v0, p0, Lcdr$1;->a:Lcdr;

    invoke-static {v0}, Lcdr;->a(Lcdr;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Lcdx;->write([B)V

    .line 307
    iget-object v0, p0, Lcdr$1;->a:Lcdr;

    invoke-static {v0}, Lcdr;->a(Lcdr;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcdx;->write([BII)V

    .line 314
    iget-object v0, p0, Lcdr$1;->a:Lcdr;

    invoke-static {v0}, Lcdr;->a(Lcdr;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
