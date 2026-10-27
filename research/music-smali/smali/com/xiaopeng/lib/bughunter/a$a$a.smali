.class Lcom/xiaopeng/lib/bughunter/a$a$a;
.super Ljava/lang/Object;
.source "IDataUploadInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/bughunter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaopeng/lib/bughunter/a;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 171
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw p1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 269
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 204
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/bughunter/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/lib/bughunter/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/a$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/a$a;->a()Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/bughunter/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw p1
.end method
