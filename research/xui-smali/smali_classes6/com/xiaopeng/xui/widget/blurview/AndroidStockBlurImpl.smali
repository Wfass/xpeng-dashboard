.class public Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;
.super Ljava/lang/Object;
.source "AndroidStockBlurImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;


# static fields
.field static DEBUG:Ljava/lang/Boolean;


# instance fields
.field private mBlurInput:Landroid/renderscript/Allocation;

.field private mBlurOutput:Landroid/renderscript/Allocation;

.field private mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mRenderScript:Landroid/renderscript/RenderScript;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    .line 80
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 73
    return-void

    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buffer"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # F

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_1

    .line 24
    :try_start_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "var5":Landroid/renderscript/RSRuntimeException;
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->release()V

    .line 32
    const/4 v1, 0x0

    return v1

    .line 28
    :cond_0
    throw v0

    .line 36
    .end local v0    # "var5":Landroid/renderscript/RSRuntimeException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    .line 39
    return v2
.end method

.method public release()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 45
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 50
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 55
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 60
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 63
    :cond_3
    return-void
.end method
