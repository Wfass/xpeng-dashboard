.class Lbug$a$a;
.super Ljava/lang/Object;
.source "IActorBridge.java"

# interfaces
.implements Lbug;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbug$a;
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lbug$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 4

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.speech.IActorBridge"

    .line 85
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    :goto_0
    iget-object p1, p0, Lbug$a$a;->a:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    iget-object v0, p0, Lbug$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
