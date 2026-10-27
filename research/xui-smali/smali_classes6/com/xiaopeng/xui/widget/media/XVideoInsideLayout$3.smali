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
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onBrightnessDragging:Z

    .line 151
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onVolumeDragging:Z

    .line 152
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    return-void
.end method


# virtual methods
.method public onBrightnessGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportBrightnessGesture:Z

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$100(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onBrightnessDragging:Z

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$200(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)F

    move-result v0

    .line 162
    .local v0, "brightness":F
    float-to-double v1, v0

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p4, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v0, v1

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$300(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;F)V

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setLayoutDirection(I)V

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 166
    return-void
.end method

.method public onDoubleTapGesture(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 226
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->downEvent:Landroid/view/MotionEvent;

    .line 231
    return-void
.end method

.method public onSingleTapGesture(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 207
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "XVideoInsideLayout"

    const-string v1, "iVideoView==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->pause()V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    .line 216
    const-string v0, "XVideoInsideLayout"

    const-string v1, "Gesture pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->play()V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    .line 220
    const-string v0, "XVideoInsideLayout"

    const-string v1, "Gesture play"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onBrightnessDragging:Z

    .line 236
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onVolumeDragging:Z

    .line 237
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$900(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    .line 239
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public onVideoSeekToGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onProgressDragging:Z

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getDuration()I

    move-result v0

    .line 194
    .local v0, "duration":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getUIProgress()I

    move-result v1

    .line 195
    .local v1, "position":I
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    const-wide v3, 0x3fd3333333333333L    # 0.3

    if-ltz v2, :cond_1

    .line 196
    int-to-double v5, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getWidth()I

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

    .line 198
    :cond_1
    int-to-double v5, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getWidth()I

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

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v2, v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$800(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V

    .line 201
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setLayoutDirection(I)V

    .line 202
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 203
    return-void
.end method

.method public onVolumeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportVolumeGesture:Z

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$400(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I

    move-result v0

    .line 174
    .local v0, "maxVolume":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$500(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->onVolumeDragging:Z

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$600(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I

    move-result v1

    int-to-float v1, v1

    .line 177
    .local v1, "volume":F
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_1

    .line 178
    float-to-double v5, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    float-to-double v7, v2

    mul-double/2addr v7, v3

    int-to-double v2, v0

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v5, v2

    double-to-float v1, v5

    goto :goto_0

    .line 180
    :cond_1
    float-to-double v5, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    float-to-double v7, v2

    mul-double/2addr v7, v3

    int-to-double v2, v0

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v5, v2

    double-to-float v1, v5

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    float-to-int v3, v1

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->access$700(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V

    .line 183
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setLayoutDirection(I)V

    .line 184
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 185
    return-void
.end method
