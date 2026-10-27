.class public abstract Lcom/xiaopeng/appstore/storeprovider/c$a;
.super Landroid/os/Binder;
.source "IResourceServiceV2.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/c$a$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/xiaopeng/appstore/storeprovider/c;
    .locals 1

    .line 443
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/c$a$a;->a:Lcom/xiaopeng/appstore/storeprovider/c;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    .line 66
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/c;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/c;

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/c$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 191
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 168
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 173
    sget-object p4, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    .line 178
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 159
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/b$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/b;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(Lcom/xiaopeng/appstore/storeprovider/b;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/appstore/storeprovider/b$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/b;

    move-result-object p2

    .line 153
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/b;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 134
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 111
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 116
    sget-object p4, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    .line 121
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 88
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 93
    sget-object p4, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    .line 98
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 83
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
