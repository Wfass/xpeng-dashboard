.class public Landroid/support/rastermill/util/NativeResourcesUtil$Info;
.super Ljava/lang/Object;
.source "NativeResourcesUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/util/NativeResourcesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public frameCount:I

.field public height:I

.field public nativeFrameSequence:J

.field public nativePtr:J

.field public width:I


# direct methods
.method public constructor <init>(JJIII)V
    .locals 0
    .param p1, "nativeFrameSequence"    # J
    .param p3, "nativePtr"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "frameCount"    # I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-wide p1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->nativeFrameSequence:J

    .line 163
    iput-wide p3, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->nativePtr:J

    .line 164
    iput p5, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->width:I

    .line 165
    iput p6, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->height:I

    .line 166
    iput p7, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->frameCount:I

    .line 167
    return-void
.end method


# virtual methods
.method public getSizeKey()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/util/NativeResourcesUtil$Info;->frameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
