.class Lorg/opencv/android/AsyncServiceHelper$3;
.super Ljava/lang/Object;
.source "AsyncServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/AsyncServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/AsyncServiceHelper;


# direct methods
.method constructor <init>(Lorg/opencv/android/AsyncServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/opencv/android/AsyncServiceHelper;

    .line 157
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 160
    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Service connection created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-static {p2}, Lorg/opencv/engine/IOpenCVEngineInterface$Stub;->asInterface(Landroid/os/IBinder;)Lorg/opencv/engine/IOpenCVEngineInterface;

    move-result-object v1

    iput-object v1, v0, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/IOpenCVEngineInterface;

    .line 162
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/IOpenCVEngineInterface;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "OpenCVManager/Helper"

    const-string v1, "OpenCV Manager Service connection fails. May be service was not installed?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-static {v0, v1}, Lorg/opencv/android/AsyncServiceHelper;->InstallService(Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)V

    goto/16 :goto_4

    .line 169
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    .line 172
    const/16 v1, 0xff

    :try_start_0
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/IOpenCVEngineInterface;

    invoke-interface {v2}, Lorg/opencv/engine/IOpenCVEngineInterface;->getEngineVersion()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 174
    const-string v0, "OpenCVManager/Helper"

    const-string v2, "Init finished with status 4"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "OpenCVManager/Helper"

    const-string v2, "Unbind from service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 177
    const-string v0, "OpenCVManager/Helper"

    const-string v2, "Calling using callback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    .line 179
    return-void

    .line 182
    :cond_1
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Trying to get library path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/IOpenCVEngineInterface;

    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/opencv/engine/IOpenCVEngineInterface;->getLibPathByVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 294
    :cond_2
    const-string v3, "OpenCVManager/Helper"

    const-string v4, "Trying to get library list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sput-boolean v0, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    .line 296
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/IOpenCVEngineInterface;

    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/opencv/engine/IOpenCVEngineInterface;->getLibraryList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "libs":Ljava/lang/String;
    const-string v4, "OpenCVManager/Helper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library list: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v4, "OpenCVManager/Helper"

    const-string v5, "First attempt to load libs"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-static {v4, v2, v3}, Lorg/opencv/android/AsyncServiceHelper;->access$000(Lorg/opencv/android/AsyncServiceHelper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 302
    const-string v4, "OpenCVManager/Helper"

    const-string v5, "First attempt to load libs is OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "eol":Ljava/lang/String;
    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    .line 305
    .local v7, "str":Ljava/lang/String;
    const-string v8, "OpenCVManager/Helper"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v7    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_3
    const/4 v0, 0x0

    .line 308
    .end local v4    # "eol":Ljava/lang/String;
    .local v0, "status":I
    goto :goto_1

    .line 311
    .end local v0    # "status":I
    :cond_4
    const-string v0, "OpenCVManager/Helper"

    const-string v4, "First attempt to load libs fails"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move v0, v1

    .line 315
    .restart local v0    # "status":I
    :goto_1
    const-string v4, "OpenCVManager/Helper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init finished with status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v4, "OpenCVManager/Helper"

    const-string v5, "Unbind from service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v5, v5, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 318
    const-string v4, "OpenCVManager/Helper"

    const-string v5, "Calling using callback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v4, v0}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    .line 330
    .end local v0    # "status":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "libs":Ljava/lang/String;
    goto :goto_4

    .line 186
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    :goto_2
    sget-boolean v3, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    if-nez v3, :cond_6

    .line 188
    new-instance v3, Lorg/opencv/android/AsyncServiceHelper$3$1;

    invoke-direct {v3, p0}, Lorg/opencv/android/AsyncServiceHelper$3$1;-><init>(Lorg/opencv/android/AsyncServiceHelper$3;)V

    .line 235
    .local v3, "InstallQuery":Lorg/opencv/android/InstallCallbackInterface;
    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v4, v0, v3}, Lorg/opencv/android/LoaderCallbackInterface;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V

    .line 236
    .end local v3    # "InstallQuery":Lorg/opencv/android/InstallCallbackInterface;
    goto :goto_3

    .line 239
    :cond_6
    new-instance v0, Lorg/opencv/android/AsyncServiceHelper$3$2;

    invoke-direct {v0, p0}, Lorg/opencv/android/AsyncServiceHelper$3$2;-><init>(Lorg/opencv/android/AsyncServiceHelper$3;)V

    .line 288
    .local v0, "WaitQuery":Lorg/opencv/android/InstallCallbackInterface;
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lorg/opencv/android/LoaderCallbackInterface;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "WaitQuery":Lorg/opencv/android/InstallCallbackInterface;
    :goto_3
    return-void

    .line 322
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Init finished with status 255"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Unbind from service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 328
    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Calling using callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v2, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 336
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/IOpenCVEngineInterface;

    .line 337
    return-void
.end method
