.class final Landroid/support/rastermill/util/NativeResourcesUtil$1;
.super Ljava/lang/Object;
.source "NativeResourcesUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/util/NativeResourcesUtil;->putFrameSequenceKey(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$nativeFrameSequence:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$1;->val$nativeFrameSequence:J

    iput-object p3, p0, Landroid/support/rastermill/util/NativeResourcesUtil$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$1;->val$nativeFrameSequence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/support/rastermill/util/NativeResourcesUtil$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method
