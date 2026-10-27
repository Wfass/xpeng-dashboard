.class Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "VuiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/utils/VuiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SceneBooleanTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 442
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 446
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 448
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    :goto_0
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 442
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V

    return-void
.end method
