.class public final Lnet/lingala/zip4j/d/d;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final apP:Ljava/lang/String;

.field public static final apQ:Ljava/nio/charset/Charset;

.field public static final apR:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lnet/lingala/zip4j/d/d;->apP:Ljava/lang/String;

    .line 66
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/d/d;->apQ:Ljava/nio/charset/Charset;

    .line 68
    sget-object v0, Lnet/lingala/zip4j/d/d;->apQ:Ljava/nio/charset/Charset;

    sput-object v0, Lnet/lingala/zip4j/d/d;->apR:Ljava/nio/charset/Charset;

    return-void
.end method
