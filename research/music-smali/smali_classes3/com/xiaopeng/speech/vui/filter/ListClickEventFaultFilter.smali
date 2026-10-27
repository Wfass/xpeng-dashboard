.class public Lcom/xiaopeng/speech/vui/filter/ListClickEventFaultFilter;
.super Lcom/xiaopeng/speech/vui/filter/BaseFaultFilter;
.source "ListClickEventFaultFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/filter/BaseFaultFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Lbye;)Lbye;
    .locals 5

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lbye;->getResultActions()Ljava/util/List;

    move-result-object v0

    const-string v1, "Click"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    array-length v1, v0

    if-lez v1, :cond_1

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    const-string v3, "listItemClick"

    .line 25
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lbye;->setResultActions(Ljava/util/List;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
