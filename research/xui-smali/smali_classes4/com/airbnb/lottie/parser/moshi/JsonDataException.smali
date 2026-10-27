.class final Lcom/airbnb/lottie/parser/moshi/JsonDataException;
.super Ljava/lang/RuntimeException;
.source "JsonDataException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method
