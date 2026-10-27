.class public Lcom/xiaopeng/aar/client/ByteWrapper;
.super Ljava/lang/Object;
.source "ByteWrapper.java"


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/aar/client/ByteWrapper;->mData:[B

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/aar/client/ByteWrapper;->mData:[B

    return-object v0
.end method
