.class final Landroid/support/rastermill/util/NativeResourcesUtil$6;
.super Ljava/lang/Object;
.source "NativeResourcesUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/util/NativeResourcesUtil;->log()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "######NativeResourcesUtil######\n"

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mFrameSequenceKeys:"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 99
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$300(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    :cond_0
    const-string v2, "----\nmNativeFrameSequences:"

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 105
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$400(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    :cond_1
    const-string v2, "----\nmNativeStates:"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 111
    invoke-static {}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/rastermill/util/NativeResourcesUtil;->access$400(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    :cond_2
    const-string v1, "------NativeResourcesUtil------\n"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameSequence"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
