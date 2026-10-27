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
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onBrightnessDragging:Z

    .line 147
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onVolumeDragging:Z

    .line 148
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    return-void
.end method


# virtual methods
.method public onBrightnessGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$100(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onBrightnessDragging:Z

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$200(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)F

    move-result v0

    .line 155
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$300(Lcom/xiaopeng/xui/widget/media/XVideoLayout;F)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 158
    return-void
.end method

.method public onDoubleTapGesture(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->pause()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->play()V

    .line 204
    :goto_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->downEvent:Landroid/view/MotionEvent;

    .line 209
    return-void
.end method

.method public onSingleTapGesture(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setControllerShow(Z)V

    .line 195
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onBrightnessDragging:Z

    .line 214
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onVolumeDragging:Z

    .line 215
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->finishGestureDrag()V

    .line 217
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 222
    return-void
.end method

.method public onVideoSeekToGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onProgressDragging:Z

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->getDuration()I

    move-result v0

    .line 179
    .local v0, "duration":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$500(Lcom/xiaopeng/xui/widget/media/XVideoLayout;I)V

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getUIProgress()I

    move-result v1

    .line 181
    .local v1, "position":I
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    if-ltz v2, :cond_0

    .line 182
    int-to-double v5, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p3, v2

    float-to-double v7, v2

    mul-double/2addr v7, v3

    int-to-double v2, v0

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double/2addr v5, v2

    double-to-int v1, v5

    goto :goto_0

    .line 184
    :cond_0
    int-to-double v5, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p3, v2

    float-to-double v7, v2

    mul-double/2addr v7, v3

    int-to-double v2, v0

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v5, v2

    double-to-int v1, v5

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->gestureDragTo(I)V

    .line 187
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_seek_to:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_duration:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public onVolumeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getMaxVolume()I

    move-result v0

    .line 163
    .local v0, "maxVolume":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$400(Lcom/xiaopeng/xui/widget/media/XVideoLayout;I)V

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->onVolumeDragging:Z

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getVolume()I

    move-result v1

    int-to-float v1, v1

    .line 166
    .local v1, "volume":F
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ltz v2, :cond_0

    .line 167
    float-to-double v4, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v4, v2

    double-to-float v1, v4

    goto :goto_0

    .line 169
    :cond_0
    float-to-double v4, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v4, v2

    double-to-float v1, v4

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setVolume(I)V

    .line 172
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 173
    return-void
.end method
