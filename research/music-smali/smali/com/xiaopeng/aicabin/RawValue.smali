.class public Lcom/xiaopeng/aicabin/RawValue;
.super Ljava/lang/Object;
.source "RawValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BINDER:Ljava/lang/String; = "binder"

.field public static final BINDER_NAME:Ljava/lang/String; = "name"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/aicabin/RawValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mTimestamp:J

.field private mValue:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/aicabin/RawValue;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/xiaopeng/aicabin/RawValue$a;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/RawValue$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/RawValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mTimestamp:J

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/RawValue;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/aicabin/RawValue;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefVal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getDefVal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "default"

    .line 2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/RawValue;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mTimestamp:J

    return-wide v0
.end method

.method public getVal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;
    .locals 1

    const-string v0, "default"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/aicabin/RawValue;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;

    return-object p0
.end method

.method public putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/RawValue;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 4
    :cond_1
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 6
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 8
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 10
    :cond_4
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 12
    :cond_5
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 14
    :cond_6
    instance-of v0, p2, Landroid/util/Size;

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto/16 :goto_0

    .line 16
    :cond_7
    instance-of v0, p2, Landroid/util/SizeF;

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/util/SizeF;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    goto/16 :goto_0

    .line 18
    :cond_8
    instance-of v0, p2, [Landroid/os/Parcelable;

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 20
    :cond_9
    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 22
    :cond_a
    instance-of v0, p2, Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 24
    :cond_b
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_c

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 26
    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_d

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 28
    :cond_d
    instance-of v0, p2, [S

    if-eqz v0, :cond_e

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [S

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 30
    :cond_e
    instance-of v0, p2, [C

    if-eqz v0, :cond_f

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [C

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 32
    :cond_f
    instance-of v0, p2, [F

    if-eqz v0, :cond_10

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [F

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 34
    :cond_10
    instance-of v0, p2, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 36
    :cond_11
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 38
    :cond_12
    instance-of v0, p2, Landroid/os/Binder;

    if-eqz v0, :cond_13

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Binder;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 40
    :cond_13
    instance-of v0, p2, Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 42
    :cond_14
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 44
    :cond_15
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 46
    :cond_16
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_17

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 48
    :cond_17
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_18

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 50
    :cond_18
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_19
    instance-of v0, p2, [Z

    if-eqz v0, :cond_1a

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [Z

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 54
    :cond_1a
    instance-of v0, p2, [I

    if-eqz v0, :cond_1b

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 56
    :cond_1b
    instance-of v0, p2, [J

    if-eqz v0, :cond_1c

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [J

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 58
    :cond_1c
    instance-of v0, p2, [D

    if-eqz v0, :cond_1d

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [D

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 60
    :cond_1d
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 63
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/aicabin/RawValue;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaopeng/aicabin/RawValue;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/xiaopeng/aicabin/RawValue;->mValue:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
