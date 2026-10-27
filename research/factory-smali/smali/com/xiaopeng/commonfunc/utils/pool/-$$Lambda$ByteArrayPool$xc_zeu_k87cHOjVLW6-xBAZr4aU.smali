.class public final synthetic Lcom/xiaopeng/commonfunc/utils/pool/-$$Lambda$ByteArrayPool$xc_zeu_k87cHOjVLW6-xBAZr4aU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/commonfunc/utils/pool/-$$Lambda$ByteArrayPool$xc_zeu_k87cHOjVLW6-xBAZr4aU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/commonfunc/utils/pool/-$$Lambda$ByteArrayPool$xc_zeu_k87cHOjVLW6-xBAZr4aU;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/pool/-$$Lambda$ByteArrayPool$xc_zeu_k87cHOjVLW6-xBAZr4aU;-><init>()V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/pool/-$$Lambda$ByteArrayPool$xc_zeu_k87cHOjVLW6-xBAZr4aU;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/pool/-$$Lambda$ByteArrayPool$xc_zeu_k87cHOjVLW6-xBAZr4aU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/utils/pool/ByteArrayPool;->lambda$static$0([B[B)I

    move-result p1

    return p1
.end method
