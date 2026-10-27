.class public abstract Lcom/xiaopeng/lib/bughunter/a$a;
.super Landroid/os/Binder;
.source "IDataUploadInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/bughunter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/a$a$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/xiaopeng/lib/bughunter/a;
    .locals 1

    .line 305
    sget-object v0, Lcom/xiaopeng/lib/bughunter/a$a$a;->a:Lcom/xiaopeng/lib/bughunter/a;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 60
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    instance-of v1, v0, Lcom/xiaopeng/lib/bughunter/a;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Lcom/xiaopeng/lib/bughunter/a;

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/bughunter/a$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/bughunter/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/bughunter/a$a;->a(Ljava/util/List;Ljava/lang/String;)V

    return v1

    .line 126
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/bughunter/a$a;->c(Ljava/lang/String;)V

    return v1

    .line 118
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/bughunter/a$a;->a(Ljava/util/List;)V

    return v1

    .line 108
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/bughunter/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 100
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/bughunter/a$a;->b(Ljava/lang/String;)V

    return v1

    .line 90
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/bughunter/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 82
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/bughunter/a$a;->a(Ljava/lang/String;)V

    return v1

    .line 77
    :cond_0
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
