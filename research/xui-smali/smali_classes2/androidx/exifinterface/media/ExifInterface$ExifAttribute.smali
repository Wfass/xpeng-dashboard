.class Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .line 2937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2938
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 2939
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 2940
    iput-object p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 2941
    return-void
.end method

.method synthetic constructor <init>(II[BLandroidx/exifinterface/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroidx/exifinterface/media/ExifInterface$1;

    .line 2932
    invoke-direct {p0, p1, p2, p3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .param p1, "x1"    # Ljava/nio/ByteOrder;

    .line 2932
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 2987
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    .line 2988
    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    move-object v0, v2

    .line 2989
    .local v0, "bytes":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 2991
    .end local v0    # "bytes":[B
    :cond_0
    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2992
    .local v0, "ascii":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3041
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3031
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3033
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3034
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 3035
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 3034
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3037
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2982
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 5
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2972
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2974
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2975
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 2976
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2975
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2978
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3027
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3016
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3018
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3019
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 3020
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3021
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3019
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3023
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 2996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2997
    .local v0, "ascii":[B
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2968
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2958
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2960
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2961
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 2962
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2961
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2964
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3012
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3001
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3003
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3004
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 3005
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3006
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3004
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3008
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2954
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2944
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2946
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2947
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 2948
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2947
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2950
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 17
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    move-object/from16 v1, p0

    .line 3050
    const/4 v2, 0x0

    move-object v3, v2

    .line 3052
    .local v3, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 3053
    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3054
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3155
    nop

    .line 3161
    nop

    .line 3163
    :try_start_2
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto/16 :goto_18

    .line 3148
    :pswitch_0
    :try_start_3
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [D

    move-object v6, v0

    .line 3149
    .local v6, "values":[D
    nop

    .local v5, "i":I
    :goto_0
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_0

    .line 3150
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3149
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 3152
    .end local v5    # "i":I
    :cond_0
    nop

    .line 3161
    nop

    .line 3163
    :try_start_4
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3166
    goto :goto_1

    .line 3164
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 3141
    .end local v6    # "values":[D
    :pswitch_1
    :try_start_5
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [D

    move-object v6, v0

    .line 3142
    .restart local v6    # "values":[D
    nop

    .restart local v5    # "i":I
    :goto_2
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_1

    .line 3143
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v5

    float-to-double v7, v5

    aput-wide v7, v6, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3142
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 3145
    .end local v5    # "i":I
    :cond_1
    nop

    .line 3161
    nop

    .line 3163
    :try_start_6
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 3166
    goto :goto_3

    .line 3164
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object v6

    .line 3132
    .end local v6    # "values":[D
    :pswitch_2
    :try_start_7
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move-object v6, v0

    .line 3133
    .local v6, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    nop

    .restart local v5    # "i":I
    :goto_4
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_2

    .line 3134
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v13, v5

    .line 3135
    .local v13, "numerator":J
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v10, v5

    .line 3136
    .local v10, "denominator":J
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v12, 0x0

    move-object v7, v5

    move-wide v8, v13

    move-wide v15, v10

    .end local v10    # "denominator":J
    .local v15, "denominator":J
    invoke-direct/range {v7 .. v12}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v5, v6, v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3133
    .end local v13    # "numerator":J
    .end local v15    # "denominator":J
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .line 3138
    .end local v5    # "i":I
    :cond_2
    nop

    .line 3161
    nop

    .line 3163
    :try_start_8
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 3166
    goto :goto_5

    .line 3164
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-object v6

    .line 3125
    .end local v6    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_3
    :try_start_9
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [I

    move-object v6, v0

    .line 3126
    .local v6, "values":[I
    nop

    .restart local v5    # "i":I
    :goto_6
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_3

    .line 3127
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    aput v5, v6, v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3126
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_6

    .line 3129
    .end local v5    # "i":I
    :cond_3
    nop

    .line 3161
    nop

    .line 3163
    :try_start_a
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 3166
    goto :goto_7

    .line 3164
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    return-object v6

    .line 3118
    .end local v6    # "values":[I
    :pswitch_4
    :try_start_b
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [I

    move-object v6, v0

    .line 3119
    .restart local v6    # "values":[I
    nop

    .restart local v5    # "i":I
    :goto_8
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_4

    .line 3120
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    aput v5, v6, v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3119
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_8

    .line 3122
    .end local v5    # "i":I
    :cond_4
    nop

    .line 3161
    nop

    .line 3163
    :try_start_c
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 3166
    goto :goto_9

    .line 3164
    :catch_4
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    return-object v6

    .line 3109
    .end local v6    # "values":[I
    :pswitch_5
    :try_start_d
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    move-object v6, v0

    .line 3110
    .local v6, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    nop

    .restart local v5    # "i":I
    :goto_a
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_5

    .line 3111
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 3112
    .local v8, "numerator":J
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    .line 3113
    .restart local v10    # "denominator":J
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v5, v6, v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3110
    .end local v8    # "numerator":J
    .end local v10    # "denominator":J
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_a

    .line 3115
    .end local v5    # "i":I
    :cond_5
    nop

    .line 3161
    nop

    .line 3163
    :try_start_e
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 3166
    goto :goto_b

    .line 3164
    :catch_5
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b
    return-object v6

    .line 3102
    .end local v6    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_6
    :try_start_f
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [J

    move-object v6, v0

    .line 3103
    .local v6, "values":[J
    nop

    .restart local v5    # "i":I
    :goto_c
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_6

    .line 3104
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    aput-wide v7, v6, v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 3103
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_c

    .line 3106
    .end local v5    # "i":I
    :cond_6
    nop

    .line 3161
    nop

    .line 3163
    :try_start_10
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 3166
    goto :goto_d

    .line 3164
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_d
    return-object v6

    .line 3095
    .end local v6    # "values":[J
    :pswitch_7
    :try_start_11
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [I

    move-object v6, v0

    .line 3096
    .local v6, "values":[I
    nop

    .restart local v5    # "i":I
    :goto_e
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v5, :cond_7

    .line 3097
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    aput v5, v6, v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 3096
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_e

    .line 3099
    .end local v5    # "i":I
    :cond_7
    nop

    .line 3161
    nop

    .line 3163
    :try_start_12
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 3166
    goto :goto_f

    .line 3164
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f
    return-object v6

    .line 3065
    .end local v6    # "values":[I
    :pswitch_8
    const/4 v0, 0x0

    .line 3066
    .local v0, "index":I
    :try_start_13
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$100()[B

    move-result-object v7

    array-length v7, v7

    if-lt v6, v7, :cond_a

    .line 3067
    const/4 v6, 0x1

    .line 3068
    .local v6, "same":Z
    nop

    .restart local v5    # "i":I
    :goto_10
    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$100()[B

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_9

    .line 3069
    iget-object v7, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v5

    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$100()[B

    move-result-object v8

    aget-byte v8, v8, v5

    if-eq v7, v8, :cond_8

    .line 3070
    const/4 v6, 0x0

    .line 3071
    goto :goto_11

    .line 3068
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 3074
    .end local v5    # "i":I
    :cond_9
    :goto_11
    if-eqz v6, :cond_a

    .line 3075
    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$100()[B

    move-result-object v5

    array-length v5, v5

    move v0, v5

    .line 3079
    .end local v6    # "same":Z
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v0

    .line 3080
    .end local v0    # "index":I
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    .local v6, "index":I
    :goto_12
    iget v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v6, v0, :cond_d

    .line 3081
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v0, v0, v6

    .line 3082
    .local v0, "ch":I
    if-nez v0, :cond_b

    .line 3083
    goto :goto_14

    .line 3085
    :cond_b
    const/16 v7, 0x20

    if-lt v0, v7, :cond_c

    .line 3086
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 3088
    :cond_c
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3090
    :goto_13
    add-int/lit8 v6, v6, 0x1

    .line 3091
    .end local v0    # "ch":I
    goto :goto_12

    .line 3092
    :cond_d
    :goto_14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3161
    nop

    .line 3163
    :try_start_14
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    .line 3166
    goto :goto_15

    .line 3164
    :catch_8
    move-exception v0

    move-object v2, v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v2, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_15
    return-object v7

    .line 3058
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "index":I
    :pswitch_9
    :try_start_15
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v0, v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_e

    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v0, v0, v5

    if-ltz v0, :cond_e

    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v0, v0, v5

    if-gt v0, v6, :cond_e

    .line 3059
    new-instance v7, Ljava/lang/String;

    new-array v0, v6, [C

    iget-object v6, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v5

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v0, v5

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3161
    nop

    .line 3163
    :try_start_16
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 3166
    goto :goto_16

    .line 3164
    :catch_9
    move-exception v0

    move-object v2, v0

    .line 3165
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v5, "IOException occurred while closing InputStream"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-object v7

    .line 3061
    :cond_e
    :try_start_17
    new-instance v5, Ljava/lang/String;

    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroidx/exifinterface/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 3161
    nop

    .line 3163
    :try_start_18
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    .line 3166
    goto :goto_17

    .line 3164
    :catch_a
    move-exception v0

    move-object v2, v0

    .line 3165
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v6, "IOException occurred while closing InputStream"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_17
    return-object v5

    :goto_18
    goto :goto_19

    .line 3164
    :catch_b
    move-exception v0

    move-object v5, v0

    .line 3165
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ExifInterface"

    const-string v6, "IOException occurred while closing InputStream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :goto_19
    return-object v2

    .line 3157
    :catch_c
    move-exception v0

    goto :goto_1b

    .line 3161
    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    :goto_1a
    move-object v2, v0

    goto :goto_1d

    .line 3157
    :catch_d
    move-exception v0

    move-object/from16 v4, p1

    :goto_1b
    move-object v5, v0

    .line 3158
    .local v5, "e":Ljava/io/IOException;
    :try_start_19
    const-string v0, "ExifInterface"

    const-string v6, "IOException occurred during reading a value"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 3159
    nop

    .line 3161
    if-eqz v3, :cond_f

    .line 3163
    :try_start_1a
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    .line 3166
    goto :goto_1c

    .line 3164
    :catch_e
    move-exception v0

    move-object v6, v0

    .line 3165
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ExifInterface"

    const-string v7, "IOException occurred while closing InputStream"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f
    :goto_1c
    return-object v2

    .line 3161
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_1a

    :goto_1d
    if-eqz v3, :cond_10

    .line 3163
    :try_start_1b
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    .line 3166
    goto :goto_1e

    .line 3164
    :catch_f
    move-exception v0

    move-object v5, v0

    .line 3165
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ExifInterface"

    const-string v6, "IOException occurred while closing InputStream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10
    :goto_1e
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3172
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3173
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 3176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3177
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 3179
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3180
    move-object v1, v0

    check-cast v1, [J

    .line 3181
    .local v1, "array":[J
    array-length v4, v1

    if-ne v4, v3, :cond_1

    .line 3182
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 3184
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3186
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 3187
    move-object v1, v0

    check-cast v1, [I

    .line 3188
    .local v1, "array":[I
    array-length v4, v1

    if-ne v4, v3, :cond_3

    .line 3189
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 3191
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3193
    .end local v1    # "array":[I
    :cond_4
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    .line 3194
    move-object v1, v0

    check-cast v1, [D

    .line 3195
    .local v1, "array":[D
    array-length v4, v1

    if-ne v4, v3, :cond_5

    .line 3196
    aget-wide v2, v1, v2

    return-wide v2

    .line 3198
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3200
    .end local v1    # "array":[D
    :cond_6
    instance-of v1, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v1, :cond_8

    .line 3201
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3202
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    array-length v4, v1

    if-ne v4, v3, :cond_7

    .line 3203
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    .line 3205
    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3207
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3174
    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3211
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3212
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 3215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3216
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3218
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3219
    move-object v1, v0

    check-cast v1, [J

    .line 3220
    .local v1, "array":[J
    array-length v4, v1

    if-ne v4, v3, :cond_1

    .line 3221
    aget-wide v2, v1, v2

    long-to-int v2, v2

    return v2

    .line 3223
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3225
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 3226
    move-object v1, v0

    check-cast v1, [I

    .line 3227
    .local v1, "array":[I
    array-length v4, v1

    if-ne v4, v3, :cond_3

    .line 3228
    aget v2, v1, v2

    return v2

    .line 3230
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3232
    .end local v1    # "array":[I
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3213
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3236
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3237
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3238
    return-object v1

    .line 3240
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3241
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3244
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3245
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 3246
    move-object v1, v0

    check-cast v1, [J

    .line 3247
    .local v1, "array":[J
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 3248
    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3249
    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-eq v4, v5, :cond_2

    .line 3250
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3247
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 3253
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3255
    .end local v1    # "array":[J
    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_7

    .line 3256
    move-object v1, v0

    check-cast v1, [I

    .line 3257
    .local v1, "array":[I
    nop

    .restart local v4    # "i":I
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_6

    .line 3258
    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3259
    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-eq v4, v5, :cond_5

    .line 3260
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    :cond_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 3263
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3265
    .end local v1    # "array":[I
    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_a

    .line 3266
    move-object v1, v0

    check-cast v1, [D

    .line 3267
    .local v1, "array":[D
    nop

    .restart local v4    # "i":I
    :goto_2
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_9

    .line 3268
    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3269
    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-eq v4, v5, :cond_8

    .line 3270
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3267
    :cond_8
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 3273
    .end local v4    # "i":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3275
    .end local v1    # "array":[D
    :cond_a
    instance-of v3, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v3, :cond_d

    .line 3276
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3277
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    nop

    .restart local v4    # "i":I
    :goto_3
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_c

    .line 3278
    aget-object v4, v1, v3

    iget-wide v4, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3279
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3280
    aget-object v4, v1, v3

    iget-wide v4, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3281
    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-eq v4, v5, :cond_b

    .line 3282
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3277
    :cond_b
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 3285
    .end local v4    # "i":I
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3287
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_d
    return-object v1
.end method

.method public size()I
    .locals 2

    .line 3291
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
