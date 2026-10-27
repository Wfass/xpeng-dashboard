.class Landroid/support/rastermill/FrameSequenceController$SourceWriter;
.super Ljava/lang/Object;
.source "FrameSequenceController.java"

# interfaces
.implements Landroid/support/rastermill/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/rastermill/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Landroid/support/rastermill/data/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/rastermill/data/Encoder<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceController;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequenceController;Landroid/support/rastermill/data/Encoder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/rastermill/data/Encoder<",
            "TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 555
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->encoder:Landroid/support/rastermill/data/Encoder;

    .line 557
    iput-object p3, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceController;->access$300(Landroid/support/rastermill/FrameSequenceController;)Landroid/support/rastermill/FrameSequenceController$FileOpener;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/rastermill/FrameSequenceController$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v0

    .line 566
    iget-object p1, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->encoder:Landroid/support/rastermill/data/Encoder;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Landroid/support/rastermill/data/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 572
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Failed to find file to write to disk cache"

    .line 568
    invoke-static {v1, p1}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 572
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    const/4 p1, 0x0

    :catch_2
    :cond_1
    :goto_0
    return p1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 577
    :catch_3
    :cond_2
    throw p1
.end method
