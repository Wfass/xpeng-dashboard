.class public abstract Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;
.super Landroid/os/Binder;
.source "IDataUploadInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.lib.bughunter.IDataUploadInterface"

.field static final TRANSACTION_uploadCan:I = 0x3

.field static final TRANSACTION_uploadFiles:I = 0x5

.field static final TRANSACTION_uploadFilesWithParam:I = 0x7

.field static final TRANSACTION_uploadLog:I = 0x1

.field static final TRANSACTION_uploadLogImmediately:I = 0x4

.field static final TRANSACTION_uploadLogOrigin:I = 0x2

.field static final TRANSACTION_uploadSystemLog:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 101
    :pswitch_0
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadFilesWithParam(Ljava/util/List;Ljava/lang/String;)V

    .line 107
    return v1

    .line 93
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadSystemLog(Ljava/lang/String;)V

    .line 97
    return v1

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadFiles(Ljava/util/List;)V

    .line 89
    return v1

    .line 75
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v1

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_4
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadCan(Ljava/lang/String;)V

    .line 71
    return v1

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v1

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_6
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadLog(Ljava/lang/String;)V

    .line 53
    return v1

    .line 44
    .end local v0    # "_arg0":Ljava/lang/String;
    :cond_0
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
