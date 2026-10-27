.class public final Landroid/support/rastermill/disklrucache/DiskLruCache$Value;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Landroid/support/rastermill/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "files"    # [Ljava/io/File;
    .param p6, "lengths"    # [J

    .line 672
    iput-object p1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->this$0:Landroid/support/rastermill/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    .line 674
    iput-wide p3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    .line 675
    iput-object p5, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    .line 676
    iput-object p6, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->lengths:[J

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLandroid/support/rastermill/disklrucache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/File;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Landroid/support/rastermill/disklrucache/DiskLruCache$1;

    .line 666
    invoke-direct/range {p0 .. p6}, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->this$0:Landroid/support/rastermill/disklrucache/DiskLruCache;

    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    iget-wide v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Landroid/support/rastermill/disklrucache/DiskLruCache;->access$1600(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;J)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1
    .param p1, "index"    # I

    .line 689
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    .line 700
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 695
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
