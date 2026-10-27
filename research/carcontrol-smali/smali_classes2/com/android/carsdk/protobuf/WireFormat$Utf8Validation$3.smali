.class final enum Lcom/android/carsdk/protobuf/WireFormat$Utf8Validation$3;
.super Lcom/android/carsdk/protobuf/WireFormat$Utf8Validation;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/WireFormat$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lcom/android/carsdk/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;ILcom/android/carsdk/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method readString(Lcom/android/carsdk/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method
