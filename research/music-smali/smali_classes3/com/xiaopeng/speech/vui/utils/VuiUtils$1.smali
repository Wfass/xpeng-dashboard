.class final Lcom/xiaopeng/speech/vui/utils/VuiUtils$1;
.super Ljava/lang/Object;
.source "VuiUtils.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/utils/VuiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 1

    .line 166
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
