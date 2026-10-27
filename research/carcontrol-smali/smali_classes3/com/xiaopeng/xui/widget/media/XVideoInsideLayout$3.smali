.class Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;
.super Ljava/lang/Object;
.source "XVideoInsideLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downEvent:Landroid/view/MotionEvent;

.field onBrightnessDragging:Z

.field onProgressDragging:Z

.field onVolumeDragging:Z

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onBrightnessDragging:Z

    .line 151
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onVolumeDragging:Z

    .line 152
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    return-void
.end method


# virtual methods
.method public onBrightnessGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportBrightnessGesture:Z

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$100(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onBrightnessDragging:Z

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$200(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)F

    move-result p1

    float-to-double p1, p1

    .line 162
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p4, p3

    float-to-double p3, p4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    double-to-float p1, p1

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$300(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;F)V

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setLayoutDirection(I)V

    .line 165
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    return-void
.end method

.method public onDoubleTapGesture(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->downEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public onSingleTapGesture(Landroid/view/MotionEvent;)V
    .locals 2

    .line 207
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    const-string v1, "XVideoInsideLayout"

    if-nez p1, :cond_0

    const-string p1, "iVideoView==null"

    .line 210
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->pause()V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    const-string p1, "Gesture pause"

    .line 216
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->play()V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    const-string p1, "Gesture play"

    .line 220
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onBrightnessDragging:Z

    .line 236
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onVolumeDragging:Z

    .line 237
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$900(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    .line 239
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onVideoSeekToGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getDuration()I

    move-result p1

    .line 194
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getUIProgress()I

    move-result p2

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    const-wide v0, 0x3fd3333333333333L    # 0.3

    if-ltz p4, :cond_1

    int-to-double v2, p2

    .line 196
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    mul-double/2addr p2, v0

    int-to-double v0, p1

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto :goto_0

    :cond_1
    int-to-double v2, p2

    .line 198
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    mul-double/2addr p2, v0

    int-to-double v0, p1

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    :goto_0
    sub-double/2addr v2, p1

    double-to-int p1, v2

    .line 200
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$800(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V

    .line 201
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setLayoutDirection(I)V

    .line 202
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    return-void
.end method

.method public onVolumeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportVolumeGesture:Z

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$400(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I

    move-result p1

    .line 174
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$500(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V

    const/4 p2, 0x1

    .line 175
    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onVolumeDragging:Z

    .line 176
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$600(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-ltz p3, :cond_1

    float-to-double p2, p2

    .line 178
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p4, v2

    float-to-double v2, p4

    mul-double/2addr v2, v0

    int-to-double v0, p1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    float-to-double p2, p2

    .line 180
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p4, v2

    float-to-double v2, p4

    mul-double/2addr v2, v0

    int-to-double v0, p1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    add-double/2addr p2, v0

    double-to-float p1, p2

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    float-to-int p1, p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$700(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V

    .line 183
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setLayoutDirection(I)V

    .line 184
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    return-void
.end method
