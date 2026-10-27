.class Landroid/support/rastermill/FrameSequenceDrawable$2;
.super Ljava/lang/Object;
.source "FrameSequenceDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 178
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 183
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v1

    .line 187
    .local v1, "nextFrame":I
    if-gez v1, :cond_1

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v2}, Landroid/support/rastermill/FrameSequenceDrawable;->access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    add-int/lit8 v3, v1, -0x2

    .line 194
    .local v3, "lastFrame":I
    const/4 v0, 0x0

    .line 195
    .local v0, "exceptionDuringDecode":Z
    const-wide/16 v5, 0x0

    .line 197
    .local v5, "invalidateTimeMs":J
    :try_start_1
    iget-object v7, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v7}, Landroid/support/rastermill/FrameSequenceDrawable;->access$500(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v3}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v5, v7

    .line 202
    goto :goto_0

    .line 198
    :catch_0
    move-exception v7

    .line 200
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "FrameSequence"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception during decode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x1

    .line 204
    .end local v0    # "exceptionDuringDecode":Z
    .local v7, "exceptionDuringDecode":Z
    :goto_0
    move v7, v0

    const-wide/16 v8, 0x14

    cmp-long v0, v5, v8

    if-gez v0, :cond_2

    .line 205
    const-wide/16 v5, 0x64

    .line 208
    :cond_2
    const/4 v0, 0x0

    .line 209
    .local v0, "schedule":Z
    const/4 v8, 0x0

    .line 210
    .local v8, "bitmapToRelease":Landroid/graphics/Bitmap;
    iget-object v9, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v9}, Landroid/support/rastermill/FrameSequenceDrawable;->access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 211
    :try_start_2
    iget-object v10, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v10}, Landroid/support/rastermill/FrameSequenceDrawable;->access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 212
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v8, v4

    .line 213
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v10, 0x0

    invoke-static {v4, v10}, Landroid/support/rastermill/FrameSequenceDrawable;->access$302(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 214
    :cond_3
    iget-object v10, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v10}, Landroid/support/rastermill/FrameSequenceDrawable;->access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v10

    if-ltz v10, :cond_5

    iget-object v10, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v10}, Landroid/support/rastermill/FrameSequenceDrawable;->access$400(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v10

    if-ne v10, v4, :cond_5

    .line 215
    const/4 v0, 0x1

    .line 216
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v7, :cond_4

    const-wide v10, 0x7fffffffffffffffL

    goto :goto_1

    :cond_4
    iget-object v10, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v10}, Landroid/support/rastermill/FrameSequenceDrawable;->access$700(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v10

    add-long/2addr v10, v5

    :goto_1
    invoke-static {v4, v10, v11}, Landroid/support/rastermill/FrameSequenceDrawable;->access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J

    .line 217
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v10, 0x3

    invoke-static {v4, v10}, Landroid/support/rastermill/FrameSequenceDrawable;->access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I

    .line 219
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    if-eqz v0, :cond_6

    .line 221
    invoke-static {}, Landroid/support/rastermill/FrameSequenceDrawable;->access$900()Landroid/os/Handler;

    move-result-object v4

    iget-object v9, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v9}, Landroid/support/rastermill/FrameSequenceDrawable;->access$800(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_6
    if-eqz v8, :cond_7

    .line 226
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$1000(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    :cond_7
    return-void

    .line 219
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 192
    .end local v0    # "schedule":Z
    .end local v1    # "nextFrame":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "lastFrame":I
    .end local v5    # "invalidateTimeMs":J
    .end local v7    # "exceptionDuringDecode":Z
    .end local v8    # "bitmapToRelease":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
