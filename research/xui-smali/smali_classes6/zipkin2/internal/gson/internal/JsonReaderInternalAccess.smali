.class public abstract Lzipkin2/internal/gson/internal/JsonReaderInternalAccess;
.super Ljava/lang/Object;
.source "JsonReaderInternalAccess.java"


# static fields
.field public static INSTANCE:Lzipkin2/internal/gson/internal/JsonReaderInternalAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract promoteNameToValue(Lzipkin2/internal/gson/stream/JsonReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
