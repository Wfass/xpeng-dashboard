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
    .param p1, "this$0"    # Landroid/support/rastermill/FrameSequenceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/rastermill/data/Encoder<",
            "TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 555
    .local p0, "this":Landroid/support/rastermill/FrameSequenceController$SourceWriter;, "Landroid/support/rastermill/FrameSequenceController$SourceWriter<TDataType;>;"
    .local p2, "encoder":Landroid/support/rastermill/data/Encoder;, "Landroid/support/rastermill/data/Encoder<TDataType;>;"
    .local p3, "data":Ljava/lang/Object;, "TDataType;"
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->encoder:Landroid/support/rastermill/data/Encoder;

    .line 557
    iput-object p3, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->data:Ljava/lang/Object;

    .line 558
    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 562
    .local p0, "this":Landroid/support/rastermill/FrameSequenceController$SourceWriter;, "Landroid/support/rastermill/FrameSequenceController$SourceWriter<TDataType;>;"
    const/4 v0, 0x0

    .line 563
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 565
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v2}, Landroid/support/rastermill/FrameSequenceController;->access$300(Landroid/support/rastermill/FrameSequenceController;)Landroid/support/rastermill/FrameSequenceController$FileOpener;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/rastermill/FrameSequenceController$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v1, v2

    .line 566
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->encoder:Landroid/support/rastermill/data/Encoder;

    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Landroid/support/rastermill/data/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 570
    if-eqz v1, :cond_0

    .line 572
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :goto_0
    goto :goto_1

    .line 573
    :catch_0
    move-exception v2

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 567
    :catch_1
    move-exception v2

    .line 568
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Failed to find file to write to disk cache"

    invoke-static {v3, v2}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_0

    .line 572
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 578
    :cond_0
    :goto_1
    return v0

    .line 570
    :goto_2
    if-eqz v1, :cond_1

    .line 572
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 575
    goto :goto_3

    .line 573
    :catch_2
    move-exception v3

    .line 577
    :cond_1
    :goto_3
    throw v2
.end method
