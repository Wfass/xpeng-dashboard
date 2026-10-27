.class public Lorg/apache/commons/net/ftp/h;
.super Ljava/lang/Object;
.source "FTPFileFilters.java"


# static fields
.field public static final asN:Lorg/apache/commons/net/ftp/g;

.field public static final asO:Lorg/apache/commons/net/ftp/g;

.field public static final asP:Lorg/apache/commons/net/ftp/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/apache/commons/net/ftp/h$1;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/h$1;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/h;->asN:Lorg/apache/commons/net/ftp/g;

    .line 40
    new-instance v0, Lorg/apache/commons/net/ftp/h$2;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/h$2;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/h;->asO:Lorg/apache/commons/net/ftp/g;

    .line 50
    new-instance v0, Lorg/apache/commons/net/ftp/h$3;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/h$3;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/h;->asP:Lorg/apache/commons/net/ftp/g;

    return-void
.end method
