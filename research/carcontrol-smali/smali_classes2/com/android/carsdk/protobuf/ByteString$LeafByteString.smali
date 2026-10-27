.class abstract Lcom/android/carsdk/protobuf/ByteString$LeafByteString;
.super Lcom/android/carsdk/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 812
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Lcom/android/carsdk/protobuf/ByteString;II)Z
.end method

.method protected final getTreeDepth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
