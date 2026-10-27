.class Landroid/support/v4/media/IMediaController2$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaController2.java"

# interfaces
.implements Landroid/support/v4/media/IMediaController2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaController2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 426
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 429
    iget-object v0, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 433
    const-string v0, "android.support.v4.media.IMediaController2"

    return-object v0
.end method

.method public onAllowedCommandsChanged(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 702
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    nop

    .line 713
    return-void

    .line 711
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onBufferingStateChanged(Landroid/os/Bundle;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 485
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 495
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 799
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    .line 803
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 807
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x14

    const/4 v1, 0x0

    invoke-interface {p1, p3, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 813
    nop

    .line 814
    return-void

    .line 812
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onConnected(Landroid/support/v4/media/IMediaSession2;Landroid/os/Bundle;ILandroid/os/Bundle;JJFJLandroid/os/Bundle;IILjava/util/List;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/IMediaSession2;",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            "JJFJ",
            "Landroid/os/Bundle;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p2

    move-object v1, p4

    move-object/from16 v2, p12

    .line 627
    move-object/from16 v3, p16

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 629
    :try_start_0
    const-string v5, "android.support.v4.media.IMediaController2"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 631
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 636
    :cond_1
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    :goto_1
    move v0, p3

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    if-eqz v1, :cond_2

    .line 640
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 644
    :cond_2
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    :goto_2
    move-wide v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 647
    move-wide v0, p7

    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 648
    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 649
    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 650
    if-eqz v2, :cond_3

    .line 651
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 655
    :cond_3
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    :goto_3
    move/from16 v0, p13

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 660
    if-eqz v3, :cond_4

    .line 661
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    invoke-virtual {v3, v4, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 665
    :cond_4
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    :goto_4
    move-object v0, p0

    iget-object v0, v0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xd

    invoke-interface {v0, v1, v4, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 671
    nop

    .line 672
    return-void

    .line 670
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onCurrentMediaItemChanged(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onCustomCommand(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 718
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 720
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    :goto_0
    if-eqz p2, :cond_1

    .line 727
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 731
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    :goto_1
    if-eqz p3, :cond_2

    .line 734
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    invoke-virtual {p3, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 738
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    :goto_2
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    nop

    .line 745
    return-void

    .line 743
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onCustomLayoutChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 688
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 690
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    nop

    .line 695
    return-void

    .line 693
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onDisconnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 682
    nop

    .line 683
    return-void

    .line 681
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 601
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 611
    nop

    .line 612
    return-void

    .line 610
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 819
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 824
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p5, :cond_0

    .line 825
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x15

    const/4 p4, 0x0

    invoke-interface {p1, p3, v0, p4, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    nop

    .line 836
    return-void

    .line 834
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onGetItemDone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 780
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 783
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    nop

    .line 794
    return-void

    .line 792
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 754
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 756
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    if-eqz p3, :cond_1

    .line 764
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 768
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    :goto_1
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    nop

    .line 775
    return-void

    .line 773
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 861
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 866
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p5, :cond_0

    .line 867
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x17

    const/4 p4, 0x0

    invoke-interface {p1, p3, v0, p4, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    nop

    .line 878
    return-void

    .line 876
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaybackInfoChanged(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 542
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaybackSpeedChanged(JJF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 473
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 474
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 475
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlayerStateChanged(JJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 459
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 460
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaylistChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 507
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 508
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaylistMetadataChanged(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 524
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    nop

    .line 537
    return-void

    .line 535
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onRepeatModeChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 560
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onRoutesInfoChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 619
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    nop

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 841
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_0

    .line 845
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 849
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x16

    const/4 v1, 0x0

    invoke-interface {p1, p3, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    nop

    .line 856
    return-void

    .line 854
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSeekCompleted(JJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 584
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 586
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 587
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 588
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    nop

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onShuffleModeChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    :try_start_0
    const-string v1, "android.support.v4.media.IMediaController2"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-object p1, p0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 578
    nop

    .line 579
    return-void

    .line 577
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
