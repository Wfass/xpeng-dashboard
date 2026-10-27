.class public final enum Lcdp;
.super Ljava/lang/Enum;
.source "SevenZMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcdp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcdp;

.field public static final enum AES256SHA256:Lcdp;

.field public static final enum BCJ_ARM_FILTER:Lcdp;

.field public static final enum BCJ_ARM_THUMB_FILTER:Lcdp;

.field public static final enum BCJ_IA64_FILTER:Lcdp;

.field public static final enum BCJ_PPC_FILTER:Lcdp;

.field public static final enum BCJ_SPARC_FILTER:Lcdp;

.field public static final enum BCJ_X86_FILTER:Lcdp;

.field public static final enum BZIP2:Lcdp;

.field public static final enum COPY:Lcdp;

.field public static final enum DEFLATE:Lcdp;

.field public static final enum DELTA_FILTER:Lcdp;

.field public static final enum LZMA:Lcdp;

.field public static final enum LZMA2:Lcdp;


# instance fields
.field private final id:[B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 38
    new-instance v0, Lcdp;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const-string v4, "COPY"

    invoke-direct {v0, v4, v3, v2}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->COPY:Lcdp;

    .line 40
    new-instance v0, Lcdp;

    const/4 v2, 0x3

    new-array v4, v2, [B

    fill-array-data v4, :array_0

    const-string v5, "LZMA"

    invoke-direct {v0, v5, v1, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->LZMA:Lcdp;

    .line 42
    new-instance v0, Lcdp;

    new-array v4, v1, [B

    const/16 v5, 0x21

    aput-byte v5, v4, v3

    const/4 v5, 0x2

    const-string v6, "LZMA2"

    invoke-direct {v0, v6, v5, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->LZMA2:Lcdp;

    .line 44
    new-instance v0, Lcdp;

    new-array v4, v2, [B

    fill-array-data v4, :array_1

    const-string v6, "DEFLATE"

    invoke-direct {v0, v6, v2, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->DEFLATE:Lcdp;

    .line 46
    new-instance v0, Lcdp;

    new-array v4, v2, [B

    fill-array-data v4, :array_2

    const/4 v6, 0x4

    const-string v7, "BZIP2"

    invoke-direct {v0, v7, v6, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BZIP2:Lcdp;

    .line 51
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_3

    const/4 v7, 0x5

    const-string v8, "AES256SHA256"

    invoke-direct {v0, v8, v7, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->AES256SHA256:Lcdp;

    .line 56
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_4

    const/4 v8, 0x6

    const-string v9, "BCJ_X86_FILTER"

    invoke-direct {v0, v9, v8, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BCJ_X86_FILTER:Lcdp;

    .line 61
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_5

    const/4 v9, 0x7

    const-string v10, "BCJ_PPC_FILTER"

    invoke-direct {v0, v10, v9, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BCJ_PPC_FILTER:Lcdp;

    .line 66
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_6

    const/16 v10, 0x8

    const-string v11, "BCJ_IA64_FILTER"

    invoke-direct {v0, v11, v10, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BCJ_IA64_FILTER:Lcdp;

    .line 71
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_7

    const/16 v11, 0x9

    const-string v12, "BCJ_ARM_FILTER"

    invoke-direct {v0, v12, v11, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BCJ_ARM_FILTER:Lcdp;

    .line 76
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_8

    const/16 v12, 0xa

    const-string v13, "BCJ_ARM_THUMB_FILTER"

    invoke-direct {v0, v13, v12, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BCJ_ARM_THUMB_FILTER:Lcdp;

    .line 81
    new-instance v0, Lcdp;

    new-array v4, v6, [B

    fill-array-data v4, :array_9

    const/16 v13, 0xb

    const-string v14, "BCJ_SPARC_FILTER"

    invoke-direct {v0, v14, v13, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->BCJ_SPARC_FILTER:Lcdp;

    .line 86
    new-instance v0, Lcdp;

    new-array v4, v1, [B

    aput-byte v2, v4, v3

    const/16 v14, 0xc

    const-string v15, "DELTA_FILTER"

    invoke-direct {v0, v15, v14, v4}, Lcdp;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcdp;->DELTA_FILTER:Lcdp;

    const/16 v0, 0xd

    .line 36
    new-array v0, v0, [Lcdp;

    sget-object v4, Lcdp;->COPY:Lcdp;

    aput-object v4, v0, v3

    sget-object v3, Lcdp;->LZMA:Lcdp;

    aput-object v3, v0, v1

    sget-object v1, Lcdp;->LZMA2:Lcdp;

    aput-object v1, v0, v5

    sget-object v1, Lcdp;->DEFLATE:Lcdp;

    aput-object v1, v0, v2

    sget-object v1, Lcdp;->BZIP2:Lcdp;

    aput-object v1, v0, v6

    sget-object v1, Lcdp;->AES256SHA256:Lcdp;

    aput-object v1, v0, v7

    sget-object v1, Lcdp;->BCJ_X86_FILTER:Lcdp;

    aput-object v1, v0, v8

    sget-object v1, Lcdp;->BCJ_PPC_FILTER:Lcdp;

    aput-object v1, v0, v9

    sget-object v1, Lcdp;->BCJ_IA64_FILTER:Lcdp;

    aput-object v1, v0, v10

    sget-object v1, Lcdp;->BCJ_ARM_FILTER:Lcdp;

    aput-object v1, v0, v11

    sget-object v1, Lcdp;->BCJ_ARM_THUMB_FILTER:Lcdp;

    aput-object v1, v0, v12

    sget-object v1, Lcdp;->BCJ_SPARC_FILTER:Lcdp;

    aput-object v1, v0, v13

    sget-object v1, Lcdp;->DELTA_FILTER:Lcdp;

    aput-object v1, v0, v14

    sput-object v0, Lcdp;->$VALUES:[Lcdp;

    return-void

    :array_0
    .array-data 1
        0x3t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x1t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x4t
        0x2t
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        -0xft
        0x7t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x3t
    .end array-data

    :array_5
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x5t
    .end array-data

    :array_6
    .array-data 1
        0x3t
        0x3t
        0x4t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x3t
        0x3t
        0x5t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x3t
        0x3t
        0x7t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x3t
        0x3t
        0x8t
        0x5t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcdp;->id:[B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcdp;
    .locals 1

    .line 36
    const-class v0, Lcdp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcdp;

    return-object p0
.end method

.method public static values()[Lcdp;
    .locals 1

    .line 36
    sget-object v0, Lcdp;->$VALUES:[Lcdp;

    invoke-virtual {v0}, [Lcdp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcdp;

    return-object v0
.end method


# virtual methods
.method a()[B
    .locals 4

    .line 95
    iget-object v0, p0, Lcdp;->id:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 96
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
