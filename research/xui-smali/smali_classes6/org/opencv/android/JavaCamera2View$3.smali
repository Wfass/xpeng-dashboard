.class Lorg/opencv/android/JavaCamera2View$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "JavaCamera2View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/JavaCamera2View;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/JavaCamera2View;


# direct methods
.method constructor <init>(Lorg/opencv/android/JavaCamera2View;)V
    .locals 0
    .param p1, "this$0"    # Lorg/opencv/android/JavaCamera2View;

    .line 198
    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 221
    const-string v0, "JavaCamera2View"

    const-string v1, "createCameraPreviewSession failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 201
    const-string v0, "JavaCamera2View"

    const-string v1, "createCaptureSession::onConfigured"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v0}, Lorg/opencv/android/JavaCamera2View;->access$000(Lorg/opencv/android/JavaCamera2View;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v0, p1}, Lorg/opencv/android/JavaCamera2View;->access$302(Lorg/opencv/android/JavaCamera2View;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v0}, Lorg/opencv/android/JavaCamera2View;->access$400(Lorg/opencv/android/JavaCamera2View;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v0}, Lorg/opencv/android/JavaCamera2View;->access$400(Lorg/opencv/android/JavaCamera2View;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v0}, Lorg/opencv/android/JavaCamera2View;->access$300(Lorg/opencv/android/JavaCamera2View;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v1}, Lorg/opencv/android/JavaCamera2View;->access$400(Lorg/opencv/android/JavaCamera2View;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/opencv/android/JavaCamera2View$3;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-static {v3}, Lorg/opencv/android/JavaCamera2View;->access$500(Lorg/opencv/android/JavaCamera2View;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 213
    const-string v0, "JavaCamera2View"

    const-string v1, "CameraPreviewSession has been started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JavaCamera2View"

    const-string v2, "createCaptureSession failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
