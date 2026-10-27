.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "BarcodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ib:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ic:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ie:Lcom/google/zxing/BarcodeFormat;

.field public static final enum if:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ig:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ih:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ii:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ij:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ik:Lcom/google/zxing/BarcodeFormat;

.field public static final enum il:Lcom/google/zxing/BarcodeFormat;

.field public static final enum im:Lcom/google/zxing/BarcodeFormat;

.field public static final enum io:Lcom/google/zxing/BarcodeFormat;

.field public static final enum iq:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ir:Lcom/google/zxing/BarcodeFormat;

.field public static final enum is:Lcom/google/zxing/BarcodeFormat;

.field public static final enum it:Lcom/google/zxing/BarcodeFormat;

.field public static final enum iu:Lcom/google/zxing/BarcodeFormat;

.field private static final synthetic iw:[Lcom/google/zxing/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 27
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ib:Lcom/google/zxing/BarcodeFormat;

    .line 30
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODABAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ic:Lcom/google/zxing/BarcodeFormat;

    .line 33
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE_39"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ie:Lcom/google/zxing/BarcodeFormat;

    .line 36
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE_93"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->if:Lcom/google/zxing/BarcodeFormat;

    .line 39
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE_128"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ig:Lcom/google/zxing/BarcodeFormat;

    .line 42
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "DATA_MATRIX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ih:Lcom/google/zxing/BarcodeFormat;

    .line 45
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "EAN_8"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ii:Lcom/google/zxing/BarcodeFormat;

    .line 48
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "EAN_13"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ij:Lcom/google/zxing/BarcodeFormat;

    .line 51
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "ITF"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ik:Lcom/google/zxing/BarcodeFormat;

    .line 54
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "MAXICODE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->il:Lcom/google/zxing/BarcodeFormat;

    .line 57
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "PDF_417"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->im:Lcom/google/zxing/BarcodeFormat;

    .line 60
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "QR_CODE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->io:Lcom/google/zxing/BarcodeFormat;

    .line 63
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "RSS_14"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->iq:Lcom/google/zxing/BarcodeFormat;

    .line 66
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "RSS_EXPANDED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ir:Lcom/google/zxing/BarcodeFormat;

    .line 69
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPC_A"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->is:Lcom/google/zxing/BarcodeFormat;

    .line 72
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPC_E"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->it:Lcom/google/zxing/BarcodeFormat;

    .line 75
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPC_EAN_EXTENSION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->iu:Lcom/google/zxing/BarcodeFormat;

    .line 24
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/zxing/BarcodeFormat;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ib:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ic:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ie:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->if:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ig:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ih:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ii:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ij:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ik:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->il:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->im:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->io:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->iq:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ir:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->is:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->it:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->iu:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->iw:[Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 24
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->iw:[Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
