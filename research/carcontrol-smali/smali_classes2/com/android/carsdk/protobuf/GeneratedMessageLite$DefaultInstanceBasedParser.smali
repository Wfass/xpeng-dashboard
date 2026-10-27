.class public Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Lcom/android/carsdk/protobuf/AbstractParser;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultInstanceBasedParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "TT;*>;>",
        "Lcom/android/carsdk/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private defaultInstance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1306
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/AbstractParser;-><init>()V

    .line 1307
    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1313
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1301
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method
