.class Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;
.super Ljava/lang/Object;
.source "XVideoLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XVideoLayout;->initEvent()V
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

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onBrightnessDragging:Z

    .line 147
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onVolumeDragging:Z

    .line 148
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    return-void
.end method


# virtual methods
.method public onBrightnessGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$100(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onBrightnessDragging:Z

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$200(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)F

    move-result p1

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p4, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p4, p2

    add-float/2addr p1, p4

    .line 156
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$300(Lcom/xiaopeng/xui/widget/media/XVideoLayout;F)V

    .line 157
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    return-void
.end method

.method public onDoubleTapGesture(Landroid/view/MotionEvent;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->pause()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->play()V

    :goto_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->downEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public onSingleTapGesture(Landroid/view/MotionEvent;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->isShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setControllerShow(Z)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onBrightnessDragging:Z

    .line 214
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onVolumeDragging:Z

    .line 215
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->finishGestureDrag()V

    .line 217
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onVideoSeekToGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getDuration()I

    move-result p1

    .line 179
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$500(Lcom/xiaopeng/xui/widget/media/XVideoLayout;I)V

    .line 180
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getUIProgress()I

    move-result p2

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    if-ltz p4, :cond_0

    int-to-double v2, p2

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    mul-double/2addr p2, v0

    int-to-double v0, p1

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    goto :goto_0

    :cond_0
    int-to-double v2, p2

    .line 184
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    mul-double/2addr p2, v0

    int-to-double v0, p1

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    :goto_0
    sub-double/2addr v2, p2

    double-to-int p2, v2

    .line 186
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p3, p3, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/widget/media/XMediaController;->gestureDragTo(I)V

    .line 187
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p3, p3, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 188
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p3, p3, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_seek_to:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_duration:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onVolumeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getMaxVolume()I

    move-result p1

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$400(Lcom/xiaopeng/xui/widget/media/XVideoLayout;I)V

    const/4 p2, 0x1

    .line 164
    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onVolumeDragging:Z

    .line 165
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getVolume()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz p3, :cond_0

    float-to-double p2, p2

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    mul-float/2addr p4, v0

    int-to-float p1, p1

    mul-float/2addr p4, p1

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    float-to-double p2, p2

    .line 169
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    mul-float/2addr p4, v0

    int-to-float p1, p1

    mul-float/2addr p4, p1

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    add-double/2addr p2, v0

    double-to-float p1, p2

    .line 171
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setVolume(I)V

    .line 172
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p2, p2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    return-void
.end method
