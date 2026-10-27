.class public Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
.super Ljava/lang/Object;
.source "ParcelableContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_BOOLEAN_ARRAY:I = -0x545400f9

.field private static final FLAG_BYTE_ARRAY:I = -0x455400ff

.field private static final FLAG_IBINDER_ARRAY:I = -0x545400f8

.field private static final FLAG_INT_ARRAY:I = -0x455400fe

.field private static final FLAG_LONG_ARRAY:I = -0x545400fa

.field private static final FLAG_PARCEL:I = -0x545400fc

.field private static final FLAG_PARCELABLE_ARRAY:I = -0x545400fb

.field private static final FLAG_STRING_ARRAY:I = -0x455400fd

.field private static final TAG:Ljava/lang/String; = "ParcelableContainer"


# instance fields
.field private mBooleans:[Z

.field private mBytes:[B

.field private mIBinders:[Landroid/os/IBinder;

.field private mInts:[I

.field private mLongs:[J

.field private mStrings:[Ljava/lang/String;

.field private parcel:Landroid/os/Parcel;

.field private parcelableArray:[Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean()Z
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-ne v3, v1, :cond_0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public getBooleanArray()[Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    return-object v0
.end method

.method public getByte()B
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-byte v1, v0, v1

    :cond_0
    return v1
.end method

.method public getBytes()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    return-object v0
.end method

.method public getIBinder()Landroid/os/IBinder;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIBinderArray()[Landroid/os/IBinder;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    return-object v0
.end method

.method public getInt()I
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method public getIntArray()[I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    return-object v0
.end method

.method public getLong()J
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getLongArray()[J
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    return-object v0
.end method

.method public getParcel()Landroid/os/Parcel;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParcelable(I)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I)TT;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getParcelableArray()[Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()[TT;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    return-object v0
.end method

.method public getParcelableList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 166
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 394
    sget-object v2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFromParcel,magic number not match:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_2

    .line 345
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    .line 342
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto/16 :goto_2

    .line 335
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    .line 337
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto/16 :goto_2

    .line 360
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    new-array v0, v0, [Landroid/os/IBinder;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBinderArray([Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 355
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 356
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    .line 357
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    goto :goto_2

    .line 350
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    .line 352
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    goto :goto_2

    .line 372
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    new-array v3, v0, [Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    :goto_1
    if-ge v5, v0, :cond_2

    .line 378
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 381
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 382
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v4, v3

    move-object v3, v6

    .line 385
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    .line 386
    iget-object v7, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    aput-object v6, v7, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 389
    sget-object v3, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read parcelable array e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    new-array v3, v0, [B

    .line 367
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcel:Landroid/os/Parcel;

    .line 369
    invoke-virtual {v4, v3, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    .line 402
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x545400fc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x455400ff
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    .line 233
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    .line 234
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcel:Landroid/os/Parcel;

    .line 236
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    .line 237
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    .line 238
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    .line 239
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    return-void
.end method

.method public setBoolean(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 200
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBooleanArray([Z)V

    return-void
.end method

.method public setBooleanArray([Z)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    return-void
.end method

.method public setByte(B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 49
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBytes([B)V

    return-void
.end method

.method public setBytes([B)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    return-void
.end method

.method public setIBinder(Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/IBinder;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 216
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIBinderArray([Landroid/os/IBinder;)V

    return-void
.end method

.method public setIBinderArray([Landroid/os/IBinder;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    return-void
.end method

.method public setInt(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 73
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    return-void
.end method

.method public setIntArray([I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    return-void
.end method

.method public setLong(J)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 180
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setLongArray([J)V

    return-void
.end method

.method public setLongArray([J)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    return-void
.end method

.method public setParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcel:Landroid/os/Parcel;

    return-void
.end method

.method public varargs setParcelable([Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    return-void
.end method

.method public setParcelableArray([Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    return-void
.end method

.method public setParcelableList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 141
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 97
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    return-void
.end method

.method public setStringArray([Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 272
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    if-eqz p2, :cond_0

    const p2, -0x455400ff

    .line 274
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 278
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    if-eqz p2, :cond_1

    const p2, -0x455400fe

    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mInts:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 284
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    if-eqz p2, :cond_2

    const p2, -0x455400fd

    .line 286
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mStrings:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 290
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcel:Landroid/os/Parcel;

    if-eqz p2, :cond_3

    const p2, -0x545400fc

    .line 291
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcel:Landroid/os/Parcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    .line 293
    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 296
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    if-eqz p2, :cond_4

    const p2, -0x545400fb

    .line 297
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    array-length p2, p2

    .line 299
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->parcelableArray:[Landroid/os/Parcelable;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    if-eqz p2, :cond_5

    const p2, -0x545400fa

    .line 308
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mLongs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 312
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    if-eqz p2, :cond_6

    const p2, -0x545400f9

    .line 313
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mBooleans:[Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 317
    :cond_6
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    if-eqz p2, :cond_7

    const p2, -0x545400f8

    .line 318
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->mIBinders:[Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method
