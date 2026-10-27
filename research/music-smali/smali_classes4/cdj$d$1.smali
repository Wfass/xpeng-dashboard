.class Lcdj$d$1;
.super Ljava/io/OutputStream;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcdj$d;->a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/zip/DeflaterOutputStream;

.field final synthetic b:Ljava/util/zip/Deflater;

.field final synthetic c:Lcdj$d;


# direct methods
.method constructor <init>(Lcdj$d;Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcdj$d$1;->c:Lcdj$d;

    iput-object p2, p0, Lcdj$d$1;->a:Ljava/util/zip/DeflaterOutputStream;

    iput-object p3, p0, Lcdj$d$1;->b:Ljava/util/zip/Deflater;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcdj$d$1;->a:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcdj$d$1;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcdj$d$1;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    throw v0
.end method

.method public write(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcdj$d$1;->a:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcdj$d$1;->a:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcdj$d$1;->a:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    return-void
.end method
