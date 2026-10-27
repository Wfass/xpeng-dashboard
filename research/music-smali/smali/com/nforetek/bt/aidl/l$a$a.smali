.class Lcom/nforetek/bt/aidl/l$a$a;
.super Ljava/lang/Object;
.source "UiCommand.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/l$a;
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

    .line 2256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2257
    iput-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 4

    .line 6667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6672
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xa3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6673
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6678
    throw p1
.end method

.method public A()Z
    .locals 5

    .line 3125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3130
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3135
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3137
    throw v2
.end method

.method public B()Z
    .locals 5

    .line 3148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3152
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3153
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3158
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3160
    throw v2
.end method

.method public B(Ljava/lang/String;)Z
    .locals 4

    .line 6688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6694
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xa4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6696
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6699
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6701
    throw p1
.end method

.method public C()Z
    .locals 5

    .line 3171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3175
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3176
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3181
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3183
    throw v2
.end method

.method public C(Ljava/lang/String;)Z
    .locals 4

    .line 6714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6718
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6720
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xa5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6725
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6727
    throw p1
.end method

.method public D(Ljava/lang/String;)V
    .locals 4

    .line 6760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6763
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6765
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xa7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6771
    throw p1
.end method

.method public D()Z
    .locals 5

    .line 3194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3199
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3204
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3206
    throw v2
.end method

.method public E(Ljava/lang/String;)I
    .locals 4

    .line 6794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6798
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6800
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xa9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6807
    throw p1
.end method

.method public E()Z
    .locals 5

    .line 3227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3231
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3232
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3237
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3239
    throw v2
.end method

.method public F(Ljava/lang/String;)I
    .locals 4

    .line 6812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6816
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6818
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xaa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6825
    throw p1
.end method

.method public F()Z
    .locals 5

    .line 3257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3262
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3267
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3269
    throw v2
.end method

.method public G()Z
    .locals 5

    .line 3322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3326
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3327
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3332
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3334
    throw v2
.end method

.method public G(Ljava/lang/String;)Z
    .locals 4

    .line 7016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7022
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xb1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7027
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7029
    throw p1
.end method

.method public H(Ljava/lang/String;)V
    .locals 4

    .line 7100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7105
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xb5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7111
    throw p1
.end method

.method public H()Z
    .locals 5

    .line 3402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3407
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3412
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    throw v2
.end method

.method public I()Z
    .locals 5

    .line 3430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3435
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3437
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3440
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3442
    throw v2
.end method

.method public I(Ljava/lang/String;)Z
    .locals 4

    .line 7245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7249
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7251
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xbc

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7256
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7258
    throw p1
.end method

.method public J()Z
    .locals 5

    .line 3560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3564
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3565
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3570
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3572
    throw v2
.end method

.method public J(Ljava/lang/String;)Z
    .locals 4

    .line 7860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7864
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7866
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xcd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7867
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7871
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7873
    throw p1
.end method

.method public K()Z
    .locals 5

    .line 3584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3589
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3594
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3596
    throw v2
.end method

.method public K(Ljava/lang/String;)Z
    .locals 4

    .line 7895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7899
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7901
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xcf

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7903
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7906
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7908
    throw p1
.end method

.method public L()Z
    .locals 5

    .line 3608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3612
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3613
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3618
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    throw v2
.end method

.method public L(Ljava/lang/String;)Z
    .locals 4

    .line 7965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7969
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7971
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xd3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7973
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7976
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7978
    throw p1
.end method

.method public M()Ljava/lang/String;
    .locals 5

    .line 4024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4028
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4029
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4031
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4036
    throw v2
.end method

.method public M(Ljava/lang/String;)Z
    .locals 4

    .line 7983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7987
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7989
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xd4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7994
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7996
    throw p1
.end method

.method public N(Ljava/lang/String;)I
    .locals 4

    .line 8001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8005
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8007
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xd5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8014
    throw p1
.end method

.method public N()Z
    .locals 5

    .line 4113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4118
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4123
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4125
    throw v2
.end method

.method public O()Z
    .locals 5

    .line 4138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4142
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4143
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4148
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4150
    throw v2
.end method

.method public O(Ljava/lang/String;)Z
    .locals 4

    .line 8019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8023
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8025
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xd6

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8027
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 8030
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 8030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8032
    throw p1
.end method

.method public P()Z
    .locals 5

    .line 4221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4226
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4231
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4233
    throw v2
.end method

.method public P(Ljava/lang/String;)Z
    .locals 4

    .line 8071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8075
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8077
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xd9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8078
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8079
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 8082
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 8082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8084
    throw p1
.end method

.method public Q()Ljava/lang/String;
    .locals 5

    .line 4238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4243
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4245
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4250
    throw v2
.end method

.method public Q(Ljava/lang/String;)Z
    .locals 4

    .line 8158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8164
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xde

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8166
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 8169
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 8169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8171
    throw p1
.end method

.method public R()Ljava/lang/String;
    .locals 5

    .line 4273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4278
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4280
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4285
    throw v2
.end method

.method public S()Z
    .locals 5

    .line 4319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4324
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4329
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4331
    throw v2
.end method

.method public T()I
    .locals 5

    .line 4336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4341
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4348
    throw v2
.end method

.method public U()Z
    .locals 5

    .line 4358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4363
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4365
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4368
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    throw v2
.end method

.method public V()Z
    .locals 5

    .line 4380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4384
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4385
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4390
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4392
    throw v2
.end method

.method public W()Z
    .locals 5

    .line 4402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4407
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4412
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4414
    throw v2
.end method

.method public X()I
    .locals 5

    .line 4437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4441
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4442
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4449
    throw v2
.end method

.method public Y()I
    .locals 5

    .line 4497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4501
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4502
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4509
    throw v2
.end method

.method public Z()I
    .locals 5

    .line 4561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4565
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4566
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4573
    throw v2
.end method

.method public a()Ljava/lang/String;
    .locals 5

    .line 2269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2274
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    throw v2
.end method

.method public a(Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 7727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7731
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 7733
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7734
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7737
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7739
    :goto_0
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc7

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7741
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7746
    throw p1
.end method

.method public a(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 7759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7763
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7766
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7769
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 7772
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7773
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 7776
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7778
    :goto_1
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xc8

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7780
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7785
    throw p1
.end method

.method public a(II)V
    .locals 3

    .line 4545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4551
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x58

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4557
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5857
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x87

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5863
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 5881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5884
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5888
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x88

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5894
    throw p1
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 3

    .line 6192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6195
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6198
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x94

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6204
    throw p1
.end method

.method public a(B)Z
    .locals 4

    .line 3293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3299
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3304
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    throw p1
.end method

.method public a(BB)Z
    .locals 3

    .line 3372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3379
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x2f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3381
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 3384
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3386
    throw p1
.end method

.method public a(BIJ)Z
    .locals 3

    .line 3785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3789
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3792
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3793
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x3b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 3798
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3800
    throw p1
.end method

.method public a(BJ)Z
    .locals 3

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3500
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3501
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 3506
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3508
    throw p1
.end method

.method public a(F)Z
    .locals 4

    .line 2673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2677
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2679
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2684
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2686
    throw p1
.end method

.method public a(I)Z
    .locals 4

    .line 2703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2707
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2709
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2714
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2716
    throw p1
.end method

.method public a(IIII)Z
    .locals 3

    .line 6388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6392
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6395
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6396
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6397
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x9c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6399
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 6402
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 6402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6404
    throw p1
.end method

.method public a(IJB)Z
    .locals 3

    .line 3746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3750
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3752
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3753
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 3754
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x3a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 3759
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 3759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3761
    throw p1
.end method

.method public a(ILandroid/os/ParcelUuid;)Z
    .locals 4

    .line 7274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 7281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7282
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7285
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7287
    :goto_0
    iget-object p2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xbd

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 7292
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7294
    throw p1
.end method

.method public a(Landroid/os/ParcelUuid;I)Z
    .locals 4

    .line 7424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7428
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7430
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7431
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7434
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7436
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7437
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xbf

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7442
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7444
    throw p1
.end method

.method public a(Landroid/os/ParcelUuid;II)Z
    .locals 4

    .line 7361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7365
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7367
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7368
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7371
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7373
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7374
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7375
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xbe

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7380
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7382
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/a;)Z
    .locals 4

    .line 2475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2479
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2480
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/a;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2481
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 2486
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2488
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/b;)Z
    .locals 4

    .line 2747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2751
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2752
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/b;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2753
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 2758
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/c;)Z
    .locals 4

    .line 3981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3985
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3986
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/c;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3987
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 3992
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3994
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/d;)Z
    .locals 4

    .line 7175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7180
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/d;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7181
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xb9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 7186
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7188
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/e;)Z
    .locals 4

    .line 4638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4643
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/e;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4644
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4646
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 4649
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4651
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/f;)Z
    .locals 4

    .line 6216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6220
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6221
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/f;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6222
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x95

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6224
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6227
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6229
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/g;)Z
    .locals 4

    .line 6449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6453
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6454
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/g;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6455
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x9e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6460
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6462
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/h;)Z
    .locals 4

    .line 6966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6970
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6971
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/h;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6972
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xaf

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6974
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6977
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6979
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/i;)Z
    .locals 4

    .line 5319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5324
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/i;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5325
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x7c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 5330
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5332
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/j;)Z
    .locals 4

    .line 6043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6047
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6048
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/j;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6049
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x8e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6054
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6056
    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/k;)Z
    .locals 4

    .line 7790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7794
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7795
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/k;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7796
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7797
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 7801
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7803
    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2589
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2591
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2596
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2598
    throw p1
.end method

.method public a(Ljava/lang/String;II)Z
    .locals 3

    .line 5468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5472
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5475
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5476
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x81

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5478
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 5481
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 5481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5483
    throw p1
.end method

.method public a(Ljava/lang/String;IIII)Z
    .locals 3

    .line 5540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5544
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5547
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5548
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5549
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5550
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x82

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 5555
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 5555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5557
    throw p1
.end method

.method public a(Ljava/lang/String;III[B)Z
    .locals 3

    .line 7628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7632
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7634
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7635
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7636
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7637
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7638
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xc4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 7643
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 7643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7645
    throw p1
.end method

.method public a(Ljava/lang/String;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Z[B)Z
    .locals 3

    .line 7663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7667
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7669
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 7671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7672
    invoke-virtual {p3, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7675
    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p4, :cond_1

    .line 7678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7679
    invoke-virtual {p4, v0, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 7682
    :cond_1
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p5, :cond_2

    move p3, p1

    goto :goto_2

    :cond_2
    move p3, p2

    .line 7684
    :goto_2
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7685
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7686
    iget-object p3, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p4, 0xc5

    invoke-interface {p3, p4, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    move p1, p2

    .line 7691
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7693
    throw p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 6871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6875
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6877
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6878
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6879
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xac

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6880
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 6884
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 6884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6886
    throw p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 3

    .line 6511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6515
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6517
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6518
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6519
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6520
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xa0

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6522
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 6525
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 6525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6527
    throw p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 3

    .line 6903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6907
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6910
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 6911
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6912
    iget-object p3, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p4, 0xad

    invoke-interface {p3, p4, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    .line 6917
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6919
    throw p1
.end method

.method public a(Ljava/lang/String;IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    .line 6595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6599
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 6602
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6603
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6604
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6605
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6606
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6607
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6608
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6609
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6610
    invoke-virtual {v0, p11}, Landroid/os/Parcel;->writeInt(I)V

    .line 6611
    invoke-virtual {v0, p12}, Landroid/os/Parcel;->writeInt(I)V

    .line 6612
    iget-object p3, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p4, 0xa1

    invoke-interface {p3, p4, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6614
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    .line 6617
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6619
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 6839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6843
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6845
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6846
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6847
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0xab

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6848
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6849
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 6852
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 6852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6854
    throw p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 4

    .line 6640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 6646
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6647
    iget-object p2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa2

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6649
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 6652
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6654
    throw p1
.end method

.method public a(Z)Z
    .locals 5

    .line 4050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4054
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 4055
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x43

    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 4061
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 4061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4063
    throw p1
.end method

.method public aA()Ljava/lang/String;
    .locals 5

    .line 5401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5406
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5408
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5413
    throw v2
.end method

.method public aB()V
    .locals 5

    .line 5959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5962
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5963
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5964
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 5967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5969
    throw v2
.end method

.method public aC()V
    .locals 5

    .line 6146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6149
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6150
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 6154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6156
    throw v2
.end method

.method public aD()I
    .locals 5

    .line 6259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6264
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6271
    throw v2
.end method

.method public aE()Z
    .locals 5

    .line 6281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6286
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 6291
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6293
    throw v2
.end method

.method public aF()Ljava/lang/String;
    .locals 5

    .line 6298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6303
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6305
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6310
    throw v2
.end method

.method public aG()V
    .locals 5

    .line 6739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6742
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6743
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 6747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6749
    throw v2
.end method

.method public aH()V
    .locals 5

    .line 6780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6783
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6784
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6785
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 6788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6790
    throw v2
.end method

.method public aI()Ljava/lang/String;
    .locals 5

    .line 7034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7038
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7039
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7040
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7041
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 7044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7046
    throw v2
.end method

.method public aJ()Z
    .locals 5

    .line 7083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7087
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7088
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7093
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7095
    throw v2
.end method

.method public aK()Ljava/lang/String;
    .locals 5

    .line 7115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7120
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7122
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 7125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7127
    throw v2
.end method

.method public aL()V
    .locals 5

    .line 7132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7135
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7136
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 7140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7142
    throw v2
.end method

.method public aM()Z
    .locals 5

    .line 7150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7155
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7157
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7160
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7162
    throw v2
.end method

.method public aN()I
    .locals 5

    .line 7218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7223
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7230
    throw v2
.end method

.method public aO()Z
    .locals 5

    .line 7455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7459
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7460
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7465
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7467
    throw v2
.end method

.method public aP()Z
    .locals 5

    .line 7517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7521
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7522
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7527
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7529
    throw v2
.end method

.method public aQ()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 7703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7707
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7708
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7710
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 7713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7715
    throw v2
.end method

.method public aR()Z
    .locals 5

    .line 7826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7830
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7831
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7833
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7836
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7838
    throw v2
.end method

.method public aS()Z
    .locals 5

    .line 7843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7847
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7848
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7853
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7855
    throw v2
.end method

.method public aT()Z
    .locals 5

    .line 7878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7882
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7883
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7885
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7888
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7890
    throw v2
.end method

.method public aU()Z
    .locals 5

    .line 7931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7935
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7936
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7937
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7938
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7941
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7943
    throw v2
.end method

.method public aV()Z
    .locals 5

    .line 7948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7952
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7953
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 7958
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7960
    throw v2
.end method

.method public aW()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/UsbBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 8037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8041
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8042
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8044
    sget-object v2, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8049
    throw v2
.end method

.method public aX()Ljava/lang/String;
    .locals 5

    .line 8054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8058
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8059
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8060
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8061
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8066
    throw v2
.end method

.method public aY()Ljava/lang/String;
    .locals 5

    .line 8089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8093
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8094
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8096
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8101
    throw v2
.end method

.method public aZ()Ljava/lang/String;
    .locals 5

    .line 8106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8111
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8113
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8118
    throw v2
.end method

.method public aa()I
    .locals 5

    .line 4578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4582
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4583
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4590
    throw v2
.end method

.method public ab()I
    .locals 5

    .line 4595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4599
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4600
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4607
    throw v2
.end method

.method public ac()Ljava/lang/String;
    .locals 5

    .line 4612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4616
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4617
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4619
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4624
    throw v2
.end method

.method public ad()I
    .locals 5

    .line 4681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4685
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4686
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4693
    throw v2
.end method

.method public ae()Z
    .locals 5

    .line 4703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4707
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4708
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4713
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4715
    throw v2
.end method

.method public af()Ljava/lang/String;
    .locals 5

    .line 4720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4725
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4726
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4727
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4732
    throw v2
.end method

.method public ag()I
    .locals 5

    .line 4737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4741
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4742
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4744
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4749
    throw v2
.end method

.method public ah()I
    .locals 5

    .line 4806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4810
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4811
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4818
    throw v2
.end method

.method public ai()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/NfHfpClientCall;",
            ">;"
        }
    .end annotation

    .line 4828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4832
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4833
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4835
    sget-object v2, Lcom/nforetek/bt/aidl/NfHfpClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4840
    throw v2
.end method

.method public aj()Z
    .locals 5

    .line 4850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4855
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4860
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4862
    throw v2
.end method

.method public ak()I
    .locals 5

    .line 4867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4871
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4872
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4874
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4879
    throw v2
.end method

.method public al()Z
    .locals 5

    .line 4890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4894
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4895
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4900
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4902
    throw v2
.end method

.method public am()Z
    .locals 5

    .line 4913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4917
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4918
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4923
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4925
    throw v2
.end method

.method public an()Z
    .locals 5

    .line 4965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4969
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4970
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4971
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4972
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 4975
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4977
    throw v2
.end method

.method public ao()Z
    .locals 5

    .line 5043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5047
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5048
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5050
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5053
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5055
    throw v2
.end method

.method public ap()Z
    .locals 5

    .line 5068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5072
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5073
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5074
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5075
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5078
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5080
    throw v2
.end method

.method public aq()Z
    .locals 5

    .line 5118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5122
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5123
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5124
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5125
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5128
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5130
    throw v2
.end method

.method public ar()Z
    .locals 5

    .line 5142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5146
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5147
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5152
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5154
    throw v2
.end method

.method public as()Ljava/lang/String;
    .locals 5

    .line 5159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5163
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5164
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5166
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5171
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2261
    iget-object v0, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 5

    .line 5176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5181
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5183
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5188
    throw v2
.end method

.method public au()V
    .locals 5

    .line 5223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5226
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5227
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 5231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5233
    throw v2
.end method

.method public av()V
    .locals 5

    .line 5240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5244
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 5248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5250
    throw v2
.end method

.method public aw()Z
    .locals 5

    .line 5257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5262
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5267
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5269
    throw v2
.end method

.method public ax()Z
    .locals 5

    .line 5293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5298
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5303
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5305
    throw v2
.end method

.method public ay()I
    .locals 5

    .line 5362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5366
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5367
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5374
    throw v2
.end method

.method public az()Z
    .locals 5

    .line 5384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5388
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5389
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 5394
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5396
    throw v2
.end method

.method public b()Z
    .locals 5

    .line 2289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2293
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2294
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2299
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    throw v2
.end method

.method public b(B)Z
    .locals 4

    .line 3535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3539
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3541
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3543
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3546
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3548
    throw p1
.end method

.method public b(BIJ)Z
    .locals 3

    .line 3834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3838
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3840
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3841
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3842
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x3c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 3847
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 3847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3849
    throw p1
.end method

.method public b(I)Z
    .locals 4

    .line 3638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3644
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3649
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3651
    throw p1
.end method

.method public b(II)Z
    .locals 3

    .line 6421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6428
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x9d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 6433
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 6433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6435
    throw p1
.end method

.method public b(ILandroid/os/ParcelUuid;)Z
    .locals 4

    .line 7483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7487
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 7490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7491
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7494
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7496
    :goto_0
    iget-object p2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc1

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 7501
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7503
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/a;)Z
    .locals 4

    .line 2500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2504
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2505
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/a;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2506
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 2511
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2513
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/b;)Z
    .locals 4

    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2776
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2777
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/b;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2778
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 2783
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2785
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/c;)Z
    .locals 4

    .line 4006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4010
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4011
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/c;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4012
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 4017
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4019
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/d;)Z
    .locals 4

    .line 7200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7204
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7205
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/d;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7206
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xba

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 7211
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7213
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/e;)Z
    .locals 4

    .line 4663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4667
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4668
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/e;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4669
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 4674
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4676
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/f;)Z
    .locals 4

    .line 6241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6246
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/f;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6247
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6252
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6254
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/g;)Z
    .locals 4

    .line 6474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6479
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/g;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6480
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x9f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6485
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6487
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/h;)Z
    .locals 4

    .line 6991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6995
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6996
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/h;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6997
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xb0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6998
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6999
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 7002
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7004
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/i;)Z
    .locals 4

    .line 5344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5349
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/i;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5350
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x7d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5352
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 5355
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5357
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/j;)Z
    .locals 4

    .line 6068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6072
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6073
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/j;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6074
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x8f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 6079
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6081
    throw p1
.end method

.method public b(Lcom/nforetek/bt/aidl/k;)Z
    .locals 4

    .line 7808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7812
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7813
    invoke-interface {p1}, Lcom/nforetek/bt/aidl/k;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7814
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7816
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 7819
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 7819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7821
    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 2614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2618
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2620
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2625
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2627
    throw p1
.end method

.method public b(Ljava/lang/String;II)Z
    .locals 3

    .line 5610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5617
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5618
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x83

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5619
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5620
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 5623
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5625
    throw p1
.end method

.method public b(Ljava/lang/String;IIII)Z
    .locals 3

    .line 5680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5684
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5686
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5687
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5688
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5689
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5690
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x84

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 5695
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 5695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5697
    throw p1
.end method

.method public b(Z)Z
    .locals 5

    .line 5202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5206
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 5207
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5208
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x76

    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 5213
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 5213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5215
    throw p1
.end method

.method public ba()I
    .locals 5

    .line 8123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8128
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8135
    throw v2
.end method

.method public c(Z)V
    .locals 4

    .line 5278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5281
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 5282
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5283
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5289
    throw p1
.end method

.method public c()Z
    .locals 5

    .line 2309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2313
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2314
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2319
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2321
    throw v2
.end method

.method public c(B)Z
    .locals 4

    .line 3710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3714
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3716
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3721
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3723
    throw p1
.end method

.method public c(BIJ)Z
    .locals 3

    .line 3916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3920
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3923
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3924
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x3e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 3929
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 3929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3931
    throw p1
.end method

.method public c(I)Z
    .locals 4

    .line 3674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3678
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3680
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3685
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3687
    throw p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    .line 2854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2858
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2860
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2862
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2865
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2867
    throw p1
.end method

.method public c(Ljava/lang/String;II)Z
    .locals 3

    .line 5750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5754
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5756
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5757
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5758
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x85

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 5763
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 5763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5765
    throw p1
.end method

.method public c(Ljava/lang/String;IIII)Z
    .locals 3

    .line 5820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5824
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5827
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5828
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5829
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5830
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x86

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5831
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5832
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 5835
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_0
    move-exception p1

    .line 5835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5837
    throw p1
.end method

.method public d()Z
    .locals 5

    .line 2329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2333
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2334
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2339
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2341
    throw v2
.end method

.method public d(B)Z
    .locals 4

    .line 3954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3958
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3960
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3962
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3965
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3967
    throw p1
.end method

.method public d(I)Z
    .locals 4

    .line 4085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4089
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4091
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4096
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4098
    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 4

    .line 2880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2884
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2886
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2888
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2891
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2893
    throw p1
.end method

.method public d(Z)Z
    .locals 5

    .line 7058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7062
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 7063
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7064
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xb3

    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7066
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7069
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7071
    throw p1
.end method

.method public e()Z
    .locals 5

    .line 2349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2353
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2354
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2359
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2361
    throw v2
.end method

.method public e(I)Z
    .locals 4

    .line 4479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4483
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4485
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x56

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4490
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4492
    throw p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 4

    .line 2906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2912
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2917
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    throw p1
.end method

.method public e(Z)Z
    .locals 5

    .line 7544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 7549
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7550
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xc3

    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7555
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7555
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7557
    throw p1
.end method

.method public f()Z
    .locals 5

    .line 2369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2373
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2374
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2379
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2381
    throw v2
.end method

.method public f(I)Z
    .locals 4

    .line 5017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5021
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5023
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5024
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 5028
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5030
    throw p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 4

    .line 2932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2938
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2943
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 2943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2945
    throw p1
.end method

.method public f(Z)Z
    .locals 5

    .line 7913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 7917
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 7918
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7919
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xd0

    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7924
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7926
    throw p1
.end method

.method public g()Z
    .locals 5

    .line 2389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2393
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2396
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2399
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    throw v2
.end method

.method public g(I)Z
    .locals 4

    .line 6016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6022
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x8d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6027
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6029
    throw p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 4

    .line 3872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3876
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3878
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3883
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 3883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3885
    throw p1
.end method

.method public h()Z
    .locals 5

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2413
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2414
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2419
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2421
    throw v2
.end method

.method public h(I)Z
    .locals 4

    .line 6939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6945
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xae

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6950
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6952
    throw p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 4

    .line 4166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4170
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4172
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4177
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    throw p1
.end method

.method public i(I)I
    .locals 4

    .line 8140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 8144
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8146
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0xdd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8153
    throw p1
.end method

.method public i()Z
    .locals 5

    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2433
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2434
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2439
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    throw v2
.end method

.method public i(Ljava/lang/String;)Z
    .locals 4

    .line 4195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4201
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4206
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4208
    throw p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4261
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4263
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4268
    throw p1
.end method

.method public j()Z
    .locals 5

    .line 2449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2453
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2454
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2459
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2461
    throw v2
.end method

.method public k()I
    .locals 5

    .line 2518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2522
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2523
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2524
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2525
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2530
    throw v2
.end method

.method public k(Ljava/lang/String;)Z
    .locals 4

    .line 4296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4300
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4302
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x4d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4307
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4309
    throw p1
.end method

.method public l(Ljava/lang/String;)I
    .locals 4

    .line 4419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4425
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x53

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 4430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4432
    throw p1
.end method

.method public l()Z
    .locals 5

    .line 2540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2544
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2545
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2550
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2552
    throw v2
.end method

.method public m(Ljava/lang/String;)I
    .locals 4

    .line 4454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4458
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4460
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x55

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4467
    throw p1
.end method

.method public m()Ljava/lang/String;
    .locals 5

    .line 2557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2562
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2563
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    throw v2
.end method

.method public n()V
    .locals 5

    .line 2635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2638
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2639
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2645
    throw v2
.end method

.method public n(Ljava/lang/String;)Z
    .locals 4

    .line 4762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4766
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4768
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x63

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4770
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4773
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4775
    throw p1
.end method

.method public o()V
    .locals 5

    .line 2652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2655
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2656
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2662
    throw v2
.end method

.method public o(Ljava/lang/String;)Z
    .locals 4

    .line 4788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4792
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4794
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4799
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4801
    throw p1
.end method

.method public p()I
    .locals 5

    .line 2721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2725
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2726
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2733
    throw v2
.end method

.method public p(Ljava/lang/String;)Z
    .locals 4

    .line 4939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4945
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 4950
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4952
    throw p1
.end method

.method public q()I
    .locals 5

    .line 2790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2794
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2795
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2802
    throw v2
.end method

.method public q(Ljava/lang/String;)Z
    .locals 4

    .line 4991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 4995
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4997
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x6d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4998
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4999
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 5002
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5004
    throw p1
.end method

.method public r()Z
    .locals 5

    .line 2812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2816
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2817
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2822
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    throw v2
.end method

.method public r(Ljava/lang/String;)Z
    .locals 4

    .line 5093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5097
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5099
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 5104
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5106
    throw p1
.end method

.method public s()Ljava/lang/String;
    .locals 5

    .line 2829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2833
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2834
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2841
    throw v2
.end method

.method public s(Ljava/lang/String;)V
    .locals 4

    .line 5915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5918
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5920
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5926
    throw p1
.end method

.method public t(Ljava/lang/String;)V
    .locals 4

    .line 5938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5941
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5943
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x8a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5949
    throw p1
.end method

.method public t()Z
    .locals 5

    .line 2960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2964
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2965
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2970
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2972
    throw v2
.end method

.method public u()Z
    .locals 5

    .line 2985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 2989
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2990
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 2995
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2997
    throw v2
.end method

.method public u(Ljava/lang/String;)Z
    .locals 4

    .line 5981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 5985
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5987
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x8c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 5992
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5994
    throw p1
.end method

.method public v()Z
    .locals 5

    .line 3010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3014
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3015
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3016
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3020
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3022
    throw v2
.end method

.method public v(Ljava/lang/String;)Z
    .locals 4

    .line 6095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6099
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6101
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x90

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6106
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6108
    throw p1
.end method

.method public w()Z
    .locals 5

    .line 3033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3038
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3040
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3043
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3045
    throw v2
.end method

.method public w(Ljava/lang/String;)Z
    .locals 4

    .line 6122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6126
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6128
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x91

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6133
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6135
    throw p1
.end method

.method public x()Z
    .locals 5

    .line 3056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3061
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3066
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    throw v2
.end method

.method public x(Ljava/lang/String;)Z
    .locals 4

    .line 6166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6170
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6172
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x93

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6177
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6179
    throw p1
.end method

.method public y()Z
    .locals 5

    .line 3079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3083
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3089
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3091
    throw v2
.end method

.method public y(Ljava/lang/String;)Z
    .locals 4

    .line 6326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6330
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6332
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x9a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6337
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6339
    throw p1
.end method

.method public z()Z
    .locals 5

    .line 3102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 3106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3107
    iget-object v2, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 3112
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3114
    throw v2
.end method

.method public z(Ljava/lang/String;)Z
    .locals 4

    .line 6355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    .line 6359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6361
    iget-object p1, p0, Lcom/nforetek/bt/aidl/l$a$a;->a:Landroid/os/IBinder;

    const/16 v2, 0x9b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 6366
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 6366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6368
    throw p1
.end method
