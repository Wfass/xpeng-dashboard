.class final Landroid/support/rastermill/util/NativeResourcesUtil$2;
.super Ljava/lang/Object;
.source "NativeResourcesUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/util/NativeResourcesUtil;->addNativeState(JJIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frameCount:I

.field final synthetic val$height:I

.field final synthetic val$nativeFrameSequence:J

.field final synthetic val$nativeState:J

.field final synthetic val$width:I


# direct methods
.method constructor <init>(JJIII)V
    .locals 0

    .line 40
    iput-wide p1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$nativeState:J

    iput-wide p3, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$nativeFrameSequence:J

    iput p5, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$width:I

    iput p6, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$height:I

    iput p7, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$frameCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 43
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$nativeState:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v10, Landroid/support/rastermill/util/NativeResourcesUtil$Info;

    iget-wide v3, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$nativeFrameSequence:J

    iget-wide v5, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$nativeState:J

    iget v7, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$width:I

    iget v8, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$height:I

    iget v9, p0, Landroid/support/rastermill/util/NativeResourcesUtil$2;->val$frameCount:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/support/rastermill/util/NativeResourcesUtil$Info;-><init>(JJIII)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
