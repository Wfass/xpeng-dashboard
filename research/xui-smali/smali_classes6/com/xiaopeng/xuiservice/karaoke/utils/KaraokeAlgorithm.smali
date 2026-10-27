.class public Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;
.super Ljava/lang/Object;
.source "KaraokeAlgorithm.java"


# static fields
.field public static final DBG:Z = true

.field public static final LOG_FFT_SIZE:I = 0xa

.field public static final MAX_FFT_SIZE:I = 0x400

.field public static final TAG:Ljava/lang/String; = "KaraokeAlgorithm"

.field static hiNumber:I

.field public static final mCaptureSize:I

.field static twiddle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "persist.fft.capture.size"

    const/16 v1, 0x400

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mCaptureSize:I

    .line 27
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->twiddle:[I

    .line 198
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->hiNumber:I

    return-void

    nop

    :array_0
    .array-data 4
        0x8000
        -0xc87fff
        -0x1917ffe
        -0x25a7ffa
        -0x3237ff6
        -0x3ec7ff1
        -0x4b57fea
        -0x57e7fe2
        -0x6477fd9
        -0x7107fce
        -0x7d87fc2
        -0x8a17fb5
        -0x96a7fa7
        -0xa327f98
        -0xafa7f87
        -0xbc37f75
        -0xc8b7f62
        -0xd537f4e
        -0xe1b7f38
        -0xee37f22
        -0xfaa7f0a
        -0x10727ef0
        -0x11397ed6
        -0x12007eba
        -0x12c77e9d
        -0x138e7e7f
        -0x14547e60
        -0x151b7e3f
        -0x15e17e1e
        -0x16a77dfb
        -0x176d7dd6
        -0x18327db1
        -0x18f87d8a
        -0x19bd7d63
        -0x1a827d3a
        -0x1b467d0f
        -0x1c0b7ce4
        -0x1ccf7cb7
        -0x1d927c89
        -0x1e567c5a
        -0x1f197c2a
        -0x1fdc7bf9
        -0x209e7bc6
        -0x21617b92
        -0x22237b5d
        -0x22e47b27
        -0x23a67aef
        -0x24667ab7
        -0x25277a7d
        -0x25e77a42
        -0x26a77a06
        -0x276779c9
        -0x2826798a
        -0x28e4794a
        -0x29a3790a
        -0x2a6178c8
        -0x2b1e7885
        -0x2bdb7840
        -0x2c9877fb
        -0x2d5477b4
        -0x2e10776c
        -0x2ecb7723
        -0x2f8676d9
        -0x3041768e
        -0x30fb7642
        -0x31b475f4
        -0x326d75a6
        -0x33267556    # -1.1405448E8f
        -0x33de7505    # -4.23475E7f
        -0x349674b3    # -1.5305549E7f
        -0x354d7460    # -5850576.0f
        -0x3603740b
        -0x36b973b6
        -0x376f735f
        -0x38247308
        -0x38d872af
        -0x398c7255
        -0x3a3f71fa
        -0x3af2719e
        -0x3ba47141
        -0x3c5670e3
        -0x3d077083
        -0x3db77023
        -0x3e676fc2
        -0x3f166f5f
        -0x3fc56efb
        -0x40736e97
        -0x41206e31
        -0x41cd6dca
        -0x42796d62
        -0x43256cf9
        -0x43d06c8f
        -0x447a6c24
        -0x45236bb8
        -0x45cc6b4b
        -0x46746add
        -0x471c6a6e
        -0x47c369fd
        -0x4869698c
        -0x490e691a    # -7.1999266E-6f
        -0x49b368a7
        -0x4a576832
        -0x4afa67bd
        -0x4b9d6747
        -0x4c3f66d0
        -0x4ce06657
        -0x4d8065de    # -1.4877999E-8f
        -0x4e206564
        -0x4ebf64e9
        -0x4f5d646c
        -0x4ffa63ef
        -0x50976371
        -0x513362f2
        -0x51ce6272
        -0x526861f1
        -0x5302616f
        -0x539a60ec
        -0x54326068
        -0x54c95fe4
        -0x555f5f5e
        -0x55f55ed7
        -0x56895e50
        -0x571d5dc8
        -0x57b05d3e
        -0x58425cb4
        -0x58d35c29
        -0x59635b9d
        -0x59f35b10
        -0x5a815a82
        -0x5b0f59f4
        -0x5b9c5964
        -0x5c2858d4
        -0x5cb35843
        -0x5d3d57b1
        -0x5dc7571e
        -0x5e4f568a
        -0x5ed655f6
        -0x5f5d5560
        -0x5fe354ca
        -0x60675433
        -0x60eb539b
        -0x616e5303
        -0x61f05269
        -0x627151cf
        -0x62f15134
        -0x63705098
        -0x63ee4ffb
        -0x646b4f5e
        -0x64e84ec0
        -0x65634e21
        -0x65dd4d81
        -0x66564ce1
        -0x66cf4c40
        -0x67464b9e
        -0x67bc4afb
        -0x68314a58
        -0x68a649b4
        -0x6919490f
        -0x698b486a
        -0x69fc47c4
        -0x6a6d471d
        -0x6adc4675
        -0x6b4a45cd
        -0x6bb74524
        -0x6c23447b
        -0x6c8e43d1
        -0x6cf84326
        -0x6d61427a
        -0x6dc941ce
        -0x6e304121
        -0x6e964074
        -0x6efa3fc6
        -0x6f5e3f17
        -0x6fc13e68
        -0x70223db8
        -0x70823d08
        -0x70e23c57
        -0x71403ba5
        -0x719d3af3
        -0x71f93a40
        -0x7254398d
        -0x72ae38d9
        -0x73073825
        -0x735e3770
        -0x73b536ba
        -0x740a3604
        -0x745f354e
        -0x74b23497
        -0x750433df
        -0x75553327
        -0x75a5326e
        -0x75f331b5
        -0x764130fc
        -0x768d3042
        -0x76d82f87    # -2.0199917E-33f
        -0x77222ecc
        -0x776b2e11
        -0x77b32d55
        -0x77fa2c99
        -0x783f2bdc
        -0x78842b1f
        -0x78c72a62
        -0x790929a4
        -0x794928e5
        -0x79892827
        -0x79c82768
        -0x7a0526a8
        -0x7a4125e8
        -0x7a7c2528
        -0x7ab62467
        -0x7aee23a7
        -0x7b2622e5
        -0x7b5c2224
        -0x7b912162
        -0x7bc5209f
        -0x7bf81fdd
        -0x7c291f1a
        -0x7c591e57
        -0x7c881d93
        -0x7cb61cd0
        -0x7ce31c0c
        -0x7d0e1b47
        -0x7d391a83
        -0x7d6219be
        -0x7d8918f9
        -0x7db01833
        -0x7dd5176e
        -0x7dfa16a8
        -0x7e1d15e2
        -0x7e3e151c
        -0x7e5f1455
        -0x7e7e138f
        -0x7e9c12c8
        -0x7eb91201
        -0x7ed5113a
        -0x7eef1073
        -0x7f090fab
        -0x7f210ee4
        -0x7f370e1c
        -0x7f4d0d54
        -0x7f610c8c
        -0x7f740bc4
        -0x7f860afb    # -1.1199991E-38f
        -0x7f970a33
        -0x7fa6096b
        -0x7fb408a2
        -0x7fc107d9
        -0x7fcd0711
        -0x7fd80648
        -0x7fe1057f
        -0x7fe904b6
        -0x7ff003ed
        -0x7ff50324
        -0x7ff9025b
        -0x7ffd0192
        -0x7ffe00c9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static builtin_clz(I)I
    .locals 3
    .param p0, "number"    # I

    .line 201
    const/4 v0, 0x1

    .line 202
    .local v0, "bitCount":I
    shr-int/lit8 p0, p0, 0x1

    .line 203
    :goto_0
    if-lez p0, :cond_0

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 205
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    rsub-int/lit8 v1, v0, 0x20

    .line 208
    .local v1, "result":I
    sget v2, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->hiNumber:I

    if-ge v2, p0, :cond_1

    .line 209
    sput p0, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->hiNumber:I

    .line 211
    :cond_1
    return v1
.end method

.method private static dataCompress([B[B)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "dataCompressed"    # [B

    .line 244
    array-length v0, p0

    array-length v1, p1

    div-int/2addr v0, v1

    .line 245
    .local v0, "multiple":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 246
    mul-int v2, v1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p1, v1

    .line 247
    add-int/lit8 v2, v1, 0x1

    mul-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p1, v2

    .line 248
    add-int/lit8 v2, v1, 0x2

    mul-int v3, v1, v0

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, p1, v2

    .line 249
    add-int/lit8 v2, v1, 0x3

    mul-int v3, v1, v0

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    aput-byte v3, p1, v2

    .line 245
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static dataCut4To1([B[B)V
    .locals 3
    .param p0, "fft"    # [B
    .param p1, "fft_ext"    # [B

    .line 189
    array-length v0, p1

    array-length v1, p0

    div-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_0

    .line 190
    const-string v0, "KaraokeAlgorithm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataCut4To1 fft length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  fft_ext length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 194
    mul-int/lit8 v1, v0, 0x4

    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static doDataFFt([I[B)I
    .locals 9
    .param p0, "data"    # [I
    .param p1, "fft"    # [B

    .line 155
    array-length v0, p0

    sget v1, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mCaptureSize:I

    if-ge v0, v1, :cond_0

    .line 156
    const-string v0, "KaraokeAlgorithm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDataFFt data length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, -0x1

    return v0

    .line 160
    :cond_0
    sget v0, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mCaptureSize:I

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 161
    .local v0, "workspace":[I
    const/4 v1, 0x0

    .line 163
    .local v1, "nonzero":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "nonzero":I
    :goto_0
    sget v4, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mCaptureSize:I

    if-ge v1, v4, :cond_1

    .line 164
    shr-int/lit8 v4, v1, 0x1

    aget v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    xor-int/lit16 v5, v5, 0x80

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v1, 0x1

    aget v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    xor-int/lit16 v6, v6, 0x80

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aput v5, v0, v4

    .line 166
    shr-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    or-int/2addr v3, v4

    .line 163
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_1
    if-eqz v3, :cond_2

    .line 170
    sget v1, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mCaptureSize:I

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->fixed_fft_real(I[I)V

    .line 175
    :cond_2
    move v1, v2

    .restart local v1    # "i":I
    :goto_1
    sget v4, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mCaptureSize:I

    if-ge v1, v4, :cond_7

    .line 176
    shr-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    shr-int/lit8 v4, v4, 0x15

    int-to-short v4, v4

    .line 177
    .local v4, "tmp":S
    :goto_2
    const/16 v5, 0x7f

    if-gt v4, v5, :cond_6

    const/16 v6, -0x80

    if-ge v4, v6, :cond_3

    goto :goto_5

    .line 178
    :cond_3
    and-int/lit16 v7, v4, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 179
    shr-int/lit8 v7, v1, 0x1

    aget v7, v0, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    int-to-short v4, v7

    .line 180
    shr-int/lit8 v7, v4, 0x5

    int-to-short v4, v7

    .line 181
    :goto_3
    if-gt v4, v5, :cond_5

    if-ge v4, v6, :cond_4

    goto :goto_4

    .line 183
    :cond_4
    add-int/lit8 v5, v1, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 175
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 181
    :cond_5
    :goto_4
    shr-int/lit8 v7, v4, 0x1

    int-to-short v4, v7

    goto :goto_3

    .line 177
    :cond_6
    :goto_5
    shr-int/lit8 v5, v4, 0x1

    int-to-short v4, v5

    goto :goto_2

    .line 185
    .end local v1    # "i":I
    .end local v4    # "tmp":S
    :cond_7
    return v2
.end method

.method public static doFFt([B[B)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fft"    # [B

    .line 255
    array-length v0, p1

    new-array v0, v0, [I

    .line 256
    .local v0, "fft_ext":[I
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 257
    .local v1, "dataCompressed":[B
    invoke-static {p0, v1}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->dataCompress([B[B)V

    .line 258
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->preFFt([B[I)V

    .line 259
    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->doDataFFt([I[B)I

    .line 260
    return-void
.end method

.method static fixed_fft(I[I)V
    .locals 9
    .param p0, "n"    # I
    .param p1, "v"    # [I

    .line 100
    const/16 v0, 0xa

    .line 102
    .local v0, "scale":I
    const/4 v1, 0x0

    .local v1, "r":I
    const/4 v2, 0x1

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "r":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 103
    move v4, v3

    move v3, p0

    .local v3, "p":I
    .local v4, "r":I
    :goto_1
    and-int v5, v3, v4

    if-nez v5, :cond_0

    shr-int/lit8 v3, v3, 0x1

    xor-int/2addr v4, v3

    goto :goto_1

    .line 104
    :cond_0
    if-ge v1, v4, :cond_1

    .line 105
    aget v5, p1, v1

    .line 106
    .local v5, "t":I
    aget v6, p1, v4

    aput v6, p1, v1

    .line 107
    aput v5, p1, v4

    .line 102
    .end local v5    # "t":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 111
    .end local v4    # "r":I
    .local v3, "r":I
    :cond_2
    nop

    .local v2, "p":I
    :goto_2
    if-ge v2, p0, :cond_6

    .line 112
    add-int/lit8 v0, v0, -0x1

    .line 113
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_3

    .line 114
    aget v4, p1, v1

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v4

    .line 115
    .local v4, "x":I
    add-int v5, v1, v2

    aget v5, p1, v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v5

    .line 116
    .local v5, "y":I
    add-int v6, v4, v5

    aput v6, p1, v1

    .line 117
    add-int v6, v1, v2

    sub-int v7, v4, v5

    aput v7, p1, v6

    .line 113
    .end local v4    # "x":I
    .end local v5    # "y":I
    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v4

    goto :goto_3

    .line 119
    :cond_3
    const/4 v3, 0x1

    :goto_4
    if-ge v3, v2, :cond_5

    .line 120
    shl-int v4, v3, v0

    rsub-int v4, v4, 0x100

    .line 121
    .local v4, "w":I
    shr-int/lit8 v1, v4, 0x1f

    .line 122
    sget-object v5, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->twiddle:[I

    xor-int v6, v4, v1

    sub-int/2addr v6, v1

    aget v5, v5, v6

    shl-int/lit8 v6, v1, 0x10

    xor-int v4, v5, v6

    .line 123
    move v1, v3

    :goto_5
    if-ge v1, p0, :cond_4

    .line 124
    aget v5, p1, v1

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v5

    .line 125
    .local v5, "x":I
    add-int v6, v1, v2

    aget v6, p1, v6

    invoke-static {v4, v6}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mult(II)I

    move-result v6

    .line 126
    .local v6, "y":I
    sub-int v7, v5, v6

    aput v7, p1, v1

    .line 127
    add-int v7, v1, v2

    add-int v8, v5, v6

    aput v8, p1, v7

    .line 123
    .end local v5    # "x":I
    .end local v6    # "y":I
    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v5

    goto :goto_5

    .line 119
    .end local v4    # "w":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 111
    :cond_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 131
    :cond_6
    return-void
.end method

.method static fixed_fft_real(I[I)V
    .locals 9
    .param p0, "n"    # I
    .param p1, "v"    # [I

    .line 136
    const/16 v0, 0xa

    .local v0, "scale":I
    shr-int/lit8 v1, p0, 0x1

    .line 138
    .local v1, "m":I
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->fixed_fft(I[I)V

    .line 139
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_0

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v3, 0x0

    aget v4, p1, v3

    not-int v4, v4

    const v5, -0x7fff8000

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mult(II)I

    move-result v4

    aput v4, p1, v3

    .line 141
    aget v3, p1, v1

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v3

    aput v3, p1, v1

    .line 143
    const/4 v2, 0x1

    :goto_1
    shr-int/lit8 v3, p0, 0x1

    if-ge v2, v3, :cond_1

    .line 144
    aget v3, p1, v2

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v3

    .line 145
    .local v3, "x":I
    sub-int v4, p0, v2

    aget v4, p1, v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v4

    .line 146
    .local v4, "z":I
    const v5, 0xffff

    xor-int v6, v3, v5

    sub-int v6, v4, v6

    .line 147
    .local v6, "y":I
    xor-int v7, v4, v5

    add-int/2addr v7, v3

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->half(I)I

    move-result v3

    .line 148
    sget-object v7, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->twiddle:[I

    shl-int v8, v2, v0

    aget v7, v7, v8

    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->mult(II)I

    move-result v6

    .line 149
    sub-int v7, v3, v6

    aput v7, p1, v2

    .line 150
    sub-int v7, p0, v2

    add-int v8, v3, v6

    xor-int/2addr v5, v8

    aput v5, p1, v7

    .line 143
    .end local v3    # "x":I
    .end local v4    # "z":I
    .end local v6    # "y":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :cond_1
    return-void
.end method

.method static half(I)I
    .locals 2
    .param p0, "a"    # I

    .line 94
    shr-int/lit8 v0, p0, 0x1

    const v1, -0x8001

    and-int/2addr v0, v1

    const v1, 0x8000

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method static mult(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 83
    shr-int/lit8 v0, p0, 0x10

    shr-int/lit8 v1, p1, 0x10

    mul-int/2addr v0, v1

    int-to-short v1, p0

    int-to-short v2, p1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x10

    int-to-short v2, p1

    mul-int/2addr v1, v2

    int-to-short v2, p0

    shr-int/lit8 v3, p1, 0x10

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static preFFt([B[I)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "fft_ext"    # [I

    .line 215
    array-length v0, p0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [I

    .line 216
    .local v0, "workspace":[I
    const/4 v2, 0x0

    sput v2, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->hiNumber:I

    .line 217
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 218
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    int-to-short v4, v4

    mul-int/lit8 v5, v3, 0x2

    aget-byte v5, p0, v5

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "i":I
    :cond_0
    const/16 v3, 0x20

    .line 221
    .local v3, "shift":I
    move v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "shift":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 222
    aget v5, v0, v3

    .line 223
    .local v5, "smp":I
    if-gez v5, :cond_1

    neg-int v6, v5

    add-int/lit8 v5, v6, -0x1

    .line 224
    :cond_1
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/utils/KaraokeAlgorithm;->builtin_clz(I)I

    move-result v6

    .line 225
    .local v6, "clz":I
    if-le v4, v6, :cond_2

    move v4, v6

    .line 221
    .end local v5    # "smp":I
    .end local v6    # "clz":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    .end local v3    # "i":I
    :cond_3
    rsub-int/lit8 v3, v4, 0x19

    .line 230
    .end local v4    # "shift":I
    .local v3, "shift":I
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 231
    const/4 v3, 0x3

    .line 234
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 235
    array-length v4, v0

    div-int/2addr v4, v1

    .line 236
    .local v4, "len":I
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 237
    mul-int v5, v1, v2

    aget v5, v0, v5

    mul-int v6, v1, v2

    add-int/lit8 v6, v6, 0x1

    aget v6, v0, v6

    add-int/2addr v5, v6

    .line 238
    .restart local v5    # "smp":I
    shr-int/2addr v5, v3

    .line 239
    xor-int/lit16 v6, v5, 0x80

    aput v6, p1, v2

    .line 236
    .end local v5    # "smp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 241
    .end local v2    # "i":I
    :cond_5
    return-void
.end method
