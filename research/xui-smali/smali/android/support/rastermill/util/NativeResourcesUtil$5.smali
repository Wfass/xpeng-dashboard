.class final Landroid/support/rastermill/util/NativeResourcesUtil$5;
.super Ljava/lang/Object;
.source "NativeResourcesUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/util/NativeResourcesUtil;->removeNativeFrameSequence(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeFrameSequence:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$5;->val$nativeFrameSequence:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$5;->val$nativeFrameSequence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$5;->val$nativeFrameSequence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method
