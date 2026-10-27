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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 171
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 2
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .line 166
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
