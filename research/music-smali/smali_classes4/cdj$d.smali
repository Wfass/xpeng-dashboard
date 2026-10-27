.class Lcdj$d;
.super Lcdi;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 149
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Number;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 2

    const/16 v0, 0x9

    .line 187
    invoke-static {p2, v0}, Lcdj$d;->a(Ljava/lang/Object;I)I

    move-result p2

    .line 188
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 189
    new-instance p2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p2, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 190
    new-instance p1, Lcdj$d$1;

    invoke-direct {p1, p0, p2, v0}, Lcdj$d$1;-><init>(Lcdj$d;Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V

    return-object p1
.end method
