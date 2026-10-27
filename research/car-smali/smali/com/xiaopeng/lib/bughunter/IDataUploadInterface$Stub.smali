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

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 1

    .line 305
    sget-object v0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Z
    .locals 2
    .param p0, "impl"    # Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-nez v0, :cond_1

    .line 298
    if-eqz p0, :cond_0

    .line 299
    sput-object p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 300
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 73
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 134
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadFilesWithParam(Ljava/util/List;Ljava/lang/String;)V

    .line 140
    return v2

    .line 126
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadSystemLog(Ljava/lang/String;)V

    .line 130
    return v2

    .line 118
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadFiles(Ljava/util/List;)V

    .line 122
    return v2

    .line 108
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v2

    .line 100
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadCan(Ljava/lang/String;)V

    .line 104
    return v2

    .line 90
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v2

    .line 82
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->uploadLog(Ljava/lang/String;)V

    .line 86
    return v2

    .line 77
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v2

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
