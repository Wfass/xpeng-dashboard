.class Lcom/android/carsdk/protobuf/TextFormatEscaper$1;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/carsdk/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/carsdk/protobuf/ByteString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Lcom/android/carsdk/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/carsdk/protobuf/TextFormatEscaper$1;->val$input:Lcom/android/carsdk/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/carsdk/protobuf/TextFormatEscaper$1;->val$input:Lcom/android/carsdk/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/ByteString;->byteAt(I)B

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/carsdk/protobuf/TextFormatEscaper$1;->val$input:Lcom/android/carsdk/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method
