.class Lcom/xiaopeng/appstore/storeprovider/b$a$a;
.super Ljava/lang/Object;
.source "IAssembleListener.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaopeng/appstore/storeprovider/b;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/b$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 5

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IAssembleListener"

    .line 98
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p2, v0, v3}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/b$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/b$a;->a()Lcom/xiaopeng/appstore/storeprovider/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 109
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/b$a;->a()Lcom/xiaopeng/appstore/storeprovider/b;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/b;->a(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/b$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
