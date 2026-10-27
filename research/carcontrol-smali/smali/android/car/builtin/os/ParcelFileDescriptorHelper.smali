.class public final Landroid/car/builtin/os/ParcelFileDescriptorHelper;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static seekTo(Landroid/os/ParcelFileDescriptor;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide p0

    return-wide p0
.end method
