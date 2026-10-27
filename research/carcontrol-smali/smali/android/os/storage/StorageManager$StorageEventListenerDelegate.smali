.class Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
.super Landroid/os/storage/IStorageEventListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEventListenerDelegate"
.end annotation


# instance fields
.field final mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Landroid/os/storage/StorageEventListener;

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .locals 0

    .line 334
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IStorageEventListener$Stub;-><init>()V

    .line 335
    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 336
    iput-object p3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    .line 337
    iput-object p4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDiskDestroyed$6$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;)V
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method public synthetic lambda$onDiskScanned$5$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;I)V
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method public synthetic lambda$onStorageStateChanged$1$StorageManager$StorageEventListenerDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 353
    iget-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageVolume;

    .line 354
    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$onUsbMassStorageConnectionChanged$0$StorageManager$StorageEventListenerDelegate(Z)V
    .locals 1

    .line 343
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onUsbMassStorageConnectionChanged(Z)V

    return-void
.end method

.method public synthetic lambda$onVolumeForgotten$4$StorageManager$StorageEventListenerDelegate(Ljava/lang/String;)V
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onVolumeRecordChanged$3$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeRecord;)V
    .locals 1

    .line 381
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method public synthetic lambda$onVolumeStateChanged$2$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeInfo;II)V
    .locals 2

    .line 365
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 369
    iget-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageVolume;

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$StorageVolumeCallback;->onStateChanged(Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 2

    .line 394
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$xwytzXsFsI1_JMvEhlHTWnV_KyA;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$xwytzXsFsI1_JMvEhlHTWnV_KyA;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 349
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$iFaeZuRy2mhY5v_pz2Ex8CviIV4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$iFaeZuRy2mhY5v_pz2Ex8CviIV4;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$84LmRF7oEc5wW8YPuFH0tFCkLKE;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$84LmRF7oEc5wW8YPuFH0tFCkLKE;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 2

    .line 387
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$ecnlqAlEy0uz8qZah68cQjKCyyg;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$ecnlqAlEy0uz8qZah68cQjKCyyg;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2

    .line 380
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$0oQ_6nHj7u6ks-TfuxydXRlrwJY;

    invoke-direct {v1, p0, p1}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$0oQ_6nHj7u6ks-TfuxydXRlrwJY;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2

    .line 364
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$vS7zBGYJgJjXzaKSy7tlVQdALZk;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$vS7zBGYJgJjXzaKSy7tlVQdALZk;-><init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeInfo;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
