.class Lcom/nforetek/bt/aidl/f$a$a;
.super Ljava/lang/Object;
.source "UiCallbackHid.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/nforetek/bt/aidl/f$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackHid"

    .line 112
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/nforetek/bt/aidl/f$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    throw v2
.end method

.method public a(Ljava/lang/String;III)V
    .locals 3

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackHid"

    .line 149
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object p1, p0, Lcom/nforetek/bt/aidl/f$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/nforetek/bt/aidl/f$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
